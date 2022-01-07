; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_turn_off_dpst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_turn_off_dpst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.drm_psb_private = type { i32 }

@HISTOGRAM_INT_CONTROL = common dso_local global i32 0, align 4
@PIPE_DPST_EVENT_ENABLE = common dso_local global i32 0, align 4
@PWM_CONTROL_LOGIC = common dso_local global i32 0, align 4
@PWM_PHASEIN_INT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_irq_turn_off_dpst(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.drm_psb_private*
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i64 @gma_power_begin(%struct.drm_device* %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @HISTOGRAM_INT_CONTROL, align 4
  %15 = call i32 @PSB_WVDC32(i32 0, i32 %14)
  %16 = load i32, i32* @HISTOGRAM_INT_CONTROL, align 4
  %17 = call i32 @PSB_RVDC32(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %19 = load i32, i32* @PIPE_DPST_EVENT_ENABLE, align 4
  %20 = call i32 @psb_disable_pipestat(%struct.drm_psb_private* %18, i32 0, i32 %19)
  %21 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %22 = call i32 @PSB_RVDC32(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PWM_PHASEIN_INT_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %28 = call i32 @PSB_WVDC32(i32 %26, i32 %27)
  %29 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %30 = call i32 @PSB_RVDC32(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = call i32 @gma_power_end(%struct.drm_device* %31)
  br label %33

33:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @PSB_RVDC32(i32) #1

declare dso_local i32 @psb_disable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
