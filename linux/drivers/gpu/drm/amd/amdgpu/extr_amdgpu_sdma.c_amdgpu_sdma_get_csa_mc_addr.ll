; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sdma.c_amdgpu_sdma_get_csa_mc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sdma.c_amdgpu_sdma_get_csa_mc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@amdgpu_mcbp = common dso_local global i32 0, align 4
@AMDGPU_CSA_SDMA_OFFSET = common dso_local global i64 0, align 8
@AMDGPU_CSA_SDMA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @amdgpu_sdma_get_csa_mc_addr(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @amdgpu_mcbp, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %2
  store i64 0, i64* %3, align 8
  br label %40

19:                                               ; preds = %15
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = call i32 @amdgpu_sdma_get_index_from_ring(%struct.amdgpu_ring* %20, i32* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 31
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  store i64 0, i64* %7, align 8
  br label %38

28:                                               ; preds = %24
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = call i64 @amdgpu_csa_vaddr(%struct.amdgpu_device* %29)
  %31 = load i64, i64* @AMDGPU_CSA_SDMA_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AMDGPU_CSA_SDMA_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %28, %27
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %18
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i32 @amdgpu_sdma_get_index_from_ring(%struct.amdgpu_ring*, i32*) #1

declare dso_local i64 @amdgpu_csa_vaddr(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
