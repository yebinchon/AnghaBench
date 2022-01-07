; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_set_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_set_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32*, i32 }

@R600_PTE_VALID = common dso_local global i32 0, align 4
@SDMA_OPCODE_GENERATE_PTE_PDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_sdma_vm_set_pages(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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

17:                                               ; preds = %33, %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %149

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ugt i32 %22, 524287
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 524287, i32* %16, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @R600_PTE_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %15, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* @SDMA_OPCODE_GENERATE_PTE_PDE, align 4
  %35 = call i32 @SDMA_PACKET(i32 %34, i32 0, i32 0)
  %36 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %37 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %40 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32 %35, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %47 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %50 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %45, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %59 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %62 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32 %57, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %69 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %72 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %67, i32* %76, align 4
  %77 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %78 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %81 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %88 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %91 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32 %86, i32* %95, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i8* @upper_32_bits(i32 %96)
  %98 = ptrtoint i8* %97 to i32
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
  %128 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %129 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %132 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32 %127, i32* %136, align 4
  %137 = load i32, i32* %16, align 4
  %138 = mul i32 %137, 8
  %139 = load i32, i32* %10, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %13, align 4
  %143 = mul i32 %141, %142
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %12, align 4
  %148 = sub i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %17

149:                                              ; preds = %17
  ret void
}

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
