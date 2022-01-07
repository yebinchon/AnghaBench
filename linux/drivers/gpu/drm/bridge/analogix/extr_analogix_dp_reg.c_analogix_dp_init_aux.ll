; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RPLY_RECEIV = common dso_local global i32 0, align 4
@AUX_ERR = common dso_local global i32 0, align 4
@ANALOGIX_DP_INT_STA = common dso_local global i64 0, align 8
@AUX_BLOCK = common dso_local global i32 0, align 4
@AUX_HW_RETRY_INTERVAL_600_MICROSECONDS = common dso_local global i32 0, align 4
@ANALOGIX_DP_AUX_HW_RETRY_CTL = common dso_local global i64 0, align 8
@DEFER_CTRL_EN = common dso_local global i32 0, align 4
@ANALOGIX_DP_AUX_CH_DEFER_CTL = common dso_local global i64 0, align 8
@ANALOGIX_DP_FUNC_EN_2 = common dso_local global i64 0, align 8
@AUX_FUNC_EN_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_init_aux(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %4 = load i32, i32* @RPLY_RECEIV, align 4
  %5 = load i32, i32* @AUX_ERR, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %9 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %15 = load i32, i32* @AUX_BLOCK, align 4
  %16 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %14, i32 %15, i32 1)
  %17 = call i32 @usleep_range(i32 10, i32 11)
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %19 = load i32, i32* @AUX_BLOCK, align 4
  %20 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %18, i32 %19, i32 0)
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %22 = call i32 @analogix_dp_reset_aux(%struct.analogix_dp_device* %21)
  %23 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %24 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %29 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @is_rockchip(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %38

36:                                               ; preds = %27, %1
  %37 = call i32 @AUX_BIT_PERIOD_EXPECTED_DELAY(i32 3)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = call i32 @AUX_HW_RETRY_COUNT_SEL(i32 0)
  %40 = load i32, i32* @AUX_HW_RETRY_INTERVAL_600_MICROSECONDS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %46 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ANALOGIX_DP_AUX_HW_RETRY_CTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* @DEFER_CTRL_EN, align 4
  %52 = call i32 @DEFER_COUNT(i32 1)
  %53 = or i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %56 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ANALOGIX_DP_AUX_CH_DEFER_CTL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %62 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ANALOGIX_DP_FUNC_EN_2, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* @AUX_FUNC_EN_N, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %73 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ANALOGIX_DP_FUNC_EN_2, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @analogix_dp_reset_aux(%struct.analogix_dp_device*) #1

declare dso_local i64 @is_rockchip(i32) #1

declare dso_local i32 @AUX_BIT_PERIOD_EXPECTED_DELAY(i32) #1

declare dso_local i32 @AUX_HW_RETRY_COUNT_SEL(i32) #1

declare dso_local i32 @DEFER_COUNT(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
