; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_init_doorbell_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_init_doorbell_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AMDGPU_NAVI10_DOORBELL_KIQ = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING0 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING1 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING2 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING3 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING4 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING5 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING6 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MEC_RING7 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_USERQUEUE_START = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_USERQUEUE_END = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_GFX_RING0 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_GFX_RING1 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE0 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE1 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_IH = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL64_VCN0_1 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL64_VCN2_3 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL64_VCN4_5 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL64_VCN6_7 = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL64_FIRST_NON_CP = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL64_LAST_NON_CP = common dso_local global i32 0, align 4
@AMDGPU_NAVI10_DOORBELL_MAX_ASSIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @nv_init_doorbell_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_init_doorbell_index(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_KIQ, align 4
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 19
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING0, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 18
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING1, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 17
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING2, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 16
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING3, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 15
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING4, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 14
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING5, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 13
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 12
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MEC_RING7, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 11
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_USERQUEUE_START, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 10
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_USERQUEUE_END, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_GFX_RING0, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_GFX_RING1, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE0, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE1, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_IH, align 4
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @AMDGPU_NAVI10_DOORBELL64_VCN0_1, align 4
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @AMDGPU_NAVI10_DOORBELL64_VCN2_3, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  %81 = load i32, i32* @AMDGPU_NAVI10_DOORBELL64_VCN4_5, align 4
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @AMDGPU_NAVI10_DOORBELL64_VCN6_7, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load i32, i32* @AMDGPU_NAVI10_DOORBELL64_FIRST_NON_CP, align 4
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @AMDGPU_NAVI10_DOORBELL64_LAST_NON_CP, align 4
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @AMDGPU_NAVI10_DOORBELL_MAX_ASSIGNMENT, align 4
  %100 = shl i32 %99, 1
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 20, i32* %106, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
