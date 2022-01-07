; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.psp_ring, %struct.amdgpu_device* }
%struct.psp_ring = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32)* @psp_v3_1_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v3_1_ring_init(%struct.psp_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psp_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.psp_ring*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %10 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %9, i32 0, i32 1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %8, align 8
  %12 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %13 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %12, i32 0, i32 0
  store %struct.psp_ring* %13, %struct.psp_ring** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %16 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %18 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %17, i32 0, i32 1
  store i32 4096, i32* %18, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %20 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %21 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %29 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %28, i32 0, i32 3
  %30 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %31 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to i8**
  %33 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %19, i32 %22, i32 %23, i32 %24, i32* %27, i32* %29, i8** %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %38 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
