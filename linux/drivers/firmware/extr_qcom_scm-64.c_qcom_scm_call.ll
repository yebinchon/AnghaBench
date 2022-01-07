; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c_qcom_scm_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c_qcom_scm_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i32, i64* }
%struct.arm_smccc_res = type { i64 }
%struct.arm_smccc_quirk = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@FIRST_EXT_ARG_IDX = common dso_local global i64 0, align 8
@ARM_SMCCC_QUIRK_QCOM_A6 = common dso_local global i32 0, align 4
@N_REGISTER_ARGS = common dso_local global i32 0, align 4
@N_EXT_QCOM_SCM_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_smccc_convention = common dso_local global i64 0, align 8
@ARM_SMCCC_SMC_32 = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@qcom_scm_lock = common dso_local global i32 0, align 4
@ARM_SMCCC_STD_CALL = common dso_local global i32 0, align 4
@ARM_SMCCC_OWNER_SIP = common dso_local global i32 0, align 4
@QCOM_SCM_INTERRUPTED = common dso_local global i64 0, align 8
@QCOM_SCM_V2_EBUSY = common dso_local global i64 0, align 8
@QCOM_SCM_EBUSY_MAX_RETRY = common dso_local global i32 0, align 4
@QCOM_SCM_EBUSY_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, %struct.qcom_scm_desc*, %struct.arm_smccc_res*)* @qcom_scm_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_scm_call(%struct.device* %0, i32 %1, i32 %2, %struct.qcom_scm_desc* %3, %struct.arm_smccc_res* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qcom_scm_desc*, align 8
  %11 = alloca %struct.arm_smccc_res*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.arm_smccc_quirk, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.qcom_scm_desc* %3, %struct.qcom_scm_desc** %10, align 8
  store %struct.arm_smccc_res* %4, %struct.arm_smccc_res** %11, align 8
  %24 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %25 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 15
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @QCOM_SCM_FNID(i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %32 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @FIRST_EXT_ARG_IDX, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %37 = getelementptr inbounds %struct.arm_smccc_quirk, %struct.arm_smccc_quirk* %21, i32 0, i32 0
  %38 = bitcast %struct.TYPE_2__* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 8, i1 false)
  %39 = getelementptr inbounds %struct.arm_smccc_quirk, %struct.arm_smccc_quirk* %21, i32 0, i32 1
  %40 = load i32, i32* @ARM_SMCCC_QUIRK_QCOM_A6, align 4
  store i32 %40, i32* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @N_REGISTER_ARGS, align 4
  %43 = icmp sgt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %133

47:                                               ; preds = %5
  %48 = load i32, i32* @N_EXT_QCOM_SCM_ARGS, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  store i64 %50, i64* %20, align 8
  %51 = load i64, i64* %20, align 8
  %52 = call i32 @PAGE_ALIGN(i64 %51)
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kzalloc(i32 %52, i32 %53)
  store i8* %54, i8** %19, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %230

60:                                               ; preds = %47
  %61 = load i64, i64* @qcom_smccc_convention, align 8
  %62 = load i64, i64* @ARM_SMCCC_SMC_32, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = load i8*, i8** %19, align 8
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %22, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %86, %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @N_EXT_QCOM_SCM_ARGS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %73 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @FIRST_EXT_ARG_IDX, align 8
  %78 = add i64 %76, %77
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @cpu_to_le32(i64 %80)
  %82 = load i32*, i32** %22, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %67

89:                                               ; preds = %67
  br label %116

90:                                               ; preds = %60
  %91 = load i8*, i8** %19, align 8
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %23, align 8
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %112, %90
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @N_EXT_QCOM_SCM_ARGS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %99 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @FIRST_EXT_ARG_IDX, align 8
  %104 = add i64 %102, %103
  %105 = getelementptr inbounds i64, i64* %100, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @cpu_to_le64(i64 %106)
  %108 = load i32*, i32** %23, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %93

115:                                              ; preds = %93
  br label %116

116:                                              ; preds = %115, %89
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load i32, i32* @DMA_TO_DEVICE, align 4
  %121 = call i64 @dma_map_single(%struct.device* %117, i8* %118, i64 %119, i32 %120)
  store i64 %121, i64* %18, align 8
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i64 @dma_mapping_error(%struct.device* %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i8*, i8** %19, align 8
  %128 = call i32 @kfree(i8* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %230

131:                                              ; preds = %116
  %132 = load i64, i64* %18, align 8
  store i64 %132, i64* %17, align 8
  br label %133

133:                                              ; preds = %131, %5
  br label %134

134:                                              ; preds = %202, %133
  %135 = call i32 @mutex_lock(i32* @qcom_scm_lock)
  %136 = load i32, i32* @ARM_SMCCC_STD_CALL, align 4
  %137 = load i64, i64* @qcom_smccc_convention, align 8
  %138 = load i32, i32* @ARM_SMCCC_OWNER_SIP, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @ARM_SMCCC_CALL_VAL(i32 %136, i64 %137, i32 %138, i32 %139)
  store i64 %140, i64* %16, align 8
  %141 = getelementptr inbounds %struct.arm_smccc_quirk, %struct.arm_smccc_quirk* %21, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %179, %134
  %144 = load i64, i64* %16, align 8
  %145 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %146 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %149 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %154 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.qcom_scm_desc*, %struct.qcom_scm_desc** %10, align 8
  %159 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds %struct.arm_smccc_quirk, %struct.arm_smccc_quirk* %21, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %168 = call i32 @arm_smccc_smc_quirk(i64 %144, i32 %147, i64 %152, i64 %157, i64 %162, i64 %163, i64 %166, i32 0, %struct.arm_smccc_res* %167, %struct.arm_smccc_quirk* %21)
  %169 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %170 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @QCOM_SCM_INTERRUPTED, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %143
  %175 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %176 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %16, align 8
  br label %178

178:                                              ; preds = %174, %143
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %181 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @QCOM_SCM_INTERRUPTED, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %143, label %185

185:                                              ; preds = %179
  %186 = call i32 @mutex_unlock(i32* @qcom_scm_lock)
  %187 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %188 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @QCOM_SCM_V2_EBUSY, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %185
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* @QCOM_SCM_EBUSY_MAX_RETRY, align 4
  %196 = icmp sgt i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %208

198:                                              ; preds = %192
  %199 = load i32, i32* @QCOM_SCM_EBUSY_WAIT_MS, align 4
  %200 = call i32 @msleep(i32 %199)
  br label %201

201:                                              ; preds = %198, %185
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %204 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @QCOM_SCM_V2_EBUSY, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %134, label %208

208:                                              ; preds = %202, %197
  %209 = load i8*, i8** %19, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load %struct.device*, %struct.device** %7, align 8
  %213 = load i64, i64* %18, align 8
  %214 = load i64, i64* %20, align 8
  %215 = load i32, i32* @DMA_TO_DEVICE, align 4
  %216 = call i32 @dma_unmap_single(%struct.device* %212, i64 %213, i64 %214, i32 %215)
  %217 = load i8*, i8** %19, align 8
  %218 = call i32 @kfree(i8* %217)
  br label %219

219:                                              ; preds = %211, %208
  %220 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %221 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %11, align 8
  %226 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @qcom_scm_remap_error(i64 %227)
  store i32 %228, i32* %6, align 4
  br label %230

229:                                              ; preds = %219
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %229, %224, %126, %57
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @QCOM_SCM_FNID(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ARM_SMCCC_CALL_VAL(i32, i64, i32, i32) #1

declare dso_local i32 @arm_smccc_smc_quirk(i64, i32, i64, i64, i64, i64, i64, i32, %struct.arm_smccc_res*, %struct.arm_smccc_quirk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @qcom_scm_remap_error(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
