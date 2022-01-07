; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_write_context_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_write_context_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i64, i32, %struct.arm_smmu_cb* }
%struct.arm_smmu_cb = type { i32*, i32*, i32*, %struct.arm_smmu_cfg* }
%struct.arm_smmu_cfg = type { i64, i64, i64, i64, i32 }

@ARM_SMMU_CB_SCTLR = common dso_local global i32 0, align 4
@CBAR_TYPE_S2_TRANS = common dso_local global i64 0, align 8
@ARM_SMMU_V1 = common dso_local global i64 0, align 8
@ARM_SMMU_CTX_FMT_AARCH64 = common dso_local global i64 0, align 8
@CBA2R_VA64 = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_VMID16 = common dso_local global i32 0, align 4
@CBA2R_VMID16 = common dso_local global i32 0, align 4
@CBAR_TYPE = common dso_local global i32 0, align 4
@ARM_SMMU_V2 = common dso_local global i64 0, align 8
@CBAR_IRPTNDX = common dso_local global i32 0, align 4
@CBAR_S1_BPSHCFG = common dso_local global i32 0, align 4
@CBAR_S1_BPSHCFG_NSH = common dso_local global i64 0, align 8
@CBAR_S1_MEMATTR = common dso_local global i32 0, align 4
@CBAR_S1_MEMATTR_WB = common dso_local global i64 0, align 8
@CBAR_VMID = common dso_local global i32 0, align 4
@ARM_SMMU_CB_TCR2 = common dso_local global i32 0, align 4
@ARM_SMMU_CB_TCR = common dso_local global i32 0, align 4
@ARM_SMMU_CTX_FMT_AARCH32_S = common dso_local global i64 0, align 8
@ARM_SMMU_CB_CONTEXTIDR = common dso_local global i32 0, align 4
@ARM_SMMU_CB_TTBR0 = common dso_local global i32 0, align 4
@ARM_SMMU_CB_TTBR1 = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S1_MAIR0 = common dso_local global i32 0, align 4
@ARM_SMMU_CB_S1_MAIR1 = common dso_local global i32 0, align 4
@SCTLR_CFIE = common dso_local global i32 0, align 4
@SCTLR_CFRE = common dso_local global i32 0, align 4
@SCTLR_AFE = common dso_local global i32 0, align 4
@SCTLR_TRE = common dso_local global i32 0, align 4
@SCTLR_M = common dso_local global i32 0, align 4
@SCTLR_S1_ASIDPNE = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@SCTLR_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*, i32)* @arm_smmu_write_context_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_write_context_bank(%struct.arm_smmu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arm_smmu_cb*, align 8
  %8 = alloca %struct.arm_smmu_cfg*, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %10 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %9, i32 0, i32 2
  %11 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %11, i64 %13
  store %struct.arm_smmu_cb* %14, %struct.arm_smmu_cb** %7, align 8
  %15 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %15, i32 0, i32 3
  %17 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %16, align 8
  store %struct.arm_smmu_cfg* %17, %struct.arm_smmu_cfg** %8, align 8
  %18 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %19 = icmp ne %struct.arm_smmu_cfg* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ARM_SMMU_CB_SCTLR, align 4
  %24 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %21, i32 %22, i32 %23, i32 0)
  br label %255

