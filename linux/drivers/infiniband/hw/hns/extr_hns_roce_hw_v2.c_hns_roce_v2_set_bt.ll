; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hns_roce_cfg_bt_attr = type { i32, i32, i32, i32, i32 }
%struct.hns_roce_cmq_desc = type { i64 }

@HNS_ROCE_OPC_CFG_BT_ATTR = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_0_VF_QPC_BA_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_0_VF_QPC_BA_PGSZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i64 0, align 8
@CFG_BT_ATTR_DATA_0_VF_QPC_BUF_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_0_VF_QPC_BUF_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_0_VF_QPC_HOPNUM_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_0_VF_QPC_HOPNUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i64 0, align 8
@CFG_BT_ATTR_DATA_1_VF_SRQC_BA_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_1_VF_SRQC_BA_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_1_VF_SRQC_BUF_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_1_VF_SRQC_BUF_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_1_VF_SRQC_HOPNUM_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_1_VF_SRQC_HOPNUM_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_2_VF_CQC_BA_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_2_VF_CQC_BA_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_2_VF_CQC_BUF_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_2_VF_CQC_BUF_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_2_VF_CQC_HOPNUM_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_2_VF_CQC_HOPNUM_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_3_VF_MPT_BA_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_3_VF_MPT_BA_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_3_VF_MPT_BUF_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_3_VF_MPT_BUF_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_3_VF_MPT_HOPNUM_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_3_VF_MPT_HOPNUM_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_4_VF_SCCC_BA_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_4_VF_SCCC_BA_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_4_VF_SCCC_BUF_PGSZ_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_4_VF_SCCC_BUF_PGSZ_S = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_4_VF_SCCC_HOPNUM_M = common dso_local global i32 0, align 4
@CFG_BT_ATTR_DATA_4_VF_SCCC_HOPNUM_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_set_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_set_bt(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hns_roce_cfg_bt_attr*, align 8
  %9 = alloca %struct.hns_roce_cmq_desc, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* @HNS_ROCE_OPC_CFG_BT_ATTR, align 4
  %31 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %9, i32 %30, i32 0)
  %32 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.hns_roce_cfg_bt_attr*
  store %struct.hns_roce_cfg_bt_attr* %34, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %35 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %36 = call i32 @memset(%struct.hns_roce_cfg_bt_attr* %35, i32 0, i32 20)
  %37 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %38 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CFG_BT_ATTR_DATA_0_VF_QPC_BA_PGSZ_M, align 4
  %41 = load i32, i32* @CFG_BT_ATTR_DATA_0_VF_QPC_BA_PGSZ_S, align 4
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @roce_set_field(i32 %39, i32 %40, i32 %41, i64 %47)
  %49 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %50 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CFG_BT_ATTR_DATA_0_VF_QPC_BUF_PGSZ_M, align 4
  %53 = load i32, i32* @CFG_BT_ATTR_DATA_0_VF_QPC_BUF_PGSZ_S, align 4
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @roce_set_field(i32 %51, i32 %52, i32 %53, i64 %59)
  %61 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %62 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CFG_BT_ATTR_DATA_0_VF_QPC_HOPNUM_M, align 4
  %65 = load i32, i32* @CFG_BT_ATTR_DATA_0_VF_QPC_HOPNUM_S, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %1
  br label %72

70:                                               ; preds = %1
  %71 = load i64, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i64 [ 0, %69 ], [ %71, %70 ]
  %74 = call i32 @roce_set_field(i32 %63, i32 %64, i32 %65, i64 %73)
  %75 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %76 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CFG_BT_ATTR_DATA_1_VF_SRQC_BA_PGSZ_M, align 4
  %79 = load i32, i32* @CFG_BT_ATTR_DATA_1_VF_SRQC_BA_PGSZ_S, align 4
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %81 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @roce_set_field(i32 %77, i32 %78, i32 %79, i64 %85)
  %87 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %88 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CFG_BT_ATTR_DATA_1_VF_SRQC_BUF_PGSZ_M, align 4
  %91 = load i32, i32* @CFG_BT_ATTR_DATA_1_VF_SRQC_BUF_PGSZ_S, align 4
  %92 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %93 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @roce_set_field(i32 %89, i32 %90, i32 %91, i64 %97)
  %99 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %100 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CFG_BT_ATTR_DATA_1_VF_SRQC_HOPNUM_M, align 4
  %103 = load i32, i32* @CFG_BT_ATTR_DATA_1_VF_SRQC_HOPNUM_S, align 4
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %72
  br label %110

108:                                              ; preds = %72
  %109 = load i64, i64* %3, align 8
  br label %110

