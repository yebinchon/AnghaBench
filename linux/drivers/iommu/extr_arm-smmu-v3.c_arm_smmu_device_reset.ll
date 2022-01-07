; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, %struct.TYPE_11__, i64, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.arm_smmu_cmdq_ent = type { i32 }

@ARM_SMMU_CR0 = common dso_local global i64 0, align 8
@CR0_SMMUEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SMMU currently enabled! Resetting...\0A\00", align 1
@disable_bypass = common dso_local global i64 0, align 8
@GBPA_ABORT = common dso_local global i32 0, align 4
@CR1_TABLE_SH = common dso_local global i32 0, align 4
@ARM_SMMU_SH_ISH = common dso_local global i32 0, align 4
@CR1_TABLE_OC = common dso_local global i32 0, align 4
@CR1_CACHE_WB = common dso_local global i32 0, align 4
@CR1_TABLE_IC = common dso_local global i32 0, align 4
@CR1_QUEUE_SH = common dso_local global i32 0, align 4
@CR1_QUEUE_OC = common dso_local global i32 0, align 4
@CR1_QUEUE_IC = common dso_local global i32 0, align 4
@ARM_SMMU_CR1 = common dso_local global i64 0, align 8
@CR2_PTM = common dso_local global i32 0, align 4
@CR2_RECINVSID = common dso_local global i32 0, align 4
@CR2_E2H = common dso_local global i32 0, align 4
@ARM_SMMU_CR2 = common dso_local global i64 0, align 8
@ARM_SMMU_STRTAB_BASE = common dso_local global i64 0, align 8
@ARM_SMMU_STRTAB_BASE_CFG = common dso_local global i64 0, align 8
@ARM_SMMU_CMDQ_BASE = common dso_local global i64 0, align 8
@ARM_SMMU_CMDQ_PROD = common dso_local global i64 0, align 8
@ARM_SMMU_CMDQ_CONS = common dso_local global i64 0, align 8
@CR0_CMDQEN = common dso_local global i32 0, align 4
@ARM_SMMU_CR0ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable command queue\0A\00", align 1
@CMDQ_OP_CFGI_ALL = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_HYP = common dso_local global i32 0, align 4
@CMDQ_OP_TLBI_EL2_ALL = common dso_local global i32 0, align 4
@CMDQ_OP_TLBI_NSNH_ALL = common dso_local global i32 0, align 4
@ARM_SMMU_EVTQ_BASE = common dso_local global i64 0, align 8
@ARM_SMMU_EVTQ_PROD = common dso_local global i32 0, align 4
@ARM_SMMU_EVTQ_CONS = common dso_local global i32 0, align 4
@CR0_EVTQEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to enable event queue\0A\00", align 1
@ARM_SMMU_FEAT_PRI = common dso_local global i32 0, align 4
@ARM_SMMU_PRIQ_BASE = common dso_local global i64 0, align 8
@ARM_SMMU_PRIQ_PROD = common dso_local global i32 0, align 4
@ARM_SMMU_PRIQ_CONS = common dso_local global i32 0, align 4
@CR0_PRIQEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to enable PRI queue\0A\00", align 1
@ARM_SMMU_FEAT_ATS = common dso_local global i32 0, align 4
@CR0_ATSCHK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable ATS check\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to setup irqs\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to enable SMMU interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*, i32)* @arm_smmu_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_device_reset(%struct.arm_smmu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_smmu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arm_smmu_cmdq_ent, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ARM_SMMU_CR0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CR0_SMMUEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %22 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = call i64 (...) @is_kdump_kernel()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64, i64* @disable_bypass, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i1 [ false, %20 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %36 = load i32, i32* @GBPA_ABORT, align 4
  %37 = call i32 @arm_smmu_update_gbpa(%struct.arm_smmu_device* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %40 = call i32 @arm_smmu_device_disable(%struct.arm_smmu_device* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %365

45:                                               ; preds = %38
  %46 = load i32, i32* @CR1_TABLE_SH, align 4
  %47 = load i32, i32* @ARM_SMMU_SH_ISH, align 4
  %48 = call i32 @FIELD_PREP(i32 %46, i32 %47)
  %49 = load i32, i32* @CR1_TABLE_OC, align 4
  %50 = load i32, i32* @CR1_CACHE_WB, align 4
  %51 = call i32 @FIELD_PREP(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* @CR1_TABLE_IC, align 4
  %54 = load i32, i32* @CR1_CACHE_WB, align 4
  %55 = call i32 @FIELD_PREP(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  %57 = load i32, i32* @CR1_QUEUE_SH, align 4
  %58 = load i32, i32* @ARM_SMMU_SH_ISH, align 4
  %59 = call i32 @FIELD_PREP(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  %61 = load i32, i32* @CR1_QUEUE_OC, align 4
  %62 = load i32, i32* @CR1_CACHE_WB, align 4
  %63 = call i32 @FIELD_PREP(i32 %61, i32 %62)
  %64 = or i32 %60, %63
  %65 = load i32, i32* @CR1_QUEUE_IC, align 4
  %66 = load i32, i32* @CR1_CACHE_WB, align 4
  %67 = call i32 @FIELD_PREP(i32 %65, i32 %66)
  %68 = or i32 %64, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %71 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ARM_SMMU_CR1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel_relaxed(i32 %69, i64 %74)
  %76 = load i32, i32* @CR2_PTM, align 4
  %77 = load i32, i32* @CR2_RECINVSID, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CR2_E2H, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %83 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ARM_SMMU_CR2, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel_relaxed(i32 %81, i64 %86)
  %88 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %89 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %93 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ARM_SMMU_STRTAB_BASE, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writeq_relaxed(i32 %91, i64 %96)
  %98 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %99 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %103 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ARM_SMMU_STRTAB_BASE_CFG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel_relaxed(i32 %101, i64 %106)
  %108 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %109 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %114 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ARM_SMMU_CMDQ_BASE, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writeq_relaxed(i32 %112, i64 %117)
  %119 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %120 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %126 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ARM_SMMU_CMDQ_PROD, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel_relaxed(i32 %124, i64 %129)
  %131 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %132 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %138 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ARM_SMMU_CMDQ_CONS, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel_relaxed(i32 %136, i64 %141)
  %143 = load i32, i32* @CR0_CMDQEN, align 4
  store i32 %143, i32* %8, align 4
  %144 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i64, i64* @ARM_SMMU_CR0, align 8
  %147 = load i32, i32* @ARM_SMMU_CR0ACK, align 4
  %148 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %144, i32 %145, i64 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %45
  %152 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %153 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %365

157:                                              ; preds = %45
  %158 = load i32, i32* @CMDQ_OP_CFGI_ALL, align 4
  %159 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %9, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %161 = call i32 @arm_smmu_cmdq_issue_cmd(%struct.arm_smmu_device* %160, %struct.arm_smmu_cmdq_ent* %9)
  %162 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %163 = call i32 @arm_smmu_cmdq_issue_sync(%struct.arm_smmu_device* %162)
  %164 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %165 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ARM_SMMU_FEAT_HYP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %157
  %171 = load i32, i32* @CMDQ_OP_TLBI_EL2_ALL, align 4
  %172 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %9, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %174 = call i32 @arm_smmu_cmdq_issue_cmd(%struct.arm_smmu_device* %173, %struct.arm_smmu_cmdq_ent* %9)
  br label %175

175:                                              ; preds = %170, %157
  %176 = load i32, i32* @CMDQ_OP_TLBI_NSNH_ALL, align 4
  %177 = getelementptr inbounds %struct.arm_smmu_cmdq_ent, %struct.arm_smmu_cmdq_ent* %9, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %179 = call i32 @arm_smmu_cmdq_issue_cmd(%struct.arm_smmu_device* %178, %struct.arm_smmu_cmdq_ent* %9)
  %180 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %181 = call i32 @arm_smmu_cmdq_issue_sync(%struct.arm_smmu_device* %180)
  %182 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %183 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %188 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @ARM_SMMU_EVTQ_BASE, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writeq_relaxed(i32 %186, i64 %191)
  %193 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %194 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @ARM_SMMU_EVTQ_PROD, align 4
  %200 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %201 = call i64 @arm_smmu_page1_fixup(i32 %199, %struct.arm_smmu_device* %200)
  %202 = call i32 @writel_relaxed(i32 %198, i64 %201)
  %203 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %204 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @ARM_SMMU_EVTQ_CONS, align 4
  %210 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %211 = call i64 @arm_smmu_page1_fixup(i32 %209, %struct.arm_smmu_device* %210)
  %212 = call i32 @writel_relaxed(i32 %208, i64 %211)
  %213 = load i32, i32* @CR0_EVTQEN, align 4
  %214 = load i32, i32* %8, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %8, align 4
  %216 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %217 = load i32, i32* %8, align 4
  %218 = load i64, i64* @ARM_SMMU_CR0, align 8
  %219 = load i32, i32* @ARM_SMMU_CR0ACK, align 4
  %220 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %216, i32 %217, i64 %218, i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %175
  %224 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %225 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @dev_err(i32 %226, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %228 = load i32, i32* %6, align 4
  store i32 %228, i32* %3, align 4
  br label %365

229:                                              ; preds = %175
  %230 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %231 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ARM_SMMU_FEAT_PRI, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %285

236:                                              ; preds = %229
  %237 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %238 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %243 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @ARM_SMMU_PRIQ_BASE, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @writeq_relaxed(i32 %241, i64 %246)
  %248 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %249 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ARM_SMMU_PRIQ_PROD, align 4
  %255 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %256 = call i64 @arm_smmu_page1_fixup(i32 %254, %struct.arm_smmu_device* %255)
  %257 = call i32 @writel_relaxed(i32 %253, i64 %256)
  %258 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %259 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @ARM_SMMU_PRIQ_CONS, align 4
  %265 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %266 = call i64 @arm_smmu_page1_fixup(i32 %264, %struct.arm_smmu_device* %265)
  %267 = call i32 @writel_relaxed(i32 %263, i64 %266)
  %268 = load i32, i32* @CR0_PRIQEN, align 4
  %269 = load i32, i32* %8, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %8, align 4
  %271 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i64, i64* @ARM_SMMU_CR0, align 8
  %274 = load i32, i32* @ARM_SMMU_CR0ACK, align 4
  %275 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %271, i32 %272, i64 %273, i32 %274)
  store i32 %275, i32* %6, align 4
  %276 = load i32, i32* %6, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %236
  %279 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %280 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @dev_err(i32 %281, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %283 = load i32, i32* %6, align 4
  store i32 %283, i32* %3, align 4
  br label %365

284:                                              ; preds = %236
  br label %285

285:                                              ; preds = %284, %229
  %286 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %287 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @ARM_SMMU_FEAT_ATS, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %285
  %293 = load i32, i32* @CR0_ATSCHK, align 4
  %294 = load i32, i32* %8, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %8, align 4
  %296 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load i64, i64* @ARM_SMMU_CR0, align 8
  %299 = load i32, i32* @ARM_SMMU_CR0ACK, align 4
  %300 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %296, i32 %297, i64 %298, i32 %299)
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %292
  %304 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %305 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @dev_err(i32 %306, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %308 = load i32, i32* %6, align 4
  store i32 %308, i32* %3, align 4
  br label %365

309:                                              ; preds = %292
  br label %310

310:                                              ; preds = %309, %285
  %311 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %312 = call i32 @arm_smmu_setup_irqs(%struct.arm_smmu_device* %311)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %317 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @dev_err(i32 %318, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %320 = load i32, i32* %6, align 4
  store i32 %320, i32* %3, align 4
  br label %365

321:                                              ; preds = %310
  %322 = call i64 (...) @is_kdump_kernel()
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = load i32, i32* @CR0_EVTQEN, align 4
  %326 = load i32, i32* @CR0_PRIQEN, align 4
  %327 = or i32 %325, %326
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %8, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %8, align 4
  br label %331

331:                                              ; preds = %324, %321
  %332 = load i32, i32* %5, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i64, i64* @disable_bypass, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %334, %331
  %338 = load i32, i32* @CR0_SMMUEN, align 4
  %339 = load i32, i32* %8, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %8, align 4
  br label %350

341:                                              ; preds = %334
  %342 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %343 = load i32, i32* @GBPA_ABORT, align 4
  %344 = call i32 @arm_smmu_update_gbpa(%struct.arm_smmu_device* %342, i32 0, i32 %343)
  store i32 %344, i32* %6, align 4
  %345 = load i32, i32* %6, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load i32, i32* %6, align 4
  store i32 %348, i32* %3, align 4
  br label %365

349:                                              ; preds = %341
  br label %350

350:                                              ; preds = %349, %337
  %351 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %352 = load i32, i32* %8, align 4
  %353 = load i64, i64* @ARM_SMMU_CR0, align 8
  %354 = load i32, i32* @ARM_SMMU_CR0ACK, align 4
  %355 = call i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device* %351, i32 %352, i64 %353, i32 %354)
  store i32 %355, i32* %6, align 4
  %356 = load i32, i32* %6, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %350
  %359 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %360 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @dev_err(i32 %361, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %363 = load i32, i32* %6, align 4
  store i32 %363, i32* %3, align 4
  br label %365

364:                                              ; preds = %350
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %364, %358, %347, %315, %303, %278, %223, %151, %43
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @arm_smmu_update_gbpa(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @arm_smmu_device_disable(%struct.arm_smmu_device*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writeq_relaxed(i32, i64) #1

declare dso_local i32 @arm_smmu_write_reg_sync(%struct.arm_smmu_device*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @arm_smmu_cmdq_issue_cmd(%struct.arm_smmu_device*, %struct.arm_smmu_cmdq_ent*) #1

declare dso_local i32 @arm_smmu_cmdq_issue_sync(%struct.arm_smmu_device*) #1

declare dso_local i64 @arm_smmu_page1_fixup(i32, %struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_setup_irqs(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
