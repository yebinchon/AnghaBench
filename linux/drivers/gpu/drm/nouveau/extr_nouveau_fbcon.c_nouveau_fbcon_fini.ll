; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_fbcon_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %4)
  store %struct.nouveau_drm* %5, %struct.nouveau_drm** %3, align 8
  %6 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = call i32 @nouveau_fbcon_accel_fini(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @nouveau_fbcon_destroy(%struct.drm_device* %14, i32* %17)
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_fbcon_accel_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_fbcon_destroy(%struct.drm_device*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
