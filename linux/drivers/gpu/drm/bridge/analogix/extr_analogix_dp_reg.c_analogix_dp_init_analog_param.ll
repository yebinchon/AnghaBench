; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_analog_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_analog_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TX_TERMINAL_CTRL_50_OHM = common dso_local global i32 0, align 4
@ANALOGIX_DP_ANALOG_CTL_1 = common dso_local global i64 0, align 8
@SEL_24M = common dso_local global i32 0, align 4
@TX_DVDD_BIT_1_0625V = common dso_local global i32 0, align 4
@ANALOGIX_DP_ANALOG_CTL_2 = common dso_local global i64 0, align 8
@REF_CLK_24M = common dso_local global i32 0, align 4
@RK3288_DP = common dso_local global i64 0, align 8
@REF_CLK_MASK = common dso_local global i32 0, align 4
@ANALOGIX_DP_PLL_REG_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_PLL_REG_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_PLL_REG_3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_PLL_REG_4 = common dso_local global i64 0, align 8
@ANALOGIX_DP_PLL_REG_5 = common dso_local global i64 0, align 8
@DRIVE_DVDD_BIT_1_0625V = common dso_local global i32 0, align 4
@VCO_BIT_600_MICRO = common dso_local global i32 0, align 4
@ANALOGIX_DP_ANALOG_CTL_3 = common dso_local global i64 0, align 8
@PD_RING_OSC = common dso_local global i32 0, align 4
@AUX_TERMINAL_CTRL_50_OHM = common dso_local global i32 0, align 4
@TX_CUR1_2X = common dso_local global i32 0, align 4
@TX_CUR_16_MA = common dso_local global i32 0, align 4
@ANALOGIX_DP_PLL_FILTER_CTL_1 = common dso_local global i64 0, align 8
@CH3_AMP_400_MV = common dso_local global i32 0, align 4
@CH2_AMP_400_MV = common dso_local global i32 0, align 4
@CH1_AMP_400_MV = common dso_local global i32 0, align 4
@CH0_AMP_400_MV = common dso_local global i32 0, align 4
@ANALOGIX_DP_TX_AMP_TUNING_CTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_init_analog_param(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %4 = load i32, i32* @TX_TERMINAL_CTRL_50_OHM, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %7 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ANALOGIX_DP_ANALOG_CTL_1, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load i32, i32* @SEL_24M, align 4
  %13 = load i32, i32* @TX_DVDD_BIT_1_0625V, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %17 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ANALOGIX_DP_ANALOG_CTL_2, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %23 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %1
  %27 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %28 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @is_rockchip(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %26
  %35 = load i32, i32* @REF_CLK_24M, align 4
  store i32 %35, i32* %3, align 4
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RK3288_DP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @REF_CLK_MASK, align 4
  %45 = load i32, i32* %3, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %50 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ANALOGIX_DP_PLL_REG_1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %56 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ANALOGIX_DP_PLL_REG_2, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 149, i64 %59)
  %61 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %62 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ANALOGIX_DP_PLL_REG_3, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 64, i64 %65)
  %67 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %68 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ANALOGIX_DP_PLL_REG_4, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 88, i64 %71)
  %73 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %74 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ANALOGIX_DP_PLL_REG_5, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 34, i64 %77)
  br label %79

79:                                               ; preds = %47, %26, %1
  %80 = load i32, i32* @DRIVE_DVDD_BIT_1_0625V, align 4
  %81 = load i32, i32* @VCO_BIT_600_MICRO, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %85 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ANALOGIX_DP_ANALOG_CTL_3, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %83, i64 %88)
  %90 = load i32, i32* @PD_RING_OSC, align 4
  %91 = load i32, i32* @AUX_TERMINAL_CTRL_50_OHM, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @TX_CUR1_2X, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @TX_CUR_16_MA, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %99 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ANALOGIX_DP_PLL_FILTER_CTL_1, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load i32, i32* @CH3_AMP_400_MV, align 4
  %105 = load i32, i32* @CH2_AMP_400_MV, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CH1_AMP_400_MV, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CH0_AMP_400_MV, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %113 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ANALOGIX_DP_TX_AMP_TUNING_CTL, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @is_rockchip(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
