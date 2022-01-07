; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_display = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_display_suspend(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_display*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %8)
  store %struct.nouveau_display* %9, %struct.nouveau_display** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call i64 @drm_drv_uses_atomic_modeset(%struct.drm_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call i32* @drm_atomic_helper_suspend(%struct.drm_device* %17)
  %19 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %32 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %13
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @nouveau_display_fini(%struct.drm_device* %37, i32 1, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32* @drm_atomic_helper_suspend(%struct.drm_device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nouveau_display_fini(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