110:                                              ; preds = %108, %107
  %111 = phi i64 [ 0, %107 ], [ %109, %108 ]
  %112 = call i32 @roce_set_field(i32 %101, i32 %102, i32 %103, i64 %111)
  %113 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %114 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CFG_BT_ATTR_DATA_2_VF_CQC_BA_PGSZ_M, align 4
  %117 = load i32, i32* @CFG_BT_ATTR_DATA_2_VF_CQC_BA_PGSZ_S, align 4
  %118 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %119 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @roce_set_field(i32 %115, i32 %116, i32 %117, i64 %123)
  %125 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %126 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CFG_BT_ATTR_DATA_2_VF_CQC_BUF_PGSZ_M, align 4
  %129 = load i32, i32* @CFG_BT_ATTR_DATA_2_VF_CQC_BUF_PGSZ_S, align 4
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %131 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @roce_set_field(i32 %127, i32 %128, i32 %129, i64 %135)
  %137 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %138 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CFG_BT_ATTR_DATA_2_VF_CQC_HOPNUM_M, align 4
  %141 = load i32, i32* @CFG_BT_ATTR_DATA_2_VF_CQC_HOPNUM_S, align 4
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %110
  br label %148

146:                                              ; preds = %110
  %147 = load i64, i64* %5, align 8
  br label %148

148:                                              ; preds = %146, %145
  %149 = phi i64 [ 0, %145 ], [ %147, %146 ]
  %150 = call i32 @roce_set_field(i32 %139, i32 %140, i32 %141, i64 %149)
  %151 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %152 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CFG_BT_ATTR_DATA_3_VF_MPT_BA_PGSZ_M, align 4
  %155 = load i32, i32* @CFG_BT_ATTR_DATA_3_VF_MPT_BA_PGSZ_S, align 4
  %156 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %157 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 11
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @roce_set_field(i32 %153, i32 %154, i32 %155, i64 %161)
  %163 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %164 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CFG_BT_ATTR_DATA_3_VF_MPT_BUF_PGSZ_M, align 4
  %167 = load i32, i32* @CFG_BT_ATTR_DATA_3_VF_MPT_BUF_PGSZ_S, align 4
  %168 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %169 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 12
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @roce_set_field(i32 %165, i32 %166, i32 %167, i64 %173)
  %175 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %176 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CFG_BT_ATTR_DATA_3_VF_MPT_HOPNUM_M, align 4
  %179 = load i32, i32* @CFG_BT_ATTR_DATA_3_VF_MPT_HOPNUM_S, align 4
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %148
  br label %186

184:                                              ; preds = %148
  %185 = load i64, i64* %6, align 8
  br label %186

186:                                              ; preds = %184, %183
  %187 = phi i64 [ 0, %183 ], [ %185, %184 ]
  %188 = call i32 @roce_set_field(i32 %177, i32 %178, i32 %179, i64 %187)
  %189 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %190 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @CFG_BT_ATTR_DATA_4_VF_SCCC_BA_PGSZ_M, align 4
  %193 = load i32, i32* @CFG_BT_ATTR_DATA_4_VF_SCCC_BA_PGSZ_S, align 4
  %194 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %195 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 13
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @roce_set_field(i32 %191, i32 %192, i32 %193, i64 %199)
  %201 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %202 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @CFG_BT_ATTR_DATA_4_VF_SCCC_BUF_PGSZ_M, align 4
  %205 = load i32, i32* @CFG_BT_ATTR_DATA_4_VF_SCCC_BUF_PGSZ_S, align 4
  %206 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %207 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 14
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @roce_set_field(i32 %203, i32 %204, i32 %205, i64 %211)
  %213 = load %struct.hns_roce_cfg_bt_attr*, %struct.hns_roce_cfg_bt_attr** %8, align 8
  %214 = getelementptr inbounds %struct.hns_roce_cfg_bt_attr, %struct.hns_roce_cfg_bt_attr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @CFG_BT_ATTR_DATA_4_VF_SCCC_HOPNUM_M, align 4
  %217 = load i32, i32* @CFG_BT_ATTR_DATA_4_VF_SCCC_HOPNUM_S, align 4
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %186
  br label %224

222:                                              ; preds = %186
  %223 = load i64, i64* %7, align 8
  br label %224

224:                                              ; preds = %222, %221
  %225 = phi i64 [ 0, %221 ], [ %223, %222 ]
  %226 = call i32 @roce_set_field(i32 %215, i32 %216, i32 %217, i64 %225)
  %227 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %228 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %227, %struct.hns_roce_cmq_desc* %9, i32 1)
  ret i32 %228
}

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @memset(%struct.hns_roce_cfg_bt_attr*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i64) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
