; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_vblank_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_vblank_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.nouveau_crtc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_display_vblank_disable(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.nouveau_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device* %7, i32 %8)
  store %struct.drm_crtc* %9, %struct.drm_crtc** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %11 = icmp ne %struct.drm_crtc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %14)
  store %struct.nouveau_crtc* %15, %struct.nouveau_crtc** %6, align 8
  %16 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %16, i32 0, i32 0
  %18 = call i32 @nvif_notify_put(i32* %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device*, i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nvif_notify_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
