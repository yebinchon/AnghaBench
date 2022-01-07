; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_do_dma_bootstrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_dma.c_mga_do_dma_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@_DRM_REGISTERS = common dso_local global i32 0, align 4
@_DRM_READ_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to map MMIO region: %d\0A\00", align 1
@SAREA_MAX = common dso_local global i32 0, align 4
@_DRM_SHM = common dso_local global i32 0, align 4
@_DRM_LOCKED = common dso_local global i32 0, align 4
@_DRM_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to map status region: %d\0A\00", align 1
@MINIMAL_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_7__*)* @mga_do_dma_bootstrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_do_dma_bootstrap(%struct.drm_device* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @_DRM_REGISTERS, align 4
  %35 = load i32, i32* @_DRM_READ_ONLY, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i32 @drm_legacy_addmap(%struct.drm_device* %27, i32 %30, i32 %33, i32 %34, i32 %35, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %89

45:                                               ; preds = %18
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = load i32, i32* @SAREA_MAX, align 4
  %48 = load i32, i32* @_DRM_SHM, align 4
  %49 = load i32, i32* @_DRM_READ_ONLY, align 4
  %50 = load i32, i32* @_DRM_LOCKED, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @_DRM_KERNEL, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = call i32 @drm_legacy_addmap(%struct.drm_device* %46, i32 0, i32 %47, i32 %48, i32 %53, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %45
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = call i32 @mga_do_agp_dma_bootstrap(%struct.drm_device* %67, %struct.TYPE_7__* %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = load i32, i32* @MINIMAL_CLEANUP, align 4
  %76 = call i32 @mga_do_cleanup_dma(%struct.drm_device* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %77
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = call i32 @mga_do_pci_dma_bootstrap(%struct.drm_device* %84, %struct.TYPE_7__* %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %59, %41
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @drm_legacy_addmap(%struct.drm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @mga_do_agp_dma_bootstrap(%struct.drm_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @mga_do_cleanup_dma(%struct.drm_device*, i32) #1

declare dso_local i32 @mga_do_pci_dma_bootstrap(%struct.drm_device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
