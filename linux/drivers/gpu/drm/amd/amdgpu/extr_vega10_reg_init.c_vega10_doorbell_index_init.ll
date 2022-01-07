; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_reg_init.c_vega10_doorbell_index_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_reg_init.c_vega10_doorbell_index_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AMDGPU_DOORBELL64_KIQ = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING0 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING2 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING3 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING4 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING5 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING6 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MEC_RING7 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_USERQUEUE_START = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_USERQUEUE_END = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_GFX_RING0 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_sDMA_ENGINE0 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_sDMA_ENGINE1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_IH = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_UVD_RING0_1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_UVD_RING2_3 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_UVD_RING4_5 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_UVD_RING6_7 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCE_RING0_1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCE_RING2_3 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCE_RING4_5 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCE_RING6_7 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCN0_1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCN2_3 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCN4_5 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_VCN6_7 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_FIRST_NON_CP = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_LAST_NON_CP = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL64_MAX_ASSIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vega10_doorbell_index_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @AMDGPU_DOORBELL64_KIQ, align 4
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 19
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING0, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 18
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING1, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 17
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING2, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 16
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING3, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 15
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING4, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 14
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING5, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 13
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 12
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @AMDGPU_DOORBELL64_MEC_RING7, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 11
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @AMDGPU_DOORBELL64_USERQUEUE_START, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @AMDGPU_DOORBELL64_USERQUEUE_END, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @AMDGPU_DOORBELL64_GFX_RING0, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 8
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @AMDGPU_DOORBELL64_sDMA_ENGINE0, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @AMDGPU_DOORBELL64_sDMA_ENGINE1, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @AMDGPU_DOORBELL64_IH, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @AMDGPU_DOORBELL64_UVD_RING0_1, align 4
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 7
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @AMDGPU_DOORBELL64_UVD_RING2_3, align 4
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  store i32 %72, i32* %76, align 8
  %77 = load i32, i32* @AMDGPU_DOORBELL64_UVD_RING4_5, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @AMDGPU_DOORBELL64_UVD_RING6_7, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* @AMDGPU_DOORBELL64_VCE_RING0_1, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @AMDGPU_DOORBELL64_VCE_RING2_3, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 8
  %97 = load i32, i32* @AMDGPU_DOORBELL64_VCE_RING4_5, align 4
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @AMDGPU_DOORBELL64_VCE_RING6_7, align 4
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* @AMDGPU_DOORBELL64_VCN0_1, align 4
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @AMDGPU_DOORBELL64_VCN2_3, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 %112, i32* %116, align 8
  %117 = load i32, i32* @AMDGPU_DOORBELL64_VCN4_5, align 4
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @AMDGPU_DOORBELL64_VCN6_7, align 4
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load i32, i32* @AMDGPU_DOORBELL64_FIRST_NON_CP, align 4
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @AMDGPU_DOORBELL64_LAST_NON_CP, align 4
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @AMDGPU_DOORBELL64_MAX_ASSIGNMENT, align 4
  %136 = shl i32 %135, 1
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store i32 4, i32* %142, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
