; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_analog_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_analog_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, i32 }

@POWER_ALL = common dso_local global i32 0, align 4
@PLL_LOCK_CHG = common dso_local global i32 0, align 4
@ANALOGIX_DP_COMMON_INT_STA_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_DEBUG_CTL = common dso_local global i64 0, align 8
@F_PLL_LOCK = common dso_local global i32 0, align 4
@PLL_LOCK_CTRL = common dso_local global i32 0, align 4
@PLL_UNLOCKED = common dso_local global i64 0, align 8
@DP_TIMEOUT_LOOP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get pll lock status\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ANALOGIX_DP_FUNC_EN_2 = common dso_local global i64 0, align 8
@SERDES_FIFO_FUNC_EN_N = common dso_local global i32 0, align 4
@LS_CLK_DOMAIN_FUNC_EN_N = common dso_local global i32 0, align 4
@AUX_FUNC_EN_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogix_dp_init_analog_func(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %7 = load i32, i32* @POWER_ALL, align 4
  %8 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %6, i32 %7, i32 0)
  %9 = load i32, i32* @PLL_LOCK_CHG, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %12 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ANALOGIX_DP_DEBUG_CTL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @F_PLL_LOCK, align 4
  %24 = load i32, i32* @PLL_LOCK_CTRL, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %31 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ANALOGIX_DP_DEBUG_CTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %37 = call i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device* %36)
  %38 = load i64, i64* @PLL_UNLOCKED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %1
  %41 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %42 = call i32 @analogix_dp_set_pll_power_down(%struct.analogix_dp_device* %41, i32 0)
  br label %43

43:                                               ; preds = %61, %40
  %44 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %45 = call i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device* %44)
  %46 = load i64, i64* @PLL_UNLOCKED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %56 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %86

61:                                               ; preds = %48
  %62 = call i32 @usleep_range(i32 10, i32 20)
  br label %43

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %66 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ANALOGIX_DP_FUNC_EN_2, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @SERDES_FIFO_FUNC_EN_N, align 4
  %72 = load i32, i32* @LS_CLK_DOMAIN_FUNC_EN_N, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AUX_FUNC_EN_N, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %81 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ANALOGIX_DP_FUNC_EN_2, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %64, %54
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_set_pll_power_down(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
