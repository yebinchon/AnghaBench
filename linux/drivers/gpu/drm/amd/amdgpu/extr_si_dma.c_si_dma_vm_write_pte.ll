; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_vm_write_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_vm_write_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ib = type { i32, i8** }

@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ib*, i32, i32, i32, i64)* @si_dma_vm_write_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_dma_vm_write_pte(%struct.amdgpu_ib* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
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
  %14 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i8* @DMA_PACKET(i32 %14, i32 0, i32 0, i32 0, i32 %15)
  %17 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8*, i8** %19, i64 %24
  store i8* %16, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @lower_32_bits(i32 %26)
  %28 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %30, i64 %35
  store i8* %27, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @upper_32_bits(i32 %37)
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %41, i64 %46
  store i8* %38, i8** %47, align 8
  br label %48

48:                                               ; preds = %79, %5
  %49 = load i32, i32* %11, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @lower_32_bits(i32 %52)
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %56, i64 %61
  store i8* %53, i8** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @upper_32_bits(i32 %63)
  %65 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %6, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %67, i64 %72
  store i8* %64, i8** %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %51
  %80 = load i32, i32* %11, align 4
  %81 = sub i32 %80, 2
  store i32 %81, i32* %11, align 4
  br label %48

82:                                               ; preds = %48
  ret void
}

declare dso_local i8* @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
