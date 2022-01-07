; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_init_pen_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_init_pen_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@wm97xx_pen_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wm97xx-pen\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to register pen down interrupt, polling\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM9705_ID2 = common dso_local global i64 0, align 8
@AC97_MISC_AFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_init_pen_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_init_pen_irq(%struct.wm97xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  %5 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %6 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %15 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @wm97xx_pen_interrupt, align 4
  %18 = load i32, i32* @IRQF_SHARED, align 4
  %19 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %20 = call i64 @request_irq(i64 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.wm97xx* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %24 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %28 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %1
  %32 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %33 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WM9705_ID2, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %39 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %48 = load i32, i32* @AC97_MISC_AFE, align 4
  %49 = call i32 @wm97xx_reg_read(%struct.wm97xx* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %51 = load i32, i32* @AC97_MISC_AFE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %54 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %52, %58
  %60 = call i32 @wm97xx_reg_write(%struct.wm97xx* %50, i32 %51, i32 %59)
  %61 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %62 = call i32 @wm97xx_reg_read(%struct.wm97xx* %61, i32 90)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, -2
  %66 = call i32 @wm97xx_reg_write(%struct.wm97xx* %63, i32 90, i32 %65)
  br label %67

67:                                               ; preds = %37, %31
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %22
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @request_irq(i64, i32, i32, i8*, %struct.wm97xx*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
