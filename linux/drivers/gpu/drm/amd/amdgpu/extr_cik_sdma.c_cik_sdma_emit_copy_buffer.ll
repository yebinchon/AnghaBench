; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_emit_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_emit_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32, i8** }

@SDMA_OPCODE_COPY = common dso_local global i32 0, align 4
@SDMA_COPY_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i8*)* @cik_sdma_emit_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_sdma_emit_copy_buffer(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.amdgpu_ib* %0, %struct.amdgpu_ib** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* @SDMA_OPCODE_COPY, align 4
  %10 = load i32, i32* @SDMA_COPY_SUB_OPCODE_LINEAR, align 4
  %11 = call i8* @SDMA_PACKET(i32 %9, i32 %10, i32 0)
  %12 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8*, i8** %14, i64 %19
  store i8* %11, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
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
  %31 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  store i8* null, i8** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @lower_32_bits(i32 %40)
  %42 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %44, i64 %49
  store i8* %41, i8** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @upper_32_bits(i32 %51)
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
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @lower_32_bits(i32 %62)
  %64 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %66, i64 %71
  store i8* %63, i8** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i8* @upper_32_bits(i32 %73)
  %75 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8*, i8** %77, i64 %82
  store i8* %74, i8** %83, align 8
  ret void
}

declare dso_local i8* @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
