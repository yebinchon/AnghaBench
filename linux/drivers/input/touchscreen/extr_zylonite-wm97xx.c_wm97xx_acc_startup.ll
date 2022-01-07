; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zylonite-wm97xx.c_wm97xx_acc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zylonite-wm97xx.c_wm97xx_acc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.wm97xx = type { i64, i32, i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@cinfo = common dso_local global %struct.TYPE_3__* null, align 8
@sp_idx = common dso_local global i64 0, align 8
@cont_rate = common dso_local global i64 0, align 8
@ac97_touch_slot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"zylonite accelerated touchscreen driver, %d samples/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_acc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_acc_startup(%struct.wm97xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  %5 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %6 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %66

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %20 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %43

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* @sp_idx, align 8
  %33 = load i64, i64* @cont_rate, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %13

46:                                               ; preds = %41, %13
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %48 = load i64, i64* @sp_idx, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %53 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @ac97_touch_slot, align 4
  %55 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %56 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %58 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %61 = load i64, i64* @sp_idx, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %46, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
