; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_syncobj_lookup_and_add_to_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_syncobj_lookup_and_add_to_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"syncobj %u failed to find fence @ %llu (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, i32, i32, i32)* @amdgpu_syncobj_lookup_and_add_to_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_syncobj_lookup_and_add_to_sync(%struct.amdgpu_cs_parser* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_cs_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @drm_syncobj_find_fence(i32 %14, i32 %15, i32 %16, i32 %17, %struct.dma_fence** %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %4
  %28 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %36 = call i32 @amdgpu_sync_fence(i32 %30, i32* %34, %struct.dma_fence* %35, i32 1)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %38 = call i32 @dma_fence_put(%struct.dma_fence* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %27, %21
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @drm_syncobj_find_fence(i32, i32, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_sync_fence(i32, i32*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
