; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_vma_offset_manager*, i32, i32 }
%struct.drm_vma_offset_manager = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_FILE_PAGE_OFFSET_START = common dso_local global i32 0, align 4
@DRM_FILE_PAGE_OFFSET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_vma_offset_manager*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 2
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = call i32 @idr_init_base(i32* %9, i32 1)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.drm_vma_offset_manager* @kzalloc(i32 4, i32 %11)
  store %struct.drm_vma_offset_manager* %12, %struct.drm_vma_offset_manager** %4, align 8
  %13 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %4, align 8
  %14 = icmp ne %struct.drm_vma_offset_manager* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %4, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  store %struct.drm_vma_offset_manager* %20, %struct.drm_vma_offset_manager** %22, align 8
  %23 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %4, align 8
  %24 = load i32, i32* @DRM_FILE_PAGE_OFFSET_START, align 4
  %25 = load i32, i32* @DRM_FILE_PAGE_OFFSET_SIZE, align 4
  %26 = call i32 @drm_vma_offset_manager_init(%struct.drm_vma_offset_manager* %23, i32 %24, i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_init_base(i32*, i32) #1

declare dso_local %struct.drm_vma_offset_manager* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_vma_offset_manager_init(%struct.drm_vma_offset_manager*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
