; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_comp_fill_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_comp_fill_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qdma_comp = type { i64, i64, %struct.fsl_qdma_format*, %struct.fsl_qdma_format* }
%struct.fsl_qdma_format = type { i8* }

@FSL_QDMA_COMMAND_BUFFER_SIZE = common dso_local global i32 0, align 4
@FSL_QDMA_DESCRIPTOR_BUFFER_SIZE = common dso_local global i32 0, align 4
@FSL_QDMA_CMD_RWTTYPE = common dso_local global i32 0, align 4
@FSL_QDMA_CMD_RWTTYPE_OFFSET = common dso_local global i32 0, align 4
@FSL_QDMA_CMD_LWC = common dso_local global i32 0, align 4
@FSL_QDMA_CMD_LWC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_qdma_comp*, i64, i64, i32)* @fsl_qdma_comp_fill_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_qdma_comp_fill_memcpy(%struct.fsl_qdma_comp* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.fsl_qdma_comp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_qdma_format*, align 8
  %11 = alloca %struct.fsl_qdma_format*, align 8
  %12 = alloca %struct.fsl_qdma_format*, align 8
  %13 = alloca %struct.fsl_qdma_format*, align 8
  %14 = alloca %struct.fsl_qdma_format*, align 8
  %15 = alloca %struct.fsl_qdma_format*, align 8
  store %struct.fsl_qdma_comp* %0, %struct.fsl_qdma_comp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %17 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %16, i32 0, i32 3
  %18 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %17, align 8
  store %struct.fsl_qdma_format* %18, %struct.fsl_qdma_format** %12, align 8
  %19 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %20 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %19, i32 0, i32 3
  %21 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %20, align 8
  %22 = getelementptr inbounds %struct.fsl_qdma_format, %struct.fsl_qdma_format* %21, i64 1
  store %struct.fsl_qdma_format* %22, %struct.fsl_qdma_format** %13, align 8
  %23 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %24 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %23, i32 0, i32 3
  %25 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %24, align 8
  %26 = getelementptr inbounds %struct.fsl_qdma_format, %struct.fsl_qdma_format* %25, i64 2
  store %struct.fsl_qdma_format* %26, %struct.fsl_qdma_format** %14, align 8
  %27 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %27, i32 0, i32 3
  %29 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %28, align 8
  %30 = getelementptr inbounds %struct.fsl_qdma_format, %struct.fsl_qdma_format* %29, i64 3
  store %struct.fsl_qdma_format* %30, %struct.fsl_qdma_format** %15, align 8
  %31 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %32 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %31, i32 0, i32 2
  %33 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %32, align 8
  store %struct.fsl_qdma_format* %33, %struct.fsl_qdma_format** %10, align 8
  %34 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %35 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %34, i32 0, i32 2
  %36 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %35, align 8
  %37 = getelementptr inbounds %struct.fsl_qdma_format, %struct.fsl_qdma_format* %36, i64 1
  store %struct.fsl_qdma_format* %37, %struct.fsl_qdma_format** %11, align 8
  %38 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %39 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %38, i32 0, i32 3
  %40 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %39, align 8
  %41 = load i32, i32* @FSL_QDMA_COMMAND_BUFFER_SIZE, align 4
  %42 = call i32 @memset(%struct.fsl_qdma_format* %40, i32 0, i32 %41)
  %43 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %44 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %43, i32 0, i32 2
  %45 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %44, align 8
  %46 = load i32, i32* @FSL_QDMA_DESCRIPTOR_BUFFER_SIZE, align 4
  %47 = call i32 @memset(%struct.fsl_qdma_format* %45, i32 0, i32 %46)
  %48 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %12, align 8
  %49 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %50 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 16
  %53 = call i32 @qdma_desc_addr_set64(%struct.fsl_qdma_format* %48, i64 %52)
  %54 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %12, align 8
  %55 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %12, align 8
  %56 = call i32 @qdma_ccdf_get_offset(%struct.fsl_qdma_format* %55)
  %57 = call i32 @qdma_ccdf_set_format(%struct.fsl_qdma_format* %54, i32 %56)
  %58 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %12, align 8
  %59 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %12, align 8
  %60 = call i32 @qdma_ccdf_get_status(%struct.fsl_qdma_format* %59)
  %61 = call i32 @qdma_ccdf_set_ser(%struct.fsl_qdma_format* %58, i32 %60)
  %62 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %13, align 8
  %63 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %5, align 8
  %64 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @qdma_desc_addr_set64(%struct.fsl_qdma_format* %62, i64 %65)
  %67 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %13, align 8
  %68 = call i32 @qdma_csgf_set_len(%struct.fsl_qdma_format* %67, i32 32)
  %69 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %14, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @qdma_desc_addr_set64(%struct.fsl_qdma_format* %69, i64 %70)
  %72 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %14, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @qdma_csgf_set_len(%struct.fsl_qdma_format* %72, i32 %73)
  %75 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %15, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @qdma_desc_addr_set64(%struct.fsl_qdma_format* %75, i64 %76)
  %78 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %15, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @qdma_csgf_set_len(%struct.fsl_qdma_format* %78, i32 %79)
  %81 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %15, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @qdma_csgf_set_f(%struct.fsl_qdma_format* %81, i32 %82)
  %84 = load i32, i32* @FSL_QDMA_CMD_RWTTYPE, align 4
  %85 = load i32, i32* @FSL_QDMA_CMD_RWTTYPE_OFFSET, align 4
  %86 = shl i32 %84, %85
  %87 = call i32 @cpu_to_le32(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i8* @QDMA_SDDF_CMD(i32 %88)
  %90 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %10, align 8
  %91 = getelementptr inbounds %struct.fsl_qdma_format, %struct.fsl_qdma_format* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @FSL_QDMA_CMD_RWTTYPE, align 4
  %93 = load i32, i32* @FSL_QDMA_CMD_RWTTYPE_OFFSET, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @cpu_to_le32(i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @FSL_QDMA_CMD_LWC, align 4
  %97 = load i32, i32* @FSL_QDMA_CMD_LWC_OFFSET, align 4
  %98 = shl i32 %96, %97
  %99 = call i32 @cpu_to_le32(i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i8* @QDMA_SDDF_CMD(i32 %102)
  %104 = load %struct.fsl_qdma_format*, %struct.fsl_qdma_format** %11, align 8
  %105 = getelementptr inbounds %struct.fsl_qdma_format, %struct.fsl_qdma_format* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fsl_qdma_format*, i32, i32) #1

declare dso_local i32 @qdma_desc_addr_set64(%struct.fsl_qdma_format*, i64) #1

declare dso_local i32 @qdma_ccdf_set_format(%struct.fsl_qdma_format*, i32) #1

declare dso_local i32 @qdma_ccdf_get_offset(%struct.fsl_qdma_format*) #1

declare dso_local i32 @qdma_ccdf_set_ser(%struct.fsl_qdma_format*, i32) #1

declare dso_local i32 @qdma_ccdf_get_status(%struct.fsl_qdma_format*) #1

declare dso_local i32 @qdma_csgf_set_len(%struct.fsl_qdma_format*, i32) #1

declare dso_local i32 @qdma_csgf_set_f(%struct.fsl_qdma_format*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @QDMA_SDDF_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
