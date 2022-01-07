; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_vibrator = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to set clock rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator: %d\0A\00", align 1
@REG_CFG_RCGR = common dso_local global i32 0, align 4
@REG_M = common dso_local global i32 0, align 4
@REG_N = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32 0, align 4
@REG_CMD_RCGR = common dso_local global i32 0, align 4
@REG_CBCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_vibrator*)* @msm_vibrator_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_vibrator_start(%struct.msm_vibrator* %0) #0 {
  %2 = alloca %struct.msm_vibrator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msm_vibrator* %0, %struct.msm_vibrator** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %6 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %9 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %1
  %13 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %14 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_set_rate(i32 %15, i32 24000)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %21 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %91

26:                                               ; preds = %12
  %27 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %28 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %35 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %91

40:                                               ; preds = %26
  %41 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %42 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @regulator_enable(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %49 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %55 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clk_disable(i32 %56)
  br label %91

58:                                               ; preds = %40
  %59 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %60 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gpiod_set_value_cansleep(i32 %61, i32 1)
  %63 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %64 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %1
  %66 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %67 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 126, %68
  %70 = sdiv i32 %69, 65535
  %71 = sub nsw i32 127, %70
  store i32 %71, i32* %3, align 4
  %72 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %73 = load i32, i32* @REG_CFG_RCGR, align 4
  %74 = call i32 @msm_vibrator_write(%struct.msm_vibrator* %72, i32 %73, i32 8199)
  %75 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %76 = load i32, i32* @REG_M, align 4
  %77 = call i32 @msm_vibrator_write(%struct.msm_vibrator* %75, i32 %76, i32 1)
  %78 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %79 = load i32, i32* @REG_N, align 4
  %80 = call i32 @msm_vibrator_write(%struct.msm_vibrator* %78, i32 %79, i32 128)
  %81 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %82 = load i32, i32* @REG_D, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @msm_vibrator_write(%struct.msm_vibrator* %81, i32 %82, i32 %83)
  %85 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %86 = load i32, i32* @REG_CMD_RCGR, align 4
  %87 = call i32 @msm_vibrator_write(%struct.msm_vibrator* %85, i32 %86, i32 1)
  %88 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %89 = load i32, i32* @REG_CBCR, align 4
  %90 = call i32 @msm_vibrator_write(%struct.msm_vibrator* %88, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %65, %47, %33, %19
  %92 = load %struct.msm_vibrator*, %struct.msm_vibrator** %2, align 8
  %93 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msm_vibrator_write(%struct.msm_vibrator*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
