; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32, i32, i32, %struct.hns_roce_caps }
%struct.hns_roce_caps = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@ROCEE_VENDOR_ID_REG = common dso_local global i32 0, align 4
@ROCEE_VENDOR_PART_ID_REG = common dso_local global i32 0, align 4
@ROCEE_SYS_IMAGE_GUID_L_REG = common dso_local global i32 0, align 4
@ROCEE_SYS_IMAGE_GUID_H_REG = common dso_local global i32 0, align 4
@HNS_ROCE_HW_VER1 = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_QP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_WQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_MIN_WQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_CQ_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_MIN_CQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_CQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_SG_NUM = common dso_local global i8* null, align 8
@HNS_ROCE_V1_INLINE_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_UAR_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_PHY_UAR_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_AEQE_VEC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_COMP_VEC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_ABNORMAL_VEC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_MTPT_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_MTT_SEGS = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_PD_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_QP_INIT_RDMA = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_QP_DEST_RDMA = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_SQ_DESC_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MAX_RQ_DESC_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V1_QPC_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_IRRL_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_CQC_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MTPT_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_MTT_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_CQE_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_PAGE_SIZE_SUPPORT = common dso_local global i32 0, align 4
@HNS_ROCE_V1_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_GID_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_COMP_EQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V1_ASYNC_EQE_NUM = common dso_local global i32 0, align 4
@ROCEE_ACK_DELAY_REG = common dso_local global i32 0, align 4
@IB_MTU_2048 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v1_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_profile(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_caps*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %5, i32 0, i32 4
  store %struct.hns_roce_caps* %6, %struct.hns_roce_caps** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %8 = load i32, i32* @ROCEE_VENDOR_ID_REG, align 4
  %9 = call i32 @roce_read(%struct.hns_roce_dev* %7, i32 %8)
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %13 = load i32, i32* @ROCEE_VENDOR_PART_ID_REG, align 4
  %14 = call i32 @roce_read(%struct.hns_roce_dev* %12, i32 %13)
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %18 = load i32, i32* @ROCEE_SYS_IMAGE_GUID_L_REG, align 4
  %19 = call i32 @roce_read(%struct.hns_roce_dev* %17, i32 %18)
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %21 = load i32, i32* @ROCEE_SYS_IMAGE_GUID_H_REG, align 4
  %22 = call i32 @roce_read(%struct.hns_roce_dev* %20, i32 %21)
  %23 = shl i32 %22, 32
  %24 = or i32 %19, %23
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @HNS_ROCE_HW_VER1, align 4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @HNS_ROCE_V1_MAX_QP_NUM, align 4
  %31 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %32 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %31, i32 0, i32 41
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @HNS_ROCE_V1_MAX_WQE_NUM, align 4
  %34 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %35 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %34, i32 0, i32 40
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @HNS_ROCE_MIN_WQE_NUM, align 4
  %37 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %37, i32 0, i32 39
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @HNS_ROCE_V1_MAX_CQ_NUM, align 4
  %40 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %40, i32 0, i32 38
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @HNS_ROCE_MIN_CQE_NUM, align 4
  %43 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %44 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %43, i32 0, i32 37
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @HNS_ROCE_V1_MAX_CQE_NUM, align 4
  %46 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %47 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %46, i32 0, i32 36
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @HNS_ROCE_V1_SG_NUM, align 8
  %49 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %50 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %49, i32 0, i32 35
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @HNS_ROCE_V1_SG_NUM, align 8
  %52 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %53 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %52, i32 0, i32 34
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @HNS_ROCE_V1_INLINE_SIZE, align 4
  %55 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %56 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %55, i32 0, i32 33
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @HNS_ROCE_V1_UAR_NUM, align 4
  %58 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %59 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %58, i32 0, i32 32
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @HNS_ROCE_V1_PHY_UAR_NUM, align 4
  %61 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %62 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %61, i32 0, i32 31
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @HNS_ROCE_V1_AEQE_VEC_NUM, align 4
  %64 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %65 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %64, i32 0, i32 30
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @HNS_ROCE_V1_COMP_VEC_NUM, align 4
  %67 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %68 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %67, i32 0, i32 29
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @HNS_ROCE_V1_ABNORMAL_VEC_NUM, align 4
  %70 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %71 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %70, i32 0, i32 28
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @HNS_ROCE_V1_MAX_MTPT_NUM, align 4
  %73 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %74 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %73, i32 0, i32 27
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @HNS_ROCE_V1_MAX_MTT_SEGS, align 4
  %76 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %77 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %76, i32 0, i32 26
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @HNS_ROCE_V1_MAX_PD_NUM, align 4
  %79 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %80 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %79, i32 0, i32 25
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @HNS_ROCE_V1_MAX_QP_INIT_RDMA, align 4
  %82 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %83 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %82, i32 0, i32 24
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @HNS_ROCE_V1_MAX_QP_DEST_RDMA, align 4
  %85 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %86 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %85, i32 0, i32 23
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @HNS_ROCE_V1_MAX_SQ_DESC_SZ, align 4
  %88 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %89 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %88, i32 0, i32 22
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @HNS_ROCE_V1_MAX_RQ_DESC_SZ, align 4
  %91 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %92 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %91, i32 0, i32 21
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @HNS_ROCE_V1_QPC_ENTRY_SIZE, align 4
  %94 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %95 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %94, i32 0, i32 20
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @HNS_ROCE_V1_IRRL_ENTRY_SIZE, align 4
  %97 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %98 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %97, i32 0, i32 19
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @HNS_ROCE_V1_CQC_ENTRY_SIZE, align 4
  %100 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %101 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %100, i32 0, i32 18
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @HNS_ROCE_V1_MTPT_ENTRY_SIZE, align 4
  %103 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %104 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %103, i32 0, i32 17
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @HNS_ROCE_V1_MTT_ENTRY_SIZE, align 4
  %106 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %107 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %106, i32 0, i32 16
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @HNS_ROCE_V1_CQE_ENTRY_SIZE, align 4
  %109 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %110 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %109, i32 0, i32 15
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @HNS_ROCE_V1_PAGE_SIZE_SUPPORT, align 4
  %112 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %113 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %112, i32 0, i32 14
  store i32 %111, i32* %113, align 8
  %114 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %115 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %114, i32 0, i32 13
  store i64 0, i64* %115, align 8
  %116 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %117 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %116, i32 0, i32 12
  store i64 0, i64* %117, align 8
  %118 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %119 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %121 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %120, i32 0, i32 11
  store i64 0, i64* %121, align 8
  %122 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %123 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %122, i32 0, i32 10
  store i64 0, i64* %123, align 8
  %124 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %125 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %124, i32 0, i32 1
  store i32 12, i32* %125, align 4
  %126 = load i32, i32* @HNS_ROCE_V1_TABLE_CHUNK_SIZE, align 4
  %127 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %128 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %142, %1
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %132 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %129
  %136 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %137 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  br label %129

145:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %186, %145
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %149 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %189

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %155 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %156 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = srem i32 %154, %157
  %159 = icmp sge i32 %153, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %162 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %163 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sdiv i32 %161, %164
  %166 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %167 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  br label %185

172:                                              ; preds = %152
  %173 = load i32, i32* @HNS_ROCE_V1_GID_NUM, align 4
  %174 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %175 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sdiv i32 %173, %176
  %178 = add nsw i32 %177, 1
  %179 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %180 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %178, i32* %184, align 4
  br label %185

185:                                              ; preds = %172, %160
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %146

189:                                              ; preds = %146
  %190 = load i32, i32* @HNS_ROCE_V1_COMP_EQE_NUM, align 4
  %191 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %192 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @HNS_ROCE_V1_ASYNC_EQE_NUM, align 4
  %194 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %195 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 8
  %196 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %197 = load i32, i32* @ROCEE_ACK_DELAY_REG, align 4
  %198 = call i32 @roce_read(%struct.hns_roce_dev* %196, i32 %197)
  %199 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %200 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @IB_MTU_2048, align 4
  %202 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %203 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 4
  ret i32 0
}

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
