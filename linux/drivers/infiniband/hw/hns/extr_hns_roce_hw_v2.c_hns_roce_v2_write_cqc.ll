; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_write_cqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_write_cqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.hns_roce_cq = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_v2_cq_context = type { i32, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32 }

@V2_CQC_BYTE_4_CQ_ST_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_CQ_ST_S = common dso_local global i32 0, align 4
@V2_CQ_STATE_VALID = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_ARM_ST_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_ARM_ST_S = common dso_local global i32 0, align 4
@REG_NXT_CEQE = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_SHIFT_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_SHIFT_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_CEQN_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_CEQN_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_8_CQN_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_8_CQN_S = common dso_local global i32 0, align 4
@PAGE_ADDR_SHIFT = common dso_local global i32 0, align 4
@V2_CQC_BYTE_16_CQE_CUR_BLK_ADDR_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_16_CQE_CUR_BLK_ADDR_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_16_CQE_HOP_NUM_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_16_CQE_HOP_NUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i64 0, align 8
@V2_CQC_BYTE_24_CQE_NXT_BLK_ADDR_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_24_CQE_NXT_BLK_ADDR_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_24_CQE_BA_PG_SZ_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_24_CQE_BA_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i32 0, align 4
@V2_CQC_BYTE_24_CQE_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_24_CQE_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_40_CQE_BA_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_40_CQE_BA_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_44_DB_RECORD_EN_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_44_DB_RECORD_ADDR_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_44_DB_RECORD_ADDR_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_MAX_CNT_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_MAX_CNT_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQ_DEFAULT_BURST_NUM = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_PERIOD_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_PERIOD_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQ_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_cq*, i8*, i32*, i32, i32, i32)* @hns_roce_v2_write_cqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v2_write_cqc(%struct.hns_roce_dev* %0, %struct.hns_roce_cq* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_cq*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hns_roce_v2_cq_context*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %8, align 8
  store %struct.hns_roce_cq* %1, %struct.hns_roce_cq** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.hns_roce_v2_cq_context*
  store %struct.hns_roce_v2_cq_context* %17, %struct.hns_roce_v2_cq_context** %15, align 8
  %18 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %19 = call i32 @memset(%struct.hns_roce_v2_cq_context* %18, i32 0, i32 72)
  %20 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %21 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V2_CQC_BYTE_4_CQ_ST_M, align 4
  %24 = load i32, i32* @V2_CQC_BYTE_4_CQ_ST_S, align 4
  %25 = load i32, i32* @V2_CQ_STATE_VALID, align 4
  %26 = call i32 @roce_set_field(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %28 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V2_CQC_BYTE_4_ARM_ST_M, align 4
  %31 = load i32, i32* @V2_CQC_BYTE_4_ARM_ST_S, align 4
  %32 = load i32, i32* @REG_NXT_CEQE, align 4
  %33 = call i32 @roce_set_field(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %35 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V2_CQC_BYTE_4_SHIFT_M, align 4
  %38 = load i32, i32* @V2_CQC_BYTE_4_SHIFT_S, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @ilog2(i32 %39)
  %41 = call i32 @roce_set_field(i32 %36, i32 %37, i32 %38, i32 %40)
  %42 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %43 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @V2_CQC_BYTE_4_CEQN_M, align 4
  %46 = load i32, i32* @V2_CQC_BYTE_4_CEQN_S, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @roce_set_field(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %50 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @V2_CQC_BYTE_8_CQN_M, align 4
  %53 = load i32, i32* @V2_CQC_BYTE_8_CQN_S, align 4
  %54 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %55 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @roce_set_field(i32 %51, i32 %52, i32 %53, i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %65 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %67 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @V2_CQC_BYTE_16_CQE_CUR_BLK_ADDR_M, align 4
  %70 = load i32, i32* @V2_CQC_BYTE_16_CQE_CUR_BLK_ADDR_S, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %75 = add nsw i32 32, %74
  %76 = ashr i32 %73, %75
  %77 = call i32 @roce_set_field(i32 %68, i32 %69, i32 %70, i32 %76)
  %78 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %79 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @V2_CQC_BYTE_16_CQE_HOP_NUM_M, align 4
  %82 = load i32, i32* @V2_CQC_BYTE_16_CQE_HOP_NUM_S, align 4
  %83 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %84 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %7
  br label %95

90:                                               ; preds = %7
  %91 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %92 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  br label %95

95:                                               ; preds = %90, %89
  %96 = phi i64 [ 0, %89 ], [ %94, %90 ]
  %97 = trunc i64 %96 to i32
  %98 = call i32 @roce_set_field(i32 %80, i32 %81, i32 %82, i32 %97)
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %106 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  %107 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %108 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @V2_CQC_BYTE_24_CQE_NXT_BLK_ADDR_M, align 4
  %111 = load i32, i32* @V2_CQC_BYTE_24_CQE_NXT_BLK_ADDR_S, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %116 = add nsw i32 32, %115
  %117 = ashr i32 %114, %116
  %118 = call i32 @roce_set_field(i32 %109, i32 %110, i32 %111, i32 %117)
  %119 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %120 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @V2_CQC_BYTE_24_CQE_BA_PG_SZ_M, align 4
  %123 = load i32, i32* @V2_CQC_BYTE_24_CQE_BA_PG_SZ_S, align 4
  %124 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %125 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @roce_set_field(i32 %121, i32 %122, i32 %123, i32 %129)
  %131 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %132 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @V2_CQC_BYTE_24_CQE_BUF_PG_SZ_M, align 4
  %135 = load i32, i32* @V2_CQC_BYTE_24_CQE_BUF_PG_SZ_S, align 4
  %136 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %137 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i32 @roce_set_field(i32 %133, i32 %134, i32 %135, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = ashr i32 %143, 3
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %147 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %149 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @V2_CQC_BYTE_40_CQE_BA_M, align 4
  %152 = load i32, i32* @V2_CQC_BYTE_40_CQE_BA_S, align 4
  %153 = load i32, i32* %12, align 4
  %154 = ashr i32 %153, 35
  %155 = call i32 @roce_set_field(i32 %150, i32 %151, i32 %152, i32 %154)
  %156 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %157 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %95
  %161 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %162 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @V2_CQC_BYTE_44_DB_RECORD_EN_S, align 4
  %165 = call i32 @roce_set_bit(i32 %163, i32 %164, i32 1)
  br label %166

166:                                              ; preds = %160, %95
  %167 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %168 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @V2_CQC_BYTE_44_DB_RECORD_ADDR_M, align 4
  %171 = load i32, i32* @V2_CQC_BYTE_44_DB_RECORD_ADDR_S, align 4
  %172 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %173 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 1
  %177 = call i32 @roce_set_field(i32 %169, i32 %170, i32 %171, i32 %176)
  %178 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %179 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 32
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %185 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %187 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_M, align 4
  %190 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_S, align 4
  %191 = load i32, i32* @HNS_ROCE_V2_CQ_DEFAULT_BURST_NUM, align 4
  %192 = call i32 @roce_set_field(i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %15, align 8
  %194 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_M, align 4
  %197 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_S, align 4
  %198 = load i32, i32* @HNS_ROCE_V2_CQ_DEFAULT_INTERVAL, align 4
  %199 = call i32 @roce_set_field(i32 %195, i32 %196, i32 %197, i32 %198)
  ret void
}

declare dso_local i32 @memset(%struct.hns_roce_v2_cq_context*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
