; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_init_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_init_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__*, %struct.msm_drm_private* }
%struct.TYPE_6__ = type { i32 }
%struct.msm_drm_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"using VRAM carveout: %lx@%pa\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"using %s VRAM carveout\0A\00", align 1
@vram = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@DMA_ATTR_WRITE_COMBINE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to allocate VRAM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"VRAM: %08x->%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @msm_init_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_init_vram(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.device_node* @of_parse_phandle(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_address_to_resource(%struct.device_node* %23, i32 0, %struct.resource* %8)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %118

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %33, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1
  %39 = call i32 (i8*, i64, ...) @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64* %38)
  br label %51

40:                                               ; preds = %1
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i32 @msm_use_mmu(%struct.drm_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @vram, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 (i8*, i64, ...) @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @vram, align 4
  %49 = call i64 @memparse(i32 %48, i32* null)
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %57 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %60 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @PAGE_SHIFT, align 8
  %64 = lshr i64 %62, %63
  %65 = sub i64 %64, 1
  %66 = call i32 @drm_mm_init(i32* %61, i32 0, i64 %65)
  %67 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %68 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  %72 = load i64, i64* %9, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* @DMA_ATTR_WRITE_COMBINE, align 8
  %75 = load i64, i64* %9, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %9, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %82 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i8* @dma_alloc_attrs(%struct.TYPE_6__* %79, i64 %80, i64* %83, i32 %84, i64 %85)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %54
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @DRM_DEV_ERROR(%struct.TYPE_6__* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %95 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %118

99:                                               ; preds = %54
  %100 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %101 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %104 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %109 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @DRM_DEV_INFO(%struct.TYPE_6__* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %114)
  br label %116

116:                                              ; preds = %99, %51
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %89, %29
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @DRM_INFO(i8*, i64, ...) #1

declare dso_local i32 @msm_use_mmu(%struct.drm_device*) #1

declare dso_local i64 @memparse(i32, i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @dma_alloc_attrs(%struct.TYPE_6__*, i64, i64*, i32, i64) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @DRM_DEV_INFO(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
