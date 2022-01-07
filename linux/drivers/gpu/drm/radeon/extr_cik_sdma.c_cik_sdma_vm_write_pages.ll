; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_write_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_write_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32*, i32 }

@SDMA_OPCODE_WRITE = common dso_local global i32 0, align 4
@SDMA_WRITE_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4
@R600_PTE_SYSTEM = common dso_local global i32 0, align 4
@R600_PTE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_sdma_vm_write_pages(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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

17:                                               ; preds = %128, %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %129

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
  %27 = load i32, i32* @SDMA_OPCODE_WRITE, align 4
  %28 = load i32, i32* @SDMA_WRITE_SUB_OPCODE_LINEAR, align 4
  %29 = call i32 @SDMA_PACKET(i32 %27, i32 %28, i32 0)
  %30 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %34 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  store i32 %29, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %41 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %44 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 %39, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i8* @upper_32_bits(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %53 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %56 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  store i32 %51, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %63 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %66 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  store i32 %61, i32* %70, align 4
  br label %71

71:                                               ; preds = %121, %26
  %72 = load i32, i32* %16, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @R600_PTE_SYSTEM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @radeon_vm_map_gart(%struct.radeon_device* %80, i32 %81)
  store i32 %82, i32* %15, align 4
  br label %92

83:                                               ; preds = %74
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @R600_PTE_VALID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %15, align 4
  br label %91

90:                                               ; preds = %83
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %90, %88
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %101 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %104 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %99, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i8* @upper_32_bits(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %113 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %116 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  store i32 %111, i32* %120, align 4
  br label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %16, align 4
  %123 = sub i32 %122, 2
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %124, -1
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 8
  store i32 %127, i32* %10, align 4
  br label %71

128:                                              ; preds = %71
  br label %17

129:                                              ; preds = %17
  ret void
}

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @radeon_vm_map_gart(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
