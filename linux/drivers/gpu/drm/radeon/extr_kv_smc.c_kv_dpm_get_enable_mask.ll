; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_smc.c_kv_dpm_get_enable_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_smc.c_kv_dpm_get_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PPSMC_MSG_SCLKDPM_GetEnabledMask = common dso_local global i32 0, align 4
@SMC_SYSCON_MSG_ARG_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kv_dpm_get_enable_mask(%struct.radeon_device* %0, i32* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = load i32, i32* @PPSMC_MSG_SCLKDPM_GetEnabledMask, align 4
  %8 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @SMC_SYSCON_MSG_ARG_0, align 4
  %13 = call i32 @RREG32_SMC(i32 %12)
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @kv_notify_message_to_smu(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32_SMC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
