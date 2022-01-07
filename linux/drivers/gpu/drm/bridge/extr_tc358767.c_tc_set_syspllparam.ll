; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_set_syspllparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_set_syspllparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32, i32, i32 }

@SYSCLK_SEL_LSCLK = common dso_local global i32 0, align 4
@LSCLK_DIV_2 = common dso_local global i32 0, align 4
@REF_FREQ_38M4 = common dso_local global i32 0, align 4
@REF_FREQ_26M = common dso_local global i32 0, align 4
@REF_FREQ_19M2 = common dso_local global i32 0, align 4
@REF_FREQ_13M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid refclk rate: %lu Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYS_PLLPARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*)* @tc_set_syspllparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_set_syspllparam(%struct.tc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %3, align 8
  %6 = load i32, i32* @SYSCLK_SEL_LSCLK, align 4
  %7 = load i32, i32* @LSCLK_DIV_2, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %10 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  switch i64 %13, label %30 [
    i64 38400000, label %14
    i64 26000000, label %18
    i64 19200000, label %22
    i64 13000000, label %26
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @REF_FREQ_38M4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load i32, i32* @REF_FREQ_26M, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @REF_FREQ_19M2, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load i32, i32* @REF_FREQ_13M, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %32 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %26, %22, %18, %14
  %39 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %40 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SYS_PLLPARAM, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @regmap_write(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
