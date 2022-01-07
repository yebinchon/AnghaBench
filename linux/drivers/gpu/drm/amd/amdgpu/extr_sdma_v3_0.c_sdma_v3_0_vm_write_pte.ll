; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_vm_write_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_vm_write_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32*, i32 }

@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32, i64)* @sdma_v3_0_vm_write_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_vm_write_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
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
  %53 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  store i32 %52, i32* %61, align 4
  br label %62

62:                                               ; preds = %95, %5
  %63 = load i32, i32* %11, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @lower_32_bits(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  store i32 %68, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @upper_32_bits(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 %80, i32* %89, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %65
  %96 = load i32, i32* %11, align 4
  %97 = sub i32 %96, 2
  store i32 %97, i32* %11, align 4
  br label %62

98:                                               ; preds = %62
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
