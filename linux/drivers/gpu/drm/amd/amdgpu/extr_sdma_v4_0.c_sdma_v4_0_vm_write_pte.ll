; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_vm_write_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_vm_write_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32, i64)* @sdma_v4_0_vm_write_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_vm_write_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.amdgpu_ib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = mul i32 %12, 2
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @SDMA_OP_WRITE, align 4
  %15 = call i32 @SDMA_PKT_HEADER_OP(i32 %14)
  %16 = load i32, i32* @SDMA_SUBOP_WRITE_LINEAR, align 4
  %17 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %16)
  %18 = or i32 %15, %17
  %19 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  store i32 %18, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @lower_32_bits(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 %30, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @upper_32_bits(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %42, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub i32 %52, 1
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %53, i32* %62, align 4
  br label %63

63:                                               ; preds = %96, %5
  %64 = load i32, i32* %11, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = call i8* @lower_32_bits(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  store i32 %69, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i8* @upper_32_bits(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  store i32 %81, i32* %90, align 4
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %66
  %97 = load i32, i32* %11, align 4
  %98 = sub i32 %97, 2
  store i32 %98, i32* %11, align 4
  br label %63

99:                                               ; preds = %63
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
