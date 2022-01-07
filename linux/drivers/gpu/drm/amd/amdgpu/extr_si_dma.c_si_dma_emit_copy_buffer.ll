; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_emit_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_emit_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@DMA_PACKET_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32)* @si_dma_emit_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_dma_emit_copy_buffer(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @DMA_PACKET_COPY, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @DMA_PACKET(i32 %9, i32 1, i32 0, i32 0, i32 %10)
  %12 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  store i32 %11, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @lower_32_bits(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  store i32 %23, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @lower_32_bits(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32 %35, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = and i32 %46, 255
  %48 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  store i32 %47, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @upper_32_bits(i32 %57)
  %59 = and i32 %58, 255
  %60 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  store i32 %59, i32* %68, align 4
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
