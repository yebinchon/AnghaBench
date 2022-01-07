; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_framebuffer_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_framebuffer_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_format = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.msm_framebuffer = type { %struct.msm_format* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_format* @msm_framebuffer_format(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.msm_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %5 = call %struct.msm_framebuffer* @to_msm_framebuffer(%struct.drm_framebuffer* %4)
  store %struct.msm_framebuffer* %5, %struct.msm_framebuffer** %3, align 8
  %6 = load %struct.msm_framebuffer*, %struct.msm_framebuffer** %3, align 8
  %7 = getelementptr inbounds %struct.msm_framebuffer, %struct.msm_framebuffer* %6, i32 0, i32 0
  %8 = load %struct.msm_format*, %struct.msm_format** %7, align 8
  ret %struct.msm_format* %8
}

declare dso_local %struct.msm_framebuffer* @to_msm_framebuffer(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
