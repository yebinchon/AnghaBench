; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_vm_copy_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_vm_copy_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_COPY = common dso_local global i32 0, align 4
@SDMA_SUBOP_COPY_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32)* @sdma_v5_0_vm_copy_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_vm_copy_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %27 = sub i32 %26, 1
  %28 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  store i32 %27, i32* %36, align 4
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @lower_32_bits(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32 %48, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @upper_32_bits(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  store i32 %60, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i8* @lower_32_bits(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32 %72, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i8* @upper_32_bits(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %84, i32* %93, align 4
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
