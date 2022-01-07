; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_emit_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_emit_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_COPY = common dso_local global i32 0, align 4
@SDMA_SUBOP_COPY_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32)* @sdma_v2_4_emit_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v2_4_emit_copy_buffer(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @SDMA_OP_COPY, align 4
  %10 = call i32 @SDMA_PKT_HEADER_OP(i32 %9)
  %11 = load i32, i32* @SDMA_SUBOP_COPY_LINEAR, align 4
  %12 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %11)
  %13 = or i32 %10, %12
  %14 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32 %13, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
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
  %33 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @lower_32_bits(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 %44, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i8* @upper_32_bits(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32 %56, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @lower_32_bits(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  store i32 %68, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @upper_32_bits(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 %80, i32* %89, align 4
  ret void
}

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_SUB_OP(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
