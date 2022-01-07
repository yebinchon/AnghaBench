; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_ttsp_read_block_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_ttsp_read_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i8*)* }

@CY_NUM_RETRY = common dso_local global i32 0, align 4
@CY_DELAY_DFLT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*, i32, i32, i8*)* @ttsp_read_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttsp_read_block_data(%struct.cyttsp* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyttsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cyttsp* %0, %struct.cyttsp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @CY_NUM_RETRY, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.cyttsp*, %struct.cyttsp** %6, align 8
  %18 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %20, align 8
  %22 = load %struct.cyttsp*, %struct.cyttsp** %6, align 8
  %23 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cyttsp*, %struct.cyttsp** %6, align 8
  %26 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 %21(i32 %24, i32 %27, i32 %28, i32 %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %44

35:                                               ; preds = %16
  %36 = load i32, i32* @CY_DELAY_DFLT, align 4
  %37 = call i32 @msleep(i32 %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
