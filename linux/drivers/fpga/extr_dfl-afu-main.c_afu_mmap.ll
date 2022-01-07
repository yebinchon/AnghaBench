; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_afu_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-main.c_afu_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i32, i32 }
%struct.dfl_feature_platform_data = type { i32 }
%struct.dfl_afu_mmio_region = type { i32, i32, i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DFL_PORT_REGION_MMAP = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@DFL_PORT_REGION_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@DFL_PORT_REGION_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @afu_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dfl_feature_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dfl_afu_mmio_region, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VM_SHARED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %114

31:                                               ; preds = %2
  %32 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.dfl_feature_platform_data* @dev_get_platdata(i32* %33)
  store %struct.dfl_feature_platform_data* %34, %struct.dfl_feature_platform_data** %7, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @afu_mmio_region_get_by_offset(%struct.dfl_feature_platform_data* %40, i32 %41, i32 %42, %struct.dfl_afu_mmio_region* %9)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %114

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DFL_PORT_REGION_MMAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %48
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @VM_READ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DFL_PORT_REGION_READ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %114

73:                                               ; preds = %64, %57
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VM_WRITE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DFL_PORT_REGION_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %114

89:                                               ; preds = %80, %73
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pgprot_noncached(i32 %92)
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %9, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %9, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %102, %104
  %106 = add nsw i32 %101, %105
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @remap_pfn_range(%struct.vm_area_struct* %96, i32 %99, i32 %108, i32 %109, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %89, %86, %70, %54, %46, %28
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @afu_mmio_region_get_by_offset(%struct.dfl_feature_platform_data*, i32, i32, %struct.dfl_afu_mmio_region*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