25:                                               ; preds = %2
  %26 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CBAR_TYPE_S2_TRANS, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %33 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ARM_SMMU_V1, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %25
  %38 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %39 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH64, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @CBA2R_VA64, align 4
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %48 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ARM_SMMU_FEAT_VMID16, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* @CBA2R_VMID16, align 4
  %55 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %56 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @FIELD_PREP(i32 %54, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %46
  %62 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ARM_SMMU_GR1_CBA2R(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @arm_smmu_gr1_write(%struct.arm_smmu_device* %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %25
  %68 = load i32, i32* @CBAR_TYPE, align 4
  %69 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %70 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @FIELD_PREP(i32 %68, i64 %71)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %74 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ARM_SMMU_V2, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load i32, i32* @CBAR_IRPTNDX, align 4
  %80 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %81 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @FIELD_PREP(i32 %79, i64 %82)
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %78, %67
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* @CBAR_S1_BPSHCFG, align 4
  %91 = load i64, i64* @CBAR_S1_BPSHCFG_NSH, align 8
  %92 = call i32 @FIELD_PREP(i32 %90, i64 %91)
  %93 = load i32, i32* @CBAR_S1_MEMATTR, align 4
  %94 = load i64, i64* @CBAR_S1_MEMATTR_WB, align 8
  %95 = call i32 @FIELD_PREP(i32 %93, i64 %94)
  %96 = or i32 %92, %95
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %115

99:                                               ; preds = %86
  %100 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %101 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ARM_SMMU_FEAT_VMID16, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @CBAR_VMID, align 4
  %108 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %109 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @FIELD_PREP(i32 %107, i64 %110)
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %106, %99
  br label %115

115:                                              ; preds = %114, %89
  %116 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @ARM_SMMU_GR1_CBAR(i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @arm_smmu_gr1_write(%struct.arm_smmu_device* %116, i32 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %115
  %124 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %125 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ARM_SMMU_V1, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @ARM_SMMU_CB_TCR2, align 4
  %133 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %134 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %130, i32 %131, i32 %132, i32 %137)
  br label %139

139:                                              ; preds = %129, %123, %115
  %140 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @ARM_SMMU_CB_TCR, align 4
  %143 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %144 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %140, i32 %141, i32 %142, i32 %147)
  %149 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %150 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH32_S, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %180

154:                                              ; preds = %139
  %155 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @ARM_SMMU_CB_CONTEXTIDR, align 4
  %158 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %8, align 8
  %159 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %155, i32 %156, i32 %157, i32 %160)
  %162 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @ARM_SMMU_CB_TTBR0, align 4
  %165 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %166 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %162, i32 %163, i32 %164, i32 %169)
  %171 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @ARM_SMMU_CB_TTBR1, align 4
  %174 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %175 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %171, i32 %172, i32 %173, i32 %178)
  br label %203

180:                                              ; preds = %139
  %181 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @ARM_SMMU_CB_TTBR0, align 4
  %184 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %185 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device* %181, i32 %182, i32 %183, i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %180
  %193 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @ARM_SMMU_CB_TTBR1, align 4
  %196 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %197 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device* %193, i32 %194, i32 %195, i32 %200)
  br label %202

202:                                              ; preds = %192, %180
  br label %203

203:                                              ; preds = %202, %154
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %203
  %207 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @ARM_SMMU_CB_S1_MAIR0, align 4
  %210 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %211 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %207, i32 %208, i32 %209, i32 %214)
  %216 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @ARM_SMMU_CB_S1_MAIR1, align 4
  %219 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %7, align 8
  %220 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %216, i32 %217, i32 %218, i32 %223)
  br label %225

225:                                              ; preds = %206, %203
  %226 = load i32, i32* @SCTLR_CFIE, align 4
  %227 = load i32, i32* @SCTLR_CFRE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @SCTLR_AFE, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @SCTLR_TRE, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @SCTLR_M, align 4
  %234 = or i32 %232, %233
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %225
  %238 = load i32, i32* @SCTLR_S1_ASIDPNE, align 4
  %239 = load i32, i32* %5, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %237, %225
  %242 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %243 = call i64 @IS_ENABLED(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i32, i32* @SCTLR_E, align 4
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %245, %241
  %250 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @ARM_SMMU_CB_SCTLR, align 4
  %253 = load i32, i32* %5, align 4
  %254 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %250, i32 %251, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %249, %20
  ret void
}

declare dso_local i32 @arm_smmu_cb_write(%struct.arm_smmu_device*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @arm_smmu_gr1_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @ARM_SMMU_GR1_CBA2R(i32) #1

declare dso_local i32 @ARM_SMMU_GR1_CBAR(i32) #1

declare dso_local i32 @arm_smmu_cb_writeq(%struct.arm_smmu_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
