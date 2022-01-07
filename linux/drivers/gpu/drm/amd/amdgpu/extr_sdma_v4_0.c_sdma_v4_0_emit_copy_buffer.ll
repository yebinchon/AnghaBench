; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_emit_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_emit_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_COPY = common dso_local global i32 0, align 4
@SDMA_SUBOP_COPY_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32)* @sdma_v4_0_emit_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_emit_copy_buffer(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32 %24, i32* %33, align 4
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @lower_32_bits(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %45, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32 %57, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @lower_32_bits(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  store i32 %69, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @upper_32_bits(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  store i32 %81, i32* %90, align 4
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
