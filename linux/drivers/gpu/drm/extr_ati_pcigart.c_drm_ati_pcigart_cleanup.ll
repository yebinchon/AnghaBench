; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_ati_pcigart.c_drm_ati_pcigart_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_ati_pcigart.c_drm_ati_pcigart_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { i32, i32* }
%struct.drm_ati_pcigart_info = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"no scatter/gather memory!\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DRM_ATI_GART_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ati_pcigart_cleanup(%struct.drm_device* %0, %struct.drm_ati_pcigart_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_ati_pcigart_info*, align 8
  %6 = alloca %struct.drm_sg_mem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_ati_pcigart_info* %1, %struct.drm_ati_pcigart_info** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %11, align 8
  store %struct.drm_sg_mem* %12, %struct.drm_sg_mem** %6, align 8
  %13 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %14 = icmp ne %struct.drm_sg_mem* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %19 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %17
  %23 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %24 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %30 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %36 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %72, %40
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %50 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %75

58:                                               ; preds = %48
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %63 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %71 = call i32 @pci_unmap_page(i32 %61, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %43

75:                                               ; preds = %57, %43
  %76 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %77 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DRM_ATI_GART_MAIN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %83 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %17
  %86 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %87 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DRM_ATI_GART_MAIN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %93 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %98 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %99 = call i32 @drm_ati_free_pcigart_table(%struct.drm_device* %97, %struct.drm_ati_pcigart_info* %98)
  br label %100

100:                                              ; preds = %96, %91, %85
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @drm_ati_free_pcigart_table(%struct.drm_device*, %struct.drm_ati_pcigart_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
