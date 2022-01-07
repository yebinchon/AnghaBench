; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_legacy_doorbell_index_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_legacy_doorbell_index_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AMDGPU_DOORBELL_KIQ = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING0 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING2 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING3 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING4 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING5 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING6 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MEC_RING7 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_GFX_RING0 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_sDMA_ENGINE0 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_sDMA_ENGINE1 = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_IH = common dso_local global i32 0, align 4
@AMDGPU_DOORBELL_MAX_ASSIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @legacy_doorbell_index_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @AMDGPU_DOORBELL_KIQ, align 4
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 12
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING0, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 11
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING1, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 10
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING2, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 9
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING3, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING4, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING5, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @AMDGPU_DOORBELL_MEC_RING7, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @AMDGPU_DOORBELL_GFX_RING0, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @AMDGPU_DOORBELL_sDMA_ENGINE0, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* @AMDGPU_DOORBELL_sDMA_ENGINE1, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* @AMDGPU_DOORBELL_IH, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @AMDGPU_DOORBELL_MAX_ASSIGNMENT, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
