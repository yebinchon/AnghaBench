; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_vm_set_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_vm_set_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32*, i32 }

@R600_PTE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_vm_set_pages(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_ib*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %17

17:                                               ; preds = %34, %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %141

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = mul i32 %21, 2
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ugt i32 %23, 1048574
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1048574, i32* %16, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @R600_PTE_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %15, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @DMA_PTE_PDE_PACKET(i32 %35)
  %37 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %38 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %41 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 %36, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %51 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  store i32 %46, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @upper_32_bits(i32 %56)
  %58 = and i32 %57, 255
  %59 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %60 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %63 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32 %58, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %70 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  store i32 %68, i32* %77, align 4
  %78 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %79 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %82 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %89 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %92 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32 %87, i32* %96, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @upper_32_bits(i32 %97)
  %99 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %100 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %103 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  store i32 %98, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %110 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %113 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32 %108, i32* %117, align 4
  %118 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %119 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %122 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* %16, align 4
  %128 = mul i32 %127, 4
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %16, align 4
  %132 = udiv i32 %131, 2
  %133 = load i32, i32* %13, align 4
  %134 = mul i32 %132, %133
  %135 = load i32, i32* %11, align 4
  %136 = add i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %16, align 4
  %138 = udiv i32 %137, 2
  %139 = load i32, i32* %12, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %17

141:                                              ; preds = %17
  ret void
}

declare dso_local i32 @DMA_PTE_PDE_PACKET(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
