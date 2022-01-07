; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_vm_write_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_vm_write_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32, i64)* @sdma_v2_4_vm_write_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v2_4_vm_write_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
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
  %29 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  store i32 %28, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @upper_32_bits(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  store i32 %40, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 %50, i32* %59, align 4
  br label %60

60:                                               ; preds = %92, %5
  %61 = load i32, i32* %11, align 4
  %62 = icmp ugt i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @lower_32_bits(i32 %64)
  %66 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32 %65, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @upper_32_bits(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  store i32 %77, i32* %86, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %63
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %93, 2
  store i32 %94, i32* %11, align 4
  br label %60

95:                                               ; preds = %60
  ret void
}

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_SUB_OP(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
