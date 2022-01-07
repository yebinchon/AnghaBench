; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_eq_ctx_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_eq_ctx_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qm_eqc = type { i32, i8*, i8*, i32 }
%struct.qm_aeqc = type { i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QM_HW_V1 = common dso_local global i64 0, align 8
@QM_EQE_AEQE_SIZE = common dso_local global i32 0, align 4
@QM_Q_DEPTH = common dso_local global i32 0, align 4
@QM_EQC_PHASE_SHIFT = common dso_local global i32 0, align 4
@QM_MB_CMD_EQC = common dso_local global i32 0, align 4
@QM_MB_CMD_AEQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*)* @qm_eq_ctx_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_eq_ctx_cfg(%struct.hisi_qm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qm_eqc*, align 8
  %6 = alloca %struct.qm_aeqc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %15 = call i32 @qm_init_eq_aeq_status(%struct.hisi_qm* %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qm_eqc* @kzalloc(i32 32, i32 %16)
  store %struct.qm_eqc* %17, %struct.qm_eqc** %5, align 8
  %18 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %19 = icmp ne %struct.qm_eqc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %138

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_map_single(%struct.device* %24, %struct.qm_eqc* %25, i32 32, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @dma_mapping_error(%struct.device* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %34 = call i32 @kfree(%struct.qm_eqc* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %138

37:                                               ; preds = %23
  %38 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %39 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @lower_32_bits(i32 %40)
  %42 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %43 = getelementptr inbounds %struct.qm_eqc, %struct.qm_eqc* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @upper_32_bits(i32 %46)
  %48 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %49 = getelementptr inbounds %struct.qm_eqc, %struct.qm_eqc* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %51 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QM_HW_V1, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load i32, i32* @QM_EQE_AEQE_SIZE, align 4
  %57 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %58 = getelementptr inbounds %struct.qm_eqc, %struct.qm_eqc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %37
  %60 = load i32, i32* @QM_Q_DEPTH, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* @QM_EQC_PHASE_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %66 = getelementptr inbounds %struct.qm_eqc, %struct.qm_eqc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %68 = load i32, i32* @QM_MB_CMD_EQC, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @qm_mb(%struct.hisi_qm* %67, i32 %68, i32 %69, i32 0, i32 0)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_unmap_single(%struct.device* %71, i32 %72, i32 32, i32 %73)
  %75 = load %struct.qm_eqc*, %struct.qm_eqc** %5, align 8
  %76 = call i32 @kfree(%struct.qm_eqc* %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %138

81:                                               ; preds = %59
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.qm_eqc* @kzalloc(i32 32, i32 %82)
  %84 = bitcast %struct.qm_eqc* %83 to %struct.qm_aeqc*
  store %struct.qm_aeqc* %84, %struct.qm_aeqc** %6, align 8
  %85 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %86 = icmp ne %struct.qm_aeqc* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %138

90:                                               ; preds = %81
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %93 = bitcast %struct.qm_aeqc* %92 to %struct.qm_eqc*
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_map_single(%struct.device* %91, %struct.qm_eqc* %93, i32 32, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @dma_mapping_error(%struct.device* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %90
  %101 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %102 = bitcast %struct.qm_aeqc* %101 to %struct.qm_eqc*
  %103 = call i32 @kfree(%struct.qm_eqc* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %138

106:                                              ; preds = %90
  %107 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %108 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @lower_32_bits(i32 %109)
  %111 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %112 = getelementptr inbounds %struct.qm_aeqc, %struct.qm_aeqc* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %114 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @upper_32_bits(i32 %115)
  %117 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %118 = getelementptr inbounds %struct.qm_aeqc, %struct.qm_aeqc* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @QM_Q_DEPTH, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* @QM_EQC_PHASE_SHIFT, align 4
  %122 = shl i32 1, %121
  %123 = or i32 %120, %122
  %124 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %125 = getelementptr inbounds %struct.qm_aeqc, %struct.qm_aeqc* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %127 = load i32, i32* @QM_MB_CMD_AEQC, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @qm_mb(%struct.hisi_qm* %126, i32 %127, i32 %128, i32 0, i32 0)
  store i32 %129, i32* %9, align 4
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @dma_unmap_single(%struct.device* %130, i32 %131, i32 32, i32 %132)
  %134 = load %struct.qm_aeqc*, %struct.qm_aeqc** %6, align 8
  %135 = bitcast %struct.qm_aeqc* %134 to %struct.qm_eqc*
  %136 = call i32 @kfree(%struct.qm_eqc* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %106, %100, %87, %79, %32, %20
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @qm_init_eq_aeq_status(%struct.hisi_qm*) #1

declare dso_local %struct.qm_eqc* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.qm_eqc*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(%struct.qm_eqc*) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @qm_mb(%struct.hisi_qm*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
