; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_vm_copy_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_vm_copy_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_COPY = common dso_local global i32 0, align 4
@SDMA_SUBOP_COPY_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32)* @sdma_v3_0_vm_copy_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_vm_copy_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %12 = load i32, i32* @SDMA_OP_COPY, align 4
  %13 = call i32 @SDMA_PKT_HEADER_OP(i32 %12)
  %14 = load i32, i32* @SDMA_SUBOP_COPY_LINEAR, align 4
  %15 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %14)
  %16 = or i32 %13, %15
  %17 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 %16, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
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
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @lower_32_bits(i32 %45)
  %47 = ptrtoint i8* %46 to i32
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
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @upper_32_bits(i32 %57)
  %59 = ptrtoint i8* %58 to i32
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
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @lower_32_bits(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %71, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i8* @upper_32_bits(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %88 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32 %83, i32* %92, align 4
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
