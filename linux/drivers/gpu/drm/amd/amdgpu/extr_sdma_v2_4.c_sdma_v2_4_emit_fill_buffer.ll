; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_emit_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_emit_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32, i8** }

@SDMA_OP_CONST_FILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i8*, i32, i8*)* @sdma_v2_4_emit_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v2_4_emit_fill_buffer(%struct.amdgpu_ib* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* @SDMA_OP_CONST_FILL, align 4
  %10 = call i8* @SDMA_PKT_HEADER_OP(i32 %9)
  %11 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  %14 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8*, i8** %13, i64 %18
  store i8* %10, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @lower_32_bits(i32 %20)
  %22 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8*, i8** %24, i64 %29
  store i8* %21, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @upper_32_bits(i32 %31)
  %33 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8*, i8** %35, i64 %40
  store i8* %32, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8*, i8** %45, i64 %50
  store i8* %42, i8** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %55, i64 %60
  store i8* %52, i8** %61, align 8
  ret void
}

declare dso_local i8* @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
