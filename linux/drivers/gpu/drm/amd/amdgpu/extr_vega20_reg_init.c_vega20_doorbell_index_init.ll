; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega20_reg_init.c_vega20_doorbell_index_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega20_reg_init.c_vega20_doorbell_index_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AMDGPU_VEGA20_DOORBELL_KIQ = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING0 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING1 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING2 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING3 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING4 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING5 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING6 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MEC_RING7 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_USERQUEUE_START = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_USERQUEUE_END = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_GFX_RING0 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE0 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE1 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE2 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE3 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE4 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE5 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE6 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE7 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_IH = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_UVD_RING0_1 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_UVD_RING2_3 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_UVD_RING4_5 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_UVD_RING6_7 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCE_RING0_1 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCE_RING2_3 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCE_RING4_5 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCE_RING6_7 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCN0_1 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCN2_3 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCN4_5 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_VCN6_7 = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_FIRST_NON_CP = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL64_LAST_NON_CP = common dso_local global i32 0, align 4
@AMDGPU_VEGA20_DOORBELL_MAX_ASSIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vega20_doorbell_index_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_KIQ, align 4
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 19
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING0, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 18
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING1, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 17
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING2, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 16
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING3, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 15
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING4, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 14
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING5, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 13
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 12
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MEC_RING7, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 11
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_USERQUEUE_START, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_USERQUEUE_END, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_GFX_RING0, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 8
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE0, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE1, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE2, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE3, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE4, align 4
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE5, align 4
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE6, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE7, align 4
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 7
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_IH, align 4
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_UVD_RING0_1, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 7
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_UVD_RING2_3, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  store i32 %108, i32* %112, align 8
  %113 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_UVD_RING4_5, align 4
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_UVD_RING6_7, align 4
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  store i32 %118, i32* %122, align 8
  %123 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCE_RING0_1, align 4
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCE_RING2_3, align 4
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 8
  %133 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCE_RING4_5, align 4
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCE_RING6_7, align 4
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  %143 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCN0_1, align 4
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCN2_3, align 4
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  store i32 %148, i32* %152, align 8
  %153 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCN4_5, align 4
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_VCN6_7, align 4
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 8
  %163 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_FIRST_NON_CP, align 4
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @AMDGPU_VEGA20_DOORBELL64_LAST_NON_CP, align 4
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  %171 = load i32, i32* @AMDGPU_VEGA20_DOORBELL_MAX_ASSIGNMENT, align 4
  %172 = shl i32 %171, 1
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %177 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i32 20, i32* %178, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
