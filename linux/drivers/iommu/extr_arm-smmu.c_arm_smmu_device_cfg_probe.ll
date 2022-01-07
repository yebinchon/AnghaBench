; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_cfg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_cfg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.arm_smmu_device = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i8*, i32, i32, i32*, i8* }
%struct.TYPE_3__ = type { {}* }

@ARM_SMMU_FEAT_COHERENT_WALK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"probing hardware configuration...\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SMMUv%d with:\0A\00", align 1
@ARM_SMMU_V2 = common dso_local global i64 0, align 8
@ARM_SMMU_GR0_ID0 = common dso_local global i32 0, align 4
@force_stage = common dso_local global i32 0, align 4
@ID0_S2TS = common dso_local global i32 0, align 4
@ID0_NTS = common dso_local global i32 0, align 4
@ID0_S1TS = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_TRANS_S1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\09stage 1 translation\0A\00", align 1
@ARM_SMMU_FEAT_TRANS_S2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"\09stage 2 translation\0A\00", align 1
@ARM_SMMU_FEAT_TRANS_NESTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"\09nested translation\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09no translation support!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ID0_ATOSNS = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_TRANS_OPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"\09address translation ops\0A\00", align 1
@ID0_CTTW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"\09%scoherent table walk\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"non-\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\09(IDR0.CTTW overridden by FW configuration)\0A\00", align 1
@ID0_EXIDS = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_EXIDS = common dso_local global i32 0, align 4
@ID0_NUMSIDB = common dso_local global i32 0, align 4
@ID0_SMS = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_STREAM_MATCH = common dso_local global i32 0, align 4
@ID0_NUMSMRG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"stream-matching supported, but no SMRs present!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"\09stream matching with %u register groups\00", align 1
@s2cr_init_val = common dso_local global i32 0, align 4
@ID0_PTFS_NO_AARCH32 = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_FMT_AARCH32_L = common dso_local global i32 0, align 4
@ID0_PTFS_NO_AARCH32S = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_FMT_AARCH32_S = common dso_local global i32 0, align 4
@ARM_SMMU_GR0_ID1 = common dso_local global i32 0, align 4
@ID1_PAGESIZE = common dso_local global i32 0, align 4
@ID1_NUMPAGENDXB = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [72 x i8] c"SMMU address space size (0x%x) differs from mapped region size (0x%x)!\0A\00", align 1
@ID1_NUMS2CB = common dso_local global i32 0, align 4
@ID1_NUMCB = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"impossible number of S2 context banks!\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"\09%u context banks (%u stage-2 only)\0A\00", align 1
@ARM_SMMU_GR0_ID2 = common dso_local global i32 0, align 4
@ID2_IAS = common dso_local global i32 0, align 4
@ID2_OAS = common dso_local global i32 0, align 4
@ID2_VMID16 = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_VMID16 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to set DMA mask for table walker\0A\00", align 1
@ARM_SMMU_V1_64K = common dso_local global i64 0, align 8
@ARM_SMMU_FEAT_FMT_AARCH64_64K = common dso_local global i32 0, align 4
@ID2_UBS = common dso_local global i32 0, align 4
@ID2_PTFS_4K = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_FMT_AARCH64_4K = common dso_local global i32 0, align 4
@ID2_PTFS_16K = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_FMT_AARCH64_16K = common dso_local global i32 0, align 4
@ID2_PTFS_64K = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@SZ_16M = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@SZ_16K = common dso_local global i32 0, align 4
@SZ_32M = common dso_local global i32 0, align 4
@SZ_512M = common dso_local global i32 0, align 4
@arm_smmu_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"\09Supported page sizes: 0x%08lx\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\09Stage-1: %lu-bit VA -> %lu-bit IPA\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\09Stage-2: %lu-bit IPA -> %lu-bit PA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_device_cfg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_device_cfg_probe(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %9 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %10 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ARM_SMMU_FEAT_COHERENT_WALK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, ...) @dev_notice(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %22 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ARM_SMMU_V2, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 1
  %28 = call i32 (i32, i8*, ...) @dev_notice(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %30 = load i32, i32* @ARM_SMMU_GR0_ID0, align 4
  %31 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @force_stage, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i32, i32* @ID0_S2TS, align 4
  %36 = load i32, i32* @ID0_NTS, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %1
  %42 = load i32, i32* @force_stage, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @ID0_S1TS, align 4
  %46 = load i32, i32* @ID0_NTS, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %41
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ID0_S1TS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* @ARM_SMMU_FEAT_TRANS_S1, align 4
  %59 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %60 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %64 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_notice(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %57, %52
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ID0_S2TS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* @ARM_SMMU_FEAT_TRANS_S2, align 4
  %74 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %75 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %79 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %78, i32 0, i32 13
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @dev_notice(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %72, %67
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ID0_NTS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i32, i32* @ARM_SMMU_FEAT_TRANS_NESTED, align 4
  %89 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %90 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %94 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @dev_notice(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %99 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ARM_SMMU_FEAT_TRANS_S1, align 4
  %102 = load i32, i32* @ARM_SMMU_FEAT_TRANS_S2, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %97
  %107 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %108 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %665

113:                                              ; preds = %97
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @ID0_S1TS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %120 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ARM_SMMU_V2, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ID0_ATOSNS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %124, %118
  %130 = load i32, i32* @ARM_SMMU_FEAT_TRANS_OPS, align 4
  %131 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %132 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %136 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @dev_notice(i32 %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %129, %124, %113
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @ID0_CTTW, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149, %139
  %153 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %154 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %160 = call i32 (i32, i8*, ...) @dev_notice(i32 %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %152, %149
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %167 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @dev_notice(i32 %168, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %161
  %171 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %172 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ARM_SMMU_V2, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @ID0_EXIDS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i32, i32* @ARM_SMMU_FEAT_EXIDS, align 4
  %183 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %184 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  store i32 65536, i32* %4, align 4
  br label %192

187:                                              ; preds = %176, %170
  %188 = load i32, i32* @ID0_NUMSIDB, align 4
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @FIELD_GET(i32 %188, i32 %189)
  %191 = shl i32 1, %190
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %187, %181
  %193 = load i32, i32* %4, align 4
  %194 = sub i32 %193, 1
  %195 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %196 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @ID0_SMS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %241

201:                                              ; preds = %192
  %202 = load i32, i32* @ARM_SMMU_FEAT_STREAM_MATCH, align 4
  %203 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %204 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* @ID0_NUMSMRG, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @FIELD_GET(i32 %207, i32 %208)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %201
  %213 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %214 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %213, i32 0, i32 13
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @dev_err(i32 %215, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %217 = load i32, i32* @ENODEV, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %665

219:                                              ; preds = %201
  %220 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %221 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call i8* @devm_kcalloc(i32 %222, i32 %223, i32 1, i32 %224)
  %226 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %227 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %226, i32 0, i32 18
  store i8* %225, i8** %227, align 8
  %228 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %229 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %228, i32 0, i32 18
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %219
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %2, align 4
  br label %665

235:                                              ; preds = %219
  %236 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %237 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %236, i32 0, i32 13
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %4, align 4
  %240 = call i32 (i32, i8*, ...) @dev_notice(i32 %238, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %235, %192
  %242 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %243 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %242, i32 0, i32 13
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @GFP_KERNEL, align 4
  %247 = call i32* @devm_kmalloc_array(i32 %244, i32 %245, i32 4, i32 %246)
  %248 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %249 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %248, i32 0, i32 17
  store i32* %247, i32** %249, align 8
  %250 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %251 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %250, i32 0, i32 17
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %241
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %2, align 4
  br label %665

257:                                              ; preds = %241
  store i32 0, i32* %8, align 4
  br label %258

258:                                              ; preds = %270, %257
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %4, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %258
  %263 = load i32, i32* @s2cr_init_val, align 4
  %264 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %265 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %264, i32 0, i32 17
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %263, i32* %269, align 4
  br label %270

270:                                              ; preds = %262
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %8, align 4
  br label %258

273:                                              ; preds = %258
  %274 = load i32, i32* %4, align 4
  %275 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %276 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %275, i32 0, i32 3
  store i32 %274, i32* %276, align 4
  %277 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %278 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %277, i32 0, i32 16
  %279 = call i32 @mutex_init(i32* %278)
  %280 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %281 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %280, i32 0, i32 15
  %282 = call i32 @spin_lock_init(i32* %281)
  %283 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %284 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @ARM_SMMU_V2, align 8
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %293, label %288

288:                                              ; preds = %273
  %289 = load i32, i32* %5, align 4
  %290 = load i32, i32* @ID0_PTFS_NO_AARCH32, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %310, label %293

293:                                              ; preds = %288, %273
  %294 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH32_L, align 4
  %295 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %296 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* @ID0_PTFS_NO_AARCH32S, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %293
  %304 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH32_S, align 4
  %305 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %306 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %303, %293
  br label %310

310:                                              ; preds = %309, %288
  %311 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %312 = load i32, i32* @ARM_SMMU_GR0_ID1, align 4
  %313 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %311, i32 %312)
  store i32 %313, i32* %5, align 4
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* @ID1_PAGESIZE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 16, i32 12
  %320 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %321 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 8
  %322 = load i32, i32* @ID1_NUMPAGENDXB, align 4
  %323 = load i32, i32* %5, align 4
  %324 = call i32 @FIELD_GET(i32 %322, i32 %323)
  %325 = add i32 %324, 1
  %326 = shl i32 1, %325
  store i32 %326, i32* %4, align 4
  %327 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %328 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %4, align 4
  %331 = mul i32 2, %330
  %332 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %333 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = shl i32 %331, %334
  %336 = icmp ne i32 %329, %335
  br i1 %336, label %337, label %351

337:                                              ; preds = %310
  %338 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %339 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* %4, align 4
  %342 = mul i32 2, %341
  %343 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %344 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = shl i32 %342, %345
  %347 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %348 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i32, i8*, ...) @dev_warn(i32 %340, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i32 %346, i32 %349)
  br label %351

351:                                              ; preds = %337, %310
  %352 = load i32, i32* %4, align 4
  %353 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %354 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %353, i32 0, i32 5
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* @ID1_NUMS2CB, align 4
  %356 = load i32, i32* %5, align 4
  %357 = call i32 @FIELD_GET(i32 %355, i32 %356)
  %358 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %359 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %358, i32 0, i32 6
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @ID1_NUMCB, align 4
  %361 = load i32, i32* %5, align 4
  %362 = call i32 @FIELD_GET(i32 %360, i32 %361)
  %363 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %364 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %363, i32 0, i32 7
  store i32 %362, i32* %364, align 4
  %365 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %366 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %369 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 4
  %371 = icmp ugt i32 %367, %370
  br i1 %371, label %372, label %379

372:                                              ; preds = %351
  %373 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %374 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %373, i32 0, i32 13
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @dev_err(i32 %375, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %377 = load i32, i32* @ENODEV, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %2, align 4
  br label %665

379:                                              ; preds = %351
  %380 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %381 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %380, i32 0, i32 13
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %384 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %387 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (i32, i8*, ...) @dev_notice(i32 %382, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %385, i32 %388)
  %390 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %391 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %390, i32 0, i32 13
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %394 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %393, i32 0, i32 7
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @GFP_KERNEL, align 4
  %397 = call i8* @devm_kcalloc(i32 %392, i32 %395, i32 1, i32 %396)
  %398 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %399 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %398, i32 0, i32 14
  store i8* %397, i8** %399, align 8
  %400 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %401 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %400, i32 0, i32 14
  %402 = load i8*, i8** %401, align 8
  %403 = icmp ne i8* %402, null
  br i1 %403, label %407, label %404

404:                                              ; preds = %379
  %405 = load i32, i32* @ENOMEM, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %2, align 4
  br label %665

407:                                              ; preds = %379
  %408 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %409 = load i32, i32* @ARM_SMMU_GR0_ID2, align 4
  %410 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %408, i32 %409)
  store i32 %410, i32* %5, align 4
  %411 = load i32, i32* @ID2_IAS, align 4
  %412 = load i32, i32* %5, align 4
  %413 = call i32 @FIELD_GET(i32 %411, i32 %412)
  %414 = call i8* @arm_smmu_id_size_to_bits(i32 %413)
  %415 = ptrtoint i8* %414 to i32
  store i32 %415, i32* %4, align 4
  %416 = load i32, i32* %4, align 4
  %417 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %418 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %417, i32 0, i32 8
  store i32 %416, i32* %418, align 8
  %419 = load i32, i32* @ID2_OAS, align 4
  %420 = load i32, i32* %5, align 4
  %421 = call i32 @FIELD_GET(i32 %419, i32 %420)
  %422 = call i8* @arm_smmu_id_size_to_bits(i32 %421)
  %423 = ptrtoint i8* %422 to i32
  store i32 %423, i32* %4, align 4
  %424 = load i32, i32* %4, align 4
  %425 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %426 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %425, i32 0, i32 9
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* %5, align 4
  %428 = load i32, i32* @ID2_VMID16, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %407
  %432 = load i32, i32* @ARM_SMMU_FEAT_VMID16, align 4
  %433 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %434 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %435, %432
  store i32 %436, i32* %434, align 8
  br label %437

437:                                              ; preds = %431, %407
  %438 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %439 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %438, i32 0, i32 13
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %4, align 4
  %442 = call i32 @DMA_BIT_MASK(i32 %441)
  %443 = call i64 @dma_set_mask_and_coherent(i32 %440, i32 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %437
  %446 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %447 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %446, i32 0, i32 13
  %448 = load i32, i32* %447, align 8
  %449 = call i32 (i32, i8*, ...) @dev_warn(i32 %448, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  br label %450

450:                                              ; preds = %445, %437
  %451 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %452 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @ARM_SMMU_V2, align 8
  %455 = icmp slt i64 %453, %454
  br i1 %455, label %456, label %474

456:                                              ; preds = %450
  %457 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %458 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %457, i32 0, i32 8
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %461 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %460, i32 0, i32 10
  store i32 %459, i32* %461, align 8
  %462 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %463 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @ARM_SMMU_V1_64K, align 8
  %466 = icmp eq i64 %464, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %456
  %468 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_64K, align 4
  %469 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %470 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 8
  br label %473

473:                                              ; preds = %467, %456
  br label %516

474:                                              ; preds = %450
  %475 = load i32, i32* @ID2_UBS, align 4
  %476 = load i32, i32* %5, align 4
  %477 = call i32 @FIELD_GET(i32 %475, i32 %476)
  store i32 %477, i32* %4, align 4
  %478 = load i32, i32* %4, align 4
  %479 = call i8* @arm_smmu_id_size_to_bits(i32 %478)
  %480 = ptrtoint i8* %479 to i32
  %481 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %482 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %481, i32 0, i32 10
  store i32 %480, i32* %482, align 8
  %483 = load i32, i32* %5, align 4
  %484 = load i32, i32* @ID2_PTFS_4K, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %474
  %488 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_4K, align 4
  %489 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %490 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = or i32 %491, %488
  store i32 %492, i32* %490, align 8
  br label %493

493:                                              ; preds = %487, %474
  %494 = load i32, i32* %5, align 4
  %495 = load i32, i32* @ID2_PTFS_16K, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %493
  %499 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_16K, align 4
  %500 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %501 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = or i32 %502, %499
  store i32 %503, i32* %501, align 8
  br label %504

504:                                              ; preds = %498, %493
  %505 = load i32, i32* %5, align 4
  %506 = load i32, i32* @ID2_PTFS_64K, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %515

509:                                              ; preds = %504
  %510 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_64K, align 4
  %511 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %512 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = or i32 %513, %510
  store i32 %514, i32* %512, align 8
  br label %515

515:                                              ; preds = %509, %504
  br label %516

516:                                              ; preds = %515, %473
  %517 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %518 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH32_S, align 4
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %535

523:                                              ; preds = %516
  %524 = load i32, i32* @SZ_4K, align 4
  %525 = load i32, i32* @SZ_64K, align 4
  %526 = or i32 %524, %525
  %527 = load i32, i32* @SZ_1M, align 4
  %528 = or i32 %526, %527
  %529 = load i32, i32* @SZ_16M, align 4
  %530 = or i32 %528, %529
  %531 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %532 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %531, i32 0, i32 11
  %533 = load i32, i32* %532, align 4
  %534 = or i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %523, %516
  %536 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %537 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH32_L, align 4
  %540 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_4K, align 4
  %541 = or i32 %539, %540
  %542 = and i32 %538, %541
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %554

544:                                              ; preds = %535
  %545 = load i32, i32* @SZ_4K, align 4
  %546 = load i32, i32* @SZ_2M, align 4
  %547 = or i32 %545, %546
  %548 = load i32, i32* @SZ_1G, align 4
  %549 = or i32 %547, %548
  %550 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %551 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %550, i32 0, i32 11
  %552 = load i32, i32* %551, align 4
  %553 = or i32 %552, %549
  store i32 %553, i32* %551, align 4
  br label %554

554:                                              ; preds = %544, %535
  %555 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %556 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_16K, align 4
  %559 = and i32 %557, %558
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %569

561:                                              ; preds = %554
  %562 = load i32, i32* @SZ_16K, align 4
  %563 = load i32, i32* @SZ_32M, align 4
  %564 = or i32 %562, %563
  %565 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %566 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %565, i32 0, i32 11
  %567 = load i32, i32* %566, align 4
  %568 = or i32 %567, %564
  store i32 %568, i32* %566, align 4
  br label %569

569:                                              ; preds = %561, %554
  %570 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %571 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* @ARM_SMMU_FEAT_FMT_AARCH64_64K, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %584

576:                                              ; preds = %569
  %577 = load i32, i32* @SZ_64K, align 4
  %578 = load i32, i32* @SZ_512M, align 4
  %579 = or i32 %577, %578
  %580 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %581 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %580, i32 0, i32 11
  %582 = load i32, i32* %581, align 4
  %583 = or i32 %582, %579
  store i32 %583, i32* %581, align 4
  br label %584

584:                                              ; preds = %576, %569
  %585 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arm_smmu_ops, i32 0, i32 0), align 8
  %586 = icmp eq i64 %585, -1
  br i1 %586, label %587, label %592

587:                                              ; preds = %584
  %588 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %589 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %588, i32 0, i32 11
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  store i64 %591, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arm_smmu_ops, i32 0, i32 0), align 8
  br label %599

592:                                              ; preds = %584
  %593 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %594 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %593, i32 0, i32 11
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arm_smmu_ops, i32 0, i32 0), align 8
  %598 = or i64 %597, %596
  store i64 %598, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arm_smmu_ops, i32 0, i32 0), align 8
  br label %599

599:                                              ; preds = %592, %587
  %600 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %601 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %600, i32 0, i32 13
  %602 = load i32, i32* %601, align 8
  %603 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %604 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %603, i32 0, i32 11
  %605 = load i32, i32* %604, align 4
  %606 = call i32 (i32, i8*, ...) @dev_notice(i32 %602, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %605)
  %607 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %608 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = load i32, i32* @ARM_SMMU_FEAT_TRANS_S1, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %624

613:                                              ; preds = %599
  %614 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %615 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %614, i32 0, i32 13
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %618 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %617, i32 0, i32 10
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %621 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %620, i32 0, i32 8
  %622 = load i32, i32* %621, align 8
  %623 = call i32 (i32, i8*, ...) @dev_notice(i32 %616, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %619, i32 %622)
  br label %624

624:                                              ; preds = %613, %599
  %625 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %626 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = load i32, i32* @ARM_SMMU_FEAT_TRANS_S2, align 4
  %629 = and i32 %627, %628
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %642

631:                                              ; preds = %624
  %632 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %633 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %632, i32 0, i32 13
  %634 = load i32, i32* %633, align 8
  %635 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %636 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %635, i32 0, i32 8
  %637 = load i32, i32* %636, align 8
  %638 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %639 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %638, i32 0, i32 9
  %640 = load i32, i32* %639, align 4
  %641 = call i32 (i32, i8*, ...) @dev_notice(i32 %634, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %637, i32 %640)
  br label %642

642:                                              ; preds = %631, %624
  %643 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %644 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %643, i32 0, i32 12
  %645 = load %struct.TYPE_3__*, %struct.TYPE_3__** %644, align 8
  %646 = icmp ne %struct.TYPE_3__* %645, null
  br i1 %646, label %647, label %664

647:                                              ; preds = %642
  %648 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %649 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %648, i32 0, i32 12
  %650 = load %struct.TYPE_3__*, %struct.TYPE_3__** %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %650, i32 0, i32 0
  %652 = bitcast {}** %651 to i32 (%struct.arm_smmu_device*)**
  %653 = load i32 (%struct.arm_smmu_device*)*, i32 (%struct.arm_smmu_device*)** %652, align 8
  %654 = icmp ne i32 (%struct.arm_smmu_device*)* %653, null
  br i1 %654, label %655, label %664

655:                                              ; preds = %647
  %656 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %657 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %656, i32 0, i32 12
  %658 = load %struct.TYPE_3__*, %struct.TYPE_3__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %658, i32 0, i32 0
  %660 = bitcast {}** %659 to i32 (%struct.arm_smmu_device*)**
  %661 = load i32 (%struct.arm_smmu_device*)*, i32 (%struct.arm_smmu_device*)** %660, align 8
  %662 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %663 = call i32 %661(%struct.arm_smmu_device* %662)
  store i32 %663, i32* %2, align 4
  br label %665

664:                                              ; preds = %647, %642
  store i32 0, i32* %2, align 4
  br label %665

665:                                              ; preds = %664, %655, %404, %372, %254, %232, %212, %106
  %666 = load i32, i32* %2, align 4
  ret i32 %666
}

declare dso_local i32 @dev_notice(i32, i8*, ...) #1

declare dso_local i32 @arm_smmu_gr0_read(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32* @devm_kmalloc_array(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i8* @arm_smmu_id_size_to_bits(i32) #1

declare dso_local i64 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
