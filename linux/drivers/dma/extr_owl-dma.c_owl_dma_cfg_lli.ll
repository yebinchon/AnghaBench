; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_cfg_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_cfg_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_dma_vchan = type { i32 }
%struct.owl_dma_lli = type { %struct.owl_dma_lli_hw }
%struct.owl_dma_lli_hw = type { i32, i32, i8*, i32, i64, i64, i8*, i8*, i64 }
%struct.dma_slave_config = type { i32, i32 }

@OWL_DMA_MODE_ST_DCU = common dso_local global i32 0, align 4
@OWL_DMA_MODE_DT_DCU = common dso_local global i32 0, align 4
@OWL_DMA_MODE_SAM_INC = common dso_local global i32 0, align 4
@OWL_DMA_MODE_DAM_INC = common dso_local global i32 0, align 4
@OWL_DMA_MODE_DT_DEV = common dso_local global i32 0, align 4
@OWL_DMA_MODE_DAM_CONST = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@OWL_DMA_MODE_NDDBW_8BIT = common dso_local global i32 0, align 4
@OWL_DMA_MODE_ST_DEV = common dso_local global i32 0, align 4
@OWL_DMA_MODE_SAM_CONST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OWL_DMA_LLC_SAV_LOAD_NEXT = common dso_local global i32 0, align 4
@OWL_DMA_LLC_DAV_LOAD_NEXT = common dso_local global i32 0, align 4
@OWL_DMA_INTCTL_BLOCK = common dso_local global i32 0, align 4
@OWL_DMA_INTCTL_SUPER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_dma_vchan*, %struct.owl_dma_lli*, i8*, i8*, i32, i32, %struct.dma_slave_config*, i32)* @owl_dma_cfg_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_dma_cfg_lli(%struct.owl_dma_vchan* %0, %struct.owl_dma_lli* %1, i8* %2, i8* %3, i32 %4, i32 %5, %struct.dma_slave_config* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.owl_dma_vchan*, align 8
  %11 = alloca %struct.owl_dma_lli*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dma_slave_config*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.owl_dma_lli_hw*, align 8
  %19 = alloca i32, align 4
  store %struct.owl_dma_vchan* %0, %struct.owl_dma_vchan** %10, align 8
  store %struct.owl_dma_lli* %1, %struct.owl_dma_lli** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.dma_slave_config* %6, %struct.dma_slave_config** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %11, align 8
  %21 = getelementptr inbounds %struct.owl_dma_lli, %struct.owl_dma_lli* %20, i32 0, i32 0
  store %struct.owl_dma_lli_hw* %21, %struct.owl_dma_lli_hw** %18, align 8
  %22 = call i32 @OWL_DMA_MODE_PW(i32 0)
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %15, align 4
  switch i32 %23, label %86 [
    i32 128, label %24
    i32 129, label %36
    i32 130, label %61
  ]

24:                                               ; preds = %8
  %25 = call i32 @OWL_DMA_MODE_TS(i32 0)
  %26 = load i32, i32* @OWL_DMA_MODE_ST_DCU, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OWL_DMA_MODE_DT_DCU, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @OWL_DMA_MODE_SAM_INC, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @OWL_DMA_MODE_DAM_INC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %19, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %19, align 4
  br label %89

36:                                               ; preds = %8
  %37 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %10, align 8
  %38 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @OWL_DMA_MODE_TS(i32 %39)
  %41 = load i32, i32* @OWL_DMA_MODE_ST_DCU, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @OWL_DMA_MODE_DT_DEV, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @OWL_DMA_MODE_SAM_INC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @OWL_DMA_MODE_DAM_CONST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %19, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %19, align 4
  %51 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %52 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load i32, i32* @OWL_DMA_MODE_NDDBW_8BIT, align 4
  %58 = load i32, i32* %19, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %19, align 4
  br label %60

60:                                               ; preds = %56, %36
  br label %89

61:                                               ; preds = %8
  %62 = load %struct.owl_dma_vchan*, %struct.owl_dma_vchan** %10, align 8
  %63 = getelementptr inbounds %struct.owl_dma_vchan, %struct.owl_dma_vchan* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @OWL_DMA_MODE_TS(i32 %64)
  %66 = load i32, i32* @OWL_DMA_MODE_ST_DEV, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @OWL_DMA_MODE_DT_DCU, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @OWL_DMA_MODE_SAM_CONST, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @OWL_DMA_MODE_DAM_INC, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %19, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %19, align 4
  %76 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %77 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %61
  %82 = load i32, i32* @OWL_DMA_MODE_NDDBW_8BIT, align 4
  %83 = load i32, i32* %19, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %81, %61
  br label %89

86:                                               ; preds = %8
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %127

89:                                               ; preds = %85, %60, %24
  %90 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %91 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %94 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %97 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %99 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %102 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %104 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %106 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @OWL_DMA_LLC_SAV_LOAD_NEXT, align 4
  %109 = load i32, i32* @OWL_DMA_LLC_DAV_LOAD_NEXT, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @llc_hw_ctrla(i32 %107, i32 %110)
  %112 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %113 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %89
  %117 = load i32, i32* @OWL_DMA_INTCTL_BLOCK, align 4
  %118 = call i8* @llc_hw_ctrlb(i32 %117)
  %119 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %120 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %126

121:                                              ; preds = %89
  %122 = load i32, i32* @OWL_DMA_INTCTL_SUPER_BLOCK, align 4
  %123 = call i8* @llc_hw_ctrlb(i32 %122)
  %124 = load %struct.owl_dma_lli_hw*, %struct.owl_dma_lli_hw** %18, align 8
  %125 = getelementptr inbounds %struct.owl_dma_lli_hw, %struct.owl_dma_lli_hw* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %121, %116
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %126, %86
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @OWL_DMA_MODE_PW(i32) #1

declare dso_local i32 @OWL_DMA_MODE_TS(i32) #1

declare dso_local i32 @llc_hw_ctrla(i32, i32) #1

declare dso_local i8* @llc_hw_ctrlb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
