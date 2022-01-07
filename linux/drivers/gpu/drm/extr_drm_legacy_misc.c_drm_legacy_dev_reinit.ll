; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_legacy_misc.c_drm_legacy_dev_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_legacy_misc.c_drm_legacy_dev_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"lastclose completed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_legacy_dev_reinit(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i32 @drm_irq_uninstall(%struct.drm_device* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = call i32 @drm_legacy_agp_clear(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call i32 @drm_legacy_sg_cleanup(%struct.drm_device* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i32 @drm_legacy_vma_flush(%struct.drm_device* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i32 @drm_legacy_dma_takedown(%struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 4
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_legacy_agp_clear(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_sg_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_vma_flush(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_dma_takedown(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
