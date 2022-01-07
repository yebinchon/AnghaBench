; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_turn_on_dpst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_irq_turn_on_dpst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.drm_psb_private = type { i32 }

@HISTOGRAM_LOGIC_CONTROL = common dso_local global i32 0, align 4
@HISTOGRAM_INT_CONTROL = common dso_local global i32 0, align 4
@PWM_CONTROL_LOGIC = common dso_local global i32 0, align 4
@PWM_PHASEIN_ENABLE = common dso_local global i32 0, align 4
@PWM_PHASEIN_INT_ENABLE = common dso_local global i32 0, align 4
@PIPE_DPST_EVENT_ENABLE = common dso_local global i32 0, align 4
@HISTOGRAM_INT_CTRL_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_irq_turn_on_dpst(%struct.drm_device* %0) #0 {
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
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  %14 = load i32, i32* @HISTOGRAM_LOGIC_CONTROL, align 4
  %15 = call i32 @PSB_WVDC32(i32 -2147483648, i32 %14)
  %16 = load i32, i32* @HISTOGRAM_LOGIC_CONTROL, align 4
  %17 = call i32 @PSB_RVDC32(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @HISTOGRAM_INT_CONTROL, align 4
  %19 = call i32 @PSB_WVDC32(i32 -2147483648, i32 %18)
  %20 = load i32, i32* @HISTOGRAM_INT_CONTROL, align 4
  %21 = call i32 @PSB_RVDC32(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %23 = call i32 @PSB_WVDC32(i32 -2147417856, i32 %22)
  %24 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %25 = call i32 @PSB_RVDC32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PWM_PHASEIN_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PWM_PHASEIN_INT_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %32 = call i32 @PSB_WVDC32(i32 %30, i32 %31)
  %33 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %34 = call i32 @PSB_RVDC32(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %36 = load i32, i32* @PIPE_DPST_EVENT_ENABLE, align 4
  %37 = call i32 @psb_enable_pipestat(%struct.drm_psb_private* %35, i32 0, i32 %36)
  %38 = load i32, i32* @HISTOGRAM_INT_CONTROL, align 4
  %39 = call i32 @PSB_RVDC32(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @HISTOGRAM_INT_CTRL_CLEAR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @HISTOGRAM_INT_CONTROL, align 4
  %44 = call i32 @PSB_WVDC32(i32 %42, i32 %43)
  %45 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %46 = call i32 @PSB_RVDC32(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, -2147417856
  %49 = load i32, i32* @PWM_PHASEIN_ENABLE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PWM_CONTROL_LOGIC, align 4
  %52 = call i32 @PSB_WVDC32(i32 %50, i32 %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = call i32 @gma_power_end(%struct.drm_device* %53)
  br label %55

55:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @PSB_RVDC32(i32) #1

declare dso_local i32 @psb_enable_pipestat(%struct.drm_psb_private*, i32, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
