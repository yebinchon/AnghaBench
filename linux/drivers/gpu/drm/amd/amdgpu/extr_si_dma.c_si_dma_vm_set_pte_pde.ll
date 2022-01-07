; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_vm_set_pte_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_vm_set_pte_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32, i32, i32)* @si_dma_vm_set_pte_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_dma_vm_set_pte_pde(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %15

15:                                               ; preds = %32, %6
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %142

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = mul i32 %19, 2
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ugt i32 %21, 1048574
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1048574, i32* %14, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %13, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @DMA_PTE_PDE_PACKET(i32 %33)
  %35 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %34, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 %44, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @upper_32_bits(i32 %54)
  %56 = and i32 %55, 255
  %57 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32 %56, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @lower_32_bits(i32 %66)
  %68 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %67, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  store i32 %78, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  store i32 %88, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @upper_32_bits(i32 %98)
  %100 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %99, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %111 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %114 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  store i32 %109, i32* %118, align 4
  %119 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = mul i32 %128, 4
  %130 = load i32, i32* %8, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %14, align 4
  %133 = udiv i32 %132, 2
  %134 = load i32, i32* %11, align 4
  %135 = mul i32 %133, %134
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %14, align 4
  %139 = udiv i32 %138, 2
  %140 = load i32, i32* %10, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %15

142:                                              ; preds = %15
  ret void
}

declare dso_local i32 @DMA_PTE_PDE_PACKET(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
