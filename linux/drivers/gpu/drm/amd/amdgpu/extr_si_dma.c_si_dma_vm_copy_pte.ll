; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_vm_copy_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_vm_copy_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@DMA_PACKET_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32)* @si_dma_vm_copy_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_dma_vm_copy_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = mul i32 %10, 8
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @DMA_PACKET_COPY, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @DMA_PACKET(i32 %12, i32 1, i32 0, i32 0, i32 %13)
  %15 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  store i32 %14, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @lower_32_bits(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32 %26, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @lower_32_bits(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32 %38, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @upper_32_bits(i32 %48)
  %50 = and i32 %49, 255
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 %50, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @upper_32_bits(i32 %60)
  %62 = and i32 %61, 255
  %63 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %62, i32* %71, align 4
  ret void
}

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
