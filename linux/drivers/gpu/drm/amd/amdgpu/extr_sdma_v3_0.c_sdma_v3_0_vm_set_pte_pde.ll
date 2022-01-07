; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_vm_set_pte_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_vm_set_pte_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_GEN_PTEPDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32, i32, i32)* @sdma_v3_0_vm_set_pte_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_vm_set_pte_pde(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @SDMA_OP_GEN_PTEPDE, align 4
  %14 = call i32 @SDMA_PKT_HEADER_OP(i32 %13)
  %15 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  store i32 %14, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @lower_32_bits(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32 %26, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @upper_32_bits(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32 %38, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i8* @lower_32_bits(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 %50, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i8* @upper_32_bits(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %62, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i8* @lower_32_bits(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  store i32 %74, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i8* @upper_32_bits(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %88 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32 %86, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %98 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  store i32 %96, i32* %105, align 4
  %106 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %117 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  store i32 %115, i32* %124, align 4
  ret void
}

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
