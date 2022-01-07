; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_write_srqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_write_srqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32 }
%struct.hns_roce_srq = type { i32, i64, i32 }
%struct.hns_roce_srq_context = type { i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i8*, i32, i32, i32 }

@SRQC_BYTE_4_SRQ_ST_M = common dso_local global i32 0, align 4
@SRQC_BYTE_4_SRQ_ST_S = common dso_local global i32 0, align 4
@SRQC_BYTE_4_SRQ_WQE_HOP_NUM_M = common dso_local global i32 0, align 4
@SRQC_BYTE_4_SRQ_WQE_HOP_NUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i64 0, align 8
@SRQC_BYTE_4_SRQ_SHIFT_M = common dso_local global i32 0, align 4
@SRQC_BYTE_4_SRQ_SHIFT_S = common dso_local global i32 0, align 4
@SRQC_BYTE_4_SRQN_M = common dso_local global i32 0, align 4
@SRQC_BYTE_4_SRQN_S = common dso_local global i32 0, align 4
@SRQC_BYTE_8_SRQ_LIMIT_WL_M = common dso_local global i32 0, align 4
@SRQC_BYTE_8_SRQ_LIMIT_WL_S = common dso_local global i32 0, align 4
@SRQC_BYTE_12_SRQ_XRCD_M = common dso_local global i32 0, align 4
@SRQC_BYTE_12_SRQ_XRCD_S = common dso_local global i32 0, align 4
@SRQC_BYTE_24_SRQ_WQE_BT_BA_M = common dso_local global i32 0, align 4
@SRQC_BYTE_24_SRQ_WQE_BT_BA_S = common dso_local global i32 0, align 4
@SRQC_BYTE_28_PD_M = common dso_local global i32 0, align 4
@SRQC_BYTE_28_PD_S = common dso_local global i32 0, align 4
@SRQC_BYTE_28_RQWS_M = common dso_local global i32 0, align 4
@SRQC_BYTE_28_RQWS_S = common dso_local global i32 0, align 4
@SRQC_BYTE_36_SRQ_IDX_BT_BA_M = common dso_local global i32 0, align 4
@SRQC_BYTE_36_SRQ_IDX_BT_BA_S = common dso_local global i32 0, align 4
@PAGE_ADDR_SHIFT = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_CUR_BLK_ADDR_M = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_CUR_BLK_ADDR_S = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_HOP_NUM_M = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_HOP_NUM_S = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_BA_PG_SZ_M = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_BA_PG_SZ_S = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@SRQC_BYTE_44_SRQ_IDX_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@SRQC_BYTE_52_SRQ_IDX_NXT_BLK_ADDR_M = common dso_local global i32 0, align 4
@SRQC_BYTE_52_SRQ_IDX_NXT_BLK_ADDR_S = common dso_local global i32 0, align 4
@SRQC_BYTE_56_SRQ_XRC_CQN_M = common dso_local global i32 0, align 4
@SRQC_BYTE_56_SRQ_XRC_CQN_S = common dso_local global i32 0, align 4
@SRQC_BYTE_56_SRQ_WQE_BA_PG_SZ_M = common dso_local global i32 0, align 4
@SRQC_BYTE_56_SRQ_WQE_BA_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i32 0, align 4
@SRQC_BYTE_56_SRQ_WQE_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@SRQC_BYTE_56_SRQ_WQE_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@SRQC_BYTE_60_SRQ_RECORD_EN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_srq*, i32, i32, i32, i8*, i32*, i32*, i32, i32)* @hns_roce_v2_write_srqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v2_write_srqc(%struct.hns_roce_dev* %0, %struct.hns_roce_srq* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.hns_roce_dev*, align 8
  %12 = alloca %struct.hns_roce_srq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.hns_roce_srq_context*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %11, align 8
  store %struct.hns_roce_srq* %1, %struct.hns_roce_srq** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load i8*, i8** %16, align 8
  %23 = bitcast i8* %22 to %struct.hns_roce_srq_context*
  store %struct.hns_roce_srq_context* %23, %struct.hns_roce_srq_context** %21, align 8
  %24 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %25 = call i32 @memset(%struct.hns_roce_srq_context* %24, i32 0, i32 88)
  %26 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %27 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SRQC_BYTE_4_SRQ_ST_M, align 4
  %30 = load i32, i32* @SRQC_BYTE_4_SRQ_ST_S, align 4
  %31 = call i32 @roce_set_field(i32 %28, i32 %29, i32 %30, i32 1)
  %32 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %33 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SRQC_BYTE_4_SRQ_WQE_HOP_NUM_M, align 4
  %36 = load i32, i32* @SRQC_BYTE_4_SRQ_WQE_HOP_NUM_S, align 4
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %10
  br label %49

44:                                               ; preds = %10
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %46 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %44, %43
  %50 = phi i64 [ 0, %43 ], [ %48, %44 ]
  %51 = trunc i64 %50 to i32
  %52 = call i32 @roce_set_field(i32 %34, i32 %35, i32 %36, i32 %51)
  %53 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %54 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SRQC_BYTE_4_SRQ_SHIFT_M, align 4
  %57 = load i32, i32* @SRQC_BYTE_4_SRQ_SHIFT_S, align 4
  %58 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %12, align 8
  %59 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ilog2(i32 %60)
  %62 = call i32 @roce_set_field(i32 %55, i32 %56, i32 %57, i32 %61)
  %63 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %64 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SRQC_BYTE_4_SRQN_M, align 4
  %67 = load i32, i32* @SRQC_BYTE_4_SRQN_S, align 4
  %68 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %12, align 8
  %69 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @roce_set_field(i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %73 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_M, align 4
  %76 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_S, align 4
  %77 = call i32 @roce_set_field(i32 %74, i32 %75, i32 %76, i32 0)
  %78 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %79 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SRQC_BYTE_12_SRQ_XRCD_M, align 4
  %82 = load i32, i32* @SRQC_BYTE_12_SRQ_XRCD_S, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @roce_set_field(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %19, align 4
  %86 = ashr i32 %85, 3
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %89 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  %90 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %91 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SRQC_BYTE_24_SRQ_WQE_BT_BA_M, align 4
  %94 = load i32, i32* @SRQC_BYTE_24_SRQ_WQE_BT_BA_S, align 4
  %95 = load i32, i32* %19, align 4
  %96 = ashr i32 %95, 35
  %97 = call i32 @roce_set_field(i32 %92, i32 %93, i32 %94, i32 %96)
  %98 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %99 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SRQC_BYTE_28_PD_M, align 4
  %102 = load i32, i32* @SRQC_BYTE_28_PD_S, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @roce_set_field(i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %106 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SRQC_BYTE_28_RQWS_M, align 4
  %109 = load i32, i32* @SRQC_BYTE_28_RQWS_S, align 4
  %110 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %12, align 8
  %111 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %49
  br label %121

115:                                              ; preds = %49
  %116 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %12, align 8
  %117 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = call i32 @fls(i64 %119)
  br label %121

121:                                              ; preds = %115, %114
  %122 = phi i32 [ 0, %114 ], [ %120, %115 ]
  %123 = call i32 @roce_set_field(i32 %107, i32 %108, i32 %109, i32 %122)
  %124 = load i32, i32* %20, align 4
  %125 = ashr i32 %124, 3
  %126 = call i8* @cpu_to_le32(i32 %125)
  %127 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %128 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %127, i32 0, i32 7
  store i8* %126, i8** %128, align 8
  %129 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %130 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SRQC_BYTE_36_SRQ_IDX_BT_BA_M, align 4
  %133 = load i32, i32* @SRQC_BYTE_36_SRQ_IDX_BT_BA_S, align 4
  %134 = load i32, i32* %20, align 4
  %135 = ashr i32 %134, 35
  %136 = call i32 @roce_set_field(i32 %131, i32 %132, i32 %133, i32 %135)
  %137 = load i32*, i32** %18, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %141 = ashr i32 %139, %140
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %144 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %146 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_CUR_BLK_ADDR_M, align 4
  %149 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_CUR_BLK_ADDR_S, align 4
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %154 = add nsw i32 32, %153
  %155 = ashr i32 %152, %154
  %156 = call i32 @roce_set_field(i32 %147, i32 %148, i32 %149, i32 %155)
  %157 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %158 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_HOP_NUM_M, align 4
  %161 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_HOP_NUM_S, align 4
  %162 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %163 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %121
  br label %174

169:                                              ; preds = %121
  %170 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %171 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  br label %174

174:                                              ; preds = %169, %168
  %175 = phi i64 [ 0, %168 ], [ %173, %169 ]
  %176 = trunc i64 %175 to i32
  %177 = call i32 @roce_set_field(i32 %159, i32 %160, i32 %161, i32 %176)
  %178 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %179 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_BA_PG_SZ_M, align 4
  %182 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_BA_PG_SZ_S, align 4
  %183 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %184 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @roce_set_field(i32 %180, i32 %181, i32 %182, i32 %186)
  %188 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %189 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_BUF_PG_SZ_M, align 4
  %192 = load i32, i32* @SRQC_BYTE_44_SRQ_IDX_BUF_PG_SZ_S, align 4
  %193 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %194 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @roce_set_field(i32 %190, i32 %191, i32 %192, i32 %196)
  %198 = load i32*, i32** %18, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %202 = ashr i32 %200, %201
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %205 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %207 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @SRQC_BYTE_52_SRQ_IDX_NXT_BLK_ADDR_M, align 4
  %210 = load i32, i32* @SRQC_BYTE_52_SRQ_IDX_NXT_BLK_ADDR_S, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %215 = add nsw i32 32, %214
  %216 = ashr i32 %213, %215
  %217 = call i32 @roce_set_field(i32 %208, i32 %209, i32 %210, i32 %216)
  %218 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %219 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SRQC_BYTE_56_SRQ_XRC_CQN_M, align 4
  %222 = load i32, i32* @SRQC_BYTE_56_SRQ_XRC_CQN_S, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @roce_set_field(i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %226 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @SRQC_BYTE_56_SRQ_WQE_BA_PG_SZ_M, align 4
  %229 = load i32, i32* @SRQC_BYTE_56_SRQ_WQE_BA_PG_SZ_S, align 4
  %230 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %231 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %235 = add nsw i32 %233, %234
  %236 = call i32 @roce_set_field(i32 %227, i32 %228, i32 %229, i32 %235)
  %237 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %238 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SRQC_BYTE_56_SRQ_WQE_BUF_PG_SZ_M, align 4
  %241 = load i32, i32* @SRQC_BYTE_56_SRQ_WQE_BUF_PG_SZ_S, align 4
  %242 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %243 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 @roce_set_field(i32 %239, i32 %240, i32 %241, i32 %247)
  %249 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %21, align 8
  %250 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @SRQC_BYTE_60_SRQ_RECORD_EN_S, align 4
  %253 = call i32 @roce_set_bit(i32 %251, i32 %252, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.hns_roce_srq_context*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
