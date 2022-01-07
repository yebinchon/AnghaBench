; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_aux_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_aux_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32, i32 }

@DP_PHY_CTRL = common dso_local global i32 0, align 4
@BGREN = common dso_local global i32 0, align 4
@PWR_SW_EN = common dso_local global i32 0, align 4
@PHY_A0_EN = common dso_local global i32 0, align 4
@DP0_PLLCTRL = common dso_local global i32 0, align 4
@DP1_PLLCTRL = common dso_local global i32 0, align 4
@PHY_RDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout waiting for PHY to become ready\00", align 1
@AUX_RX_FILTER_EN = common dso_local global i32 0, align 4
@DP0_AUXCFG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"tc_aux_link_setup failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*)* @tc_aux_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_aux_link_setup(%struct.tc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %3, align 8
  %6 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %7 = call i32 @tc_set_syspllparam(%struct.tc_data* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %13 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DP_PHY_CTRL, align 4
  %16 = load i32, i32* @BGREN, align 4
  %17 = load i32, i32* @PWR_SW_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PHY_A0_EN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @regmap_write(i32 %14, i32 %15, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %76

25:                                               ; preds = %11
  %26 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %27 = load i32, i32* @DP0_PLLCTRL, align 4
  %28 = call i32 @tc_pllupdate(%struct.tc_data* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %76

32:                                               ; preds = %25
  %33 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %34 = load i32, i32* @DP1_PLLCTRL, align 4
  %35 = call i32 @tc_pllupdate(%struct.tc_data* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %76

39:                                               ; preds = %32
  %40 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %41 = load i32, i32* @DP_PHY_CTRL, align 4
  %42 = load i32, i32* @PHY_RDY, align 4
  %43 = load i32, i32* @PHY_RDY, align 4
  %44 = call i32 @tc_poll_timeout(%struct.tc_data* %40, i32 %41, i32 %42, i32 %43, i32 1, i32 1000)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %51 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %83

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %76

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* @AUX_RX_FILTER_EN, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, 1536
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, 63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %67 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DP0_AUXCFG1, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @regmap_write(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %76

75:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %83

76:                                               ; preds = %74, %58, %38, %31, %24, %10
  %77 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %78 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %75, %49
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @tc_set_syspllparam(%struct.tc_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tc_pllupdate(%struct.tc_data*, i32) #1

declare dso_local i32 @tc_poll_timeout(%struct.tc_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
