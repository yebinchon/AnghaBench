; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.hdmi_context = type { i32, i32, i32, i64 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @hdmi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.hdmi_context*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.hdmi_context* @encoder_to_hdmi(%struct.drm_encoder* %4)
  store %struct.hdmi_context* %5, %struct.hdmi_context** %3, align 8
  %6 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %17, i32 0, i32 2
  %19 = call i32 @cancel_delayed_work(i32* %18)
  %20 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %21 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %24 = call i32 @cec_notifier_set_phys_addr(i32 %22, i32 %23)
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %27 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %13
  ret void
}

declare dso_local %struct.hdmi_context* @encoder_to_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @cec_notifier_set_phys_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
