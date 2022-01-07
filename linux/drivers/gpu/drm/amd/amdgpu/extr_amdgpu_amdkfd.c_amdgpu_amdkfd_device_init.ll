; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.kgd2kfd_shared_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AMDGPU_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@AMDGPU_GMC_HOLE_START = common dso_local global i32 0, align 4
@compute_vmid_bitmap = common dso_local global i32 0, align 4
@KGD_MAX_QUEUES = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_device_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kgd2kfd_shared_resources, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %150

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 4
  %24 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 5
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 6
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 7
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 9
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %35, align 4
  %43 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 10
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AMDGPU_GPU_PAGE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @AMDGPU_GMC_HOLE_START, align 4
  %51 = call i32 @min(i32 %49, i32 %50)
  store i32 %51, i32* %43, align 4
  %52 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 11
  %53 = load i32, i32* @compute_vmid_bitmap, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @KGD_MAX_QUEUES, align 4
  %62 = call i32 @bitmap_complement(i32 %55, i32 %60, i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %11
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @amdgpu_gfx_mec_queue_to_bit(%struct.amdgpu_device* %72, i64 %79, i32 %85, i32 %91)
  %93 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clear_bit(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %71, %11
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 1, %101
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %102, %107
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %119, %96
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @KGD_MAX_QUEUES, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @clear_bit(i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %110

122:                                              ; preds = %110
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 6
  %125 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 5
  %126 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 4
  %127 = call i32 @amdgpu_doorbell_get_kfd_info(%struct.amdgpu_device* %123, i32* %124, i32* %125, i32* %126)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CHIP_VEGA10, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %122
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.kgd2kfd_shared_resources, %struct.kgd2kfd_shared_resources* %5, i32 0, i32 2
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %133, %122
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @kgd2kfd_device_init(i64 %148, %struct.kgd2kfd_shared_resources* %5)
  br label %150

150:                                              ; preds = %144, %1
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bitmap_complement(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @amdgpu_gfx_mec_queue_to_bit(%struct.amdgpu_device*, i64, i32, i32) #1

declare dso_local i32 @amdgpu_doorbell_get_kfd_info(%struct.amdgpu_device*, i32*, i32*, i32*) #1

declare dso_local i32 @kgd2kfd_device_init(i64, %struct.kgd2kfd_shared_resources*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
