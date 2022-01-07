; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_qp_ctx_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_qp_ctx_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { i32, i32, i32, %struct.hisi_qm* }
%struct.hisi_qm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qm_sqc = type { i32, i32, i8*, i32, i32 }
%struct.qm_cqc = type { i32, i32, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QM_HW_V1 = common dso_local global i32 0, align 4
@QM_Q_DEPTH = common dso_local global i8* null, align 8
@QM_HW_V2 = common dso_local global i32 0, align 4
@QM_MB_CMD_SQC = common dso_local global i32 0, align 4
@QM_CQ_PHASE_SHIFT = common dso_local global i32 0, align 4
@QM_CQ_FLAG_SHIFT = common dso_local global i32 0, align 4
@QM_MB_CMD_CQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qp*, i32, i32)* @qm_qp_ctx_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_qp_ctx_cfg(%struct.hisi_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hisi_qm*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qm_sqc*, align 8
  %12 = alloca %struct.qm_cqc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hisi_qp* %0, %struct.hisi_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %16, i32 0, i32 3
  %18 = load %struct.hisi_qm*, %struct.hisi_qm** %17, align 8
  store %struct.hisi_qm* %18, %struct.hisi_qm** %8, align 8
  %19 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %20 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %24 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %27 = call i32 @qm_init_qp_status(%struct.hisi_qp* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.qm_sqc* @kzalloc(i32 24, i32 %28)
  store %struct.qm_sqc* %29, %struct.qm_sqc** %11, align 8
  %30 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %31 = icmp ne %struct.qm_sqc* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %185

35:                                               ; preds = %3
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_map_single(%struct.device* %36, %struct.qm_sqc* %37, i32 24, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i64 @dma_mapping_error(%struct.device* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %46 = call i32 @kfree(%struct.qm_sqc* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %185

49:                                               ; preds = %35
  %50 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %51 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %52 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @INIT_QC_COMMON(%struct.qm_sqc* %50, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @QM_HW_V1, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %49
  %60 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %61 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @QM_MK_SQC_DW3_V1(i32 0, i32 0, i32 0, i32 %62)
  %64 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %65 = getelementptr inbounds %struct.qm_sqc, %struct.qm_sqc* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @QM_Q_DEPTH, align 8
  %67 = getelementptr i8, i8* %66, i64 -1
  %68 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %69 = getelementptr inbounds %struct.qm_sqc, %struct.qm_sqc* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %84

70:                                               ; preds = %49
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @QM_HW_V2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %76 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @QM_MK_SQC_DW3_V2(i32 %77)
  %79 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %80 = getelementptr inbounds %struct.qm_sqc, %struct.qm_sqc* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %82 = getelementptr inbounds %struct.qm_sqc, %struct.qm_sqc* %81, i32 0, i32 2
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %74, %70
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %87 = getelementptr inbounds %struct.qm_sqc, %struct.qm_sqc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %89 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @QM_MK_SQC_W13(i32 0, i32 1, i32 %90)
  %92 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %93 = getelementptr inbounds %struct.qm_sqc, %struct.qm_sqc* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %95 = load i32, i32* @QM_MB_CMD_SQC, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @qm_mb(%struct.hisi_qm* %94, i32 %95, i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.device*, %struct.device** %9, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @DMA_TO_DEVICE, align 4
  %102 = call i32 @dma_unmap_single(%struct.device* %99, i32 %100, i32 24, i32 %101)
  %103 = load %struct.qm_sqc*, %struct.qm_sqc** %11, align 8
  %104 = call i32 @kfree(%struct.qm_sqc* %103)
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %84
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  br label %185

109:                                              ; preds = %84
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.qm_sqc* @kzalloc(i32 24, i32 %110)
  %112 = bitcast %struct.qm_sqc* %111 to %struct.qm_cqc*
  store %struct.qm_cqc* %112, %struct.qm_cqc** %12, align 8
  %113 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %114 = icmp ne %struct.qm_cqc* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %185

118:                                              ; preds = %109
  %119 = load %struct.device*, %struct.device** %9, align 8
  %120 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %121 = bitcast %struct.qm_cqc* %120 to %struct.qm_sqc*
  %122 = load i32, i32* @DMA_TO_DEVICE, align 4
  %123 = call i32 @dma_map_single(%struct.device* %119, %struct.qm_sqc* %121, i32 24, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.device*, %struct.device** %9, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i64 @dma_mapping_error(%struct.device* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %118
  %129 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %130 = bitcast %struct.qm_cqc* %129 to %struct.qm_sqc*
  %131 = call i32 @kfree(%struct.qm_sqc* %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %185

134:                                              ; preds = %118
  %135 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %136 = bitcast %struct.qm_cqc* %135 to %struct.qm_sqc*
  %137 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %138 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @INIT_QC_COMMON(%struct.qm_sqc* %136, i32 %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @QM_HW_V1, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %134
  %146 = call i32 @QM_MK_CQC_DW3_V1(i32 0, i32 0, i32 0, i32 4)
  %147 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %148 = getelementptr inbounds %struct.qm_cqc, %struct.qm_cqc* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @QM_Q_DEPTH, align 8
  %150 = getelementptr i8, i8* %149, i64 -1
  %151 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %152 = getelementptr inbounds %struct.qm_cqc, %struct.qm_cqc* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %164

153:                                              ; preds = %134
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @QM_HW_V2, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = call i32 @QM_MK_CQC_DW3_V2(i32 4)
  %159 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %160 = getelementptr inbounds %struct.qm_cqc, %struct.qm_cqc* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %162 = getelementptr inbounds %struct.qm_cqc, %struct.qm_cqc* %161, i32 0, i32 2
  store i8* null, i8** %162, align 8
  br label %163

163:                                              ; preds = %157, %153
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i32, i32* @QM_CQ_PHASE_SHIFT, align 4
  %166 = shl i32 1, %165
  %167 = load i32, i32* @QM_CQ_FLAG_SHIFT, align 4
  %168 = shl i32 1, %167
  %169 = or i32 %166, %168
  %170 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %171 = getelementptr inbounds %struct.qm_cqc, %struct.qm_cqc* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.hisi_qm*, %struct.hisi_qm** %8, align 8
  %173 = load i32, i32* @QM_MB_CMD_CQC, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @qm_mb(%struct.hisi_qm* %172, i32 %173, i32 %174, i32 %175, i32 0)
  store i32 %176, i32* %15, align 4
  %177 = load %struct.device*, %struct.device** %9, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @DMA_TO_DEVICE, align 4
  %180 = call i32 @dma_unmap_single(%struct.device* %177, i32 %178, i32 24, i32 %179)
  %181 = load %struct.qm_cqc*, %struct.qm_cqc** %12, align 8
  %182 = bitcast %struct.qm_cqc* %181 to %struct.qm_sqc*
  %183 = call i32 @kfree(%struct.qm_sqc* %182)
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %164, %128, %115, %107, %44, %32
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @qm_init_qp_status(%struct.hisi_qp*) #1

declare dso_local %struct.qm_sqc* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.qm_sqc*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(%struct.qm_sqc*) #1

declare dso_local i32 @INIT_QC_COMMON(%struct.qm_sqc*, i32, i32) #1

declare dso_local i32 @QM_MK_SQC_DW3_V1(i32, i32, i32, i32) #1

declare dso_local i32 @QM_MK_SQC_DW3_V2(i32) #1

declare dso_local i32 @QM_MK_SQC_W13(i32, i32, i32) #1

declare dso_local i32 @qm_mb(%struct.hisi_qm*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @QM_MK_CQC_DW3_V1(i32, i32, i32, i32) #1

declare dso_local i32 @QM_MK_CQC_DW3_V2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
