; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_config_eqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_config_eqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.hns_roce_eq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_eq_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ROCEE_VF_EQ_DB_CFG0_REG = common dso_local global i64 0, align 8
@HNS_ROCE_V2_EQ_OVER_IGNORE_0 = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_COALESCE_0 = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_ALWAYS_ARMED = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQ_ST_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQ_ST_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_STATE_VALID = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_HOP_NUM_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_HOP_NUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_OVER_IGNORE_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_OVER_IGNORE_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_COALESCE_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_COALESCE_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_ARM_ST_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_ARM_ST_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQN_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQN_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQE_CNT_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQE_CNT_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_INIT_EQE_CNT = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_BA_PG_SZ_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_BA_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_PROD_INDX_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_PROD_INDX_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_INIT_PROD_IDX = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_MAX_CNT_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_MAX_CNT_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_PERIOD_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_PERIOD_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_REPORT_TIMER_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_REPORT_TIMER_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_INIT_REPORT_TIMER = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQE_BA_L_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQE_BA_L_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQE_BA_H_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_EQE_BA_H_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_SHIFT_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_SHIFT_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_MSI_INDX_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_MSI_INDX_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_INIT_MSI_IDX = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CUR_EQE_BA_L_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CUR_EQE_BA_L_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CUR_EQE_BA_M_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CUR_EQE_BA_M_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CUR_EQE_BA_H_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CUR_EQE_BA_H_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CONS_INDX_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_CONS_INDX_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_INIT_CONS_IDX = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_NXT_EQE_BA_L_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_NXT_EQE_BA_L_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_NXT_EQE_BA_H_M = common dso_local global i32 0, align 4
@HNS_ROCE_EQC_NXT_EQE_BA_H_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_eq*, i8*)* @hns_roce_config_eqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_config_eqc(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1, i8* %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_eq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hns_roce_eq_context*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.hns_roce_eq_context*
  store %struct.hns_roce_eq_context* %9, %struct.hns_roce_eq_context** %7, align 8
  %10 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %11 = call i32 @memset(%struct.hns_roce_eq_context* %10, i32 0, i32 44)
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ROCEE_VF_EQ_DB_CFG0_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %17, i32 0, i32 17
  store i64 %16, i64* %18, align 8
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %24 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %26 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %25, i32 0, i32 16
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @HNS_ROCE_V2_EQ_OVER_IGNORE_0, align 4
  %28 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %29 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @HNS_ROCE_V2_EQ_COALESCE_0, align 4
  %31 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %32 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @HNS_ROCE_V2_EQ_ALWAYS_ARMED, align 4
  %34 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %47 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %49 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %48, i32 0, i32 15
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ilog2(i32 %51)
  %53 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %54 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %56 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %3
  %60 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %61 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %60, i32 0, i32 14
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %66 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  br label %73

67:                                               ; preds = %3
  %68 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %69 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %72 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %75 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HNS_ROCE_EQC_EQ_ST_M, align 4
  %78 = load i32, i32* @HNS_ROCE_EQC_EQ_ST_S, align 4
  %79 = load i32, i32* @HNS_ROCE_V2_EQ_STATE_VALID, align 4
  %80 = call i32 @roce_set_field(i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %82 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HNS_ROCE_EQC_HOP_NUM_M, align 4
  %85 = load i32, i32* @HNS_ROCE_EQC_HOP_NUM_S, align 4
  %86 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %87 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @roce_set_field(i32 %83, i32 %84, i32 %85, i32 %88)
  %90 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %91 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HNS_ROCE_EQC_OVER_IGNORE_M, align 4
  %94 = load i32, i32* @HNS_ROCE_EQC_OVER_IGNORE_S, align 4
  %95 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %96 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @roce_set_field(i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %100 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @HNS_ROCE_EQC_COALESCE_M, align 4
  %103 = load i32, i32* @HNS_ROCE_EQC_COALESCE_S, align 4
  %104 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %105 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @roce_set_field(i32 %101, i32 %102, i32 %103, i32 %106)
  %108 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %109 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HNS_ROCE_EQC_ARM_ST_M, align 4
  %112 = load i32, i32* @HNS_ROCE_EQC_ARM_ST_S, align 4
  %113 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %114 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @roce_set_field(i32 %110, i32 %111, i32 %112, i32 %115)
  %117 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %118 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @HNS_ROCE_EQC_EQN_M, align 4
  %121 = load i32, i32* @HNS_ROCE_EQC_EQN_S, align 4
  %122 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %123 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @roce_set_field(i32 %119, i32 %120, i32 %121, i32 %124)
  %126 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %127 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HNS_ROCE_EQC_EQE_CNT_M, align 4
  %130 = load i32, i32* @HNS_ROCE_EQC_EQE_CNT_S, align 4
  %131 = load i32, i32* @HNS_ROCE_EQ_INIT_EQE_CNT, align 4
  %132 = call i32 @roce_set_field(i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %134 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @HNS_ROCE_EQC_BA_PG_SZ_M, align 4
  %137 = load i32, i32* @HNS_ROCE_EQC_BA_PG_SZ_S, align 4
  %138 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %139 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i32 @roce_set_field(i32 %135, i32 %136, i32 %137, i32 %142)
  %144 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %145 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @HNS_ROCE_EQC_BUF_PG_SZ_M, align 4
  %148 = load i32, i32* @HNS_ROCE_EQC_BUF_PG_SZ_S, align 4
  %149 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %150 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %153 = add nsw i32 %151, %152
  %154 = call i32 @roce_set_field(i32 %146, i32 %147, i32 %148, i32 %153)
  %155 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %156 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @HNS_ROCE_EQC_PROD_INDX_M, align 4
  %159 = load i32, i32* @HNS_ROCE_EQC_PROD_INDX_S, align 4
  %160 = load i32, i32* @HNS_ROCE_EQ_INIT_PROD_IDX, align 4
  %161 = call i32 @roce_set_field(i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %163 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @HNS_ROCE_EQC_MAX_CNT_M, align 4
  %166 = load i32, i32* @HNS_ROCE_EQC_MAX_CNT_S, align 4
  %167 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %168 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @roce_set_field(i32 %164, i32 %165, i32 %166, i32 %169)
  %171 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %172 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @HNS_ROCE_EQC_PERIOD_M, align 4
  %175 = load i32, i32* @HNS_ROCE_EQC_PERIOD_S, align 4
  %176 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %177 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @roce_set_field(i32 %173, i32 %174, i32 %175, i32 %178)
  %180 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %181 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @HNS_ROCE_EQC_REPORT_TIMER_M, align 4
  %184 = load i32, i32* @HNS_ROCE_EQC_REPORT_TIMER_S, align 4
  %185 = load i32, i32* @HNS_ROCE_EQ_INIT_REPORT_TIMER, align 4
  %186 = call i32 @roce_set_field(i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %188 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @HNS_ROCE_EQC_EQE_BA_L_M, align 4
  %191 = load i32, i32* @HNS_ROCE_EQC_EQE_BA_L_S, align 4
  %192 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %193 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 3
  %196 = call i32 @roce_set_field(i32 %189, i32 %190, i32 %191, i32 %195)
  %197 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %198 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @HNS_ROCE_EQC_EQE_BA_H_M, align 4
  %201 = load i32, i32* @HNS_ROCE_EQC_EQE_BA_H_S, align 4
  %202 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %203 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 35
  %206 = call i32 @roce_set_field(i32 %199, i32 %200, i32 %201, i32 %205)
  %207 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %208 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @HNS_ROCE_EQC_SHIFT_M, align 4
  %211 = load i32, i32* @HNS_ROCE_EQC_SHIFT_S, align 4
  %212 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %213 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @roce_set_field(i32 %209, i32 %210, i32 %211, i32 %214)
  %216 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %217 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @HNS_ROCE_EQC_MSI_INDX_M, align 4
  %220 = load i32, i32* @HNS_ROCE_EQC_MSI_INDX_S, align 4
  %221 = load i32, i32* @HNS_ROCE_EQ_INIT_MSI_IDX, align 4
  %222 = call i32 @roce_set_field(i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %224 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @HNS_ROCE_EQC_CUR_EQE_BA_L_M, align 4
  %227 = load i32, i32* @HNS_ROCE_EQC_CUR_EQE_BA_L_S, align 4
  %228 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %229 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = ashr i32 %230, 12
  %232 = call i32 @roce_set_field(i32 %225, i32 %226, i32 %227, i32 %231)
  %233 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %234 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @HNS_ROCE_EQC_CUR_EQE_BA_M_M, align 4
  %237 = load i32, i32* @HNS_ROCE_EQC_CUR_EQE_BA_M_S, align 4
  %238 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %239 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %238, i32 0, i32 12
  %240 = load i32, i32* %239, align 8
  %241 = ashr i32 %240, 28
  %242 = call i32 @roce_set_field(i32 %235, i32 %236, i32 %237, i32 %241)
  %243 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %244 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @HNS_ROCE_EQC_CUR_EQE_BA_H_M, align 4
  %247 = load i32, i32* @HNS_ROCE_EQC_CUR_EQE_BA_H_S, align 4
  %248 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %249 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %248, i32 0, i32 12
  %250 = load i32, i32* %249, align 8
  %251 = ashr i32 %250, 60
  %252 = call i32 @roce_set_field(i32 %245, i32 %246, i32 %247, i32 %251)
  %253 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %254 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @HNS_ROCE_EQC_CONS_INDX_M, align 4
  %257 = load i32, i32* @HNS_ROCE_EQC_CONS_INDX_S, align 4
  %258 = load i32, i32* @HNS_ROCE_EQ_INIT_CONS_IDX, align 4
  %259 = call i32 @roce_set_field(i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %261 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @HNS_ROCE_EQC_NXT_EQE_BA_L_M, align 4
  %264 = load i32, i32* @HNS_ROCE_EQC_NXT_EQE_BA_L_S, align 4
  %265 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %266 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %265, i32 0, i32 13
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 12
  %269 = call i32 @roce_set_field(i32 %262, i32 %263, i32 %264, i32 %268)
  %270 = load %struct.hns_roce_eq_context*, %struct.hns_roce_eq_context** %7, align 8
  %271 = getelementptr inbounds %struct.hns_roce_eq_context, %struct.hns_roce_eq_context* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @HNS_ROCE_EQC_NXT_EQE_BA_H_M, align 4
  %274 = load i32, i32* @HNS_ROCE_EQC_NXT_EQE_BA_H_S, align 4
  %275 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %276 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %275, i32 0, i32 13
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 44
  %279 = call i32 @roce_set_field(i32 %272, i32 %273, i32 %274, i32 %278)
  ret void
}

declare dso_local i32 @memset(%struct.hns_roce_eq_context*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
