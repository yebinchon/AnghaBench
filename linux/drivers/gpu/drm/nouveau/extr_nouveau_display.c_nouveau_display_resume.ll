; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_display = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_display_resume(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_display*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %6)
  store %struct.nouveau_display* %7, %struct.nouveau_display** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @nouveau_display_init(%struct.drm_device* %8, i32 1, i32 %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @drm_atomic_helper_resume(%struct.drm_device* %20, i32* %23)
  %25 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_init(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @drm_atomic_helper_resume(%struct.drm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
