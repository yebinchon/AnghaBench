; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_fill_tcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_fill_tcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_hw_tcd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EDMA_TCD_CSR_INT_MAJOR = common dso_local global i32 0, align 4
@EDMA_TCD_CSR_D_REQ = common dso_local global i32 0, align 4
@EDMA_TCD_CSR_E_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_edma_hw_tcd*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @fsl_edma_fill_tcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_edma_fill_tcd(%struct.fsl_edma_hw_tcd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.fsl_edma_hw_tcd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.fsl_edma_hw_tcd* %0, %struct.fsl_edma_hw_tcd** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %33 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %37 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %18, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %41 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %19, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %45 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %20, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %49 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %21, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %53 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %22, align 4
  %55 = call i32 @EDMA_TCD_CITER_CITER(i32 %54)
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %58 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %24, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %62 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %25, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %66 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %23, align 4
  %68 = call i32 @EDMA_TCD_BITER_BITER(i32 %67)
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %71 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %26, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %14
  %75 = load i32, i32* @EDMA_TCD_CSR_INT_MAJOR, align 4
  %76 = load i32, i32* %29, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %29, align 4
  br label %78

78:                                               ; preds = %74, %14
  %79 = load i32, i32* %27, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @EDMA_TCD_CSR_D_REQ, align 4
  %83 = load i32, i32* %29, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %29, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %28, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @EDMA_TCD_CSR_E_SG, align 4
  %90 = load i32, i32* %29, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %29, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %29, align 4
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %15, align 8
  %96 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @EDMA_TCD_CITER_CITER(i32) #1

declare dso_local i32 @EDMA_TCD_BITER_BITER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
