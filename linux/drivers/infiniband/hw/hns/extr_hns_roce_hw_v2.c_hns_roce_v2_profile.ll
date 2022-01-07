; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__, i32, i32, %struct.hns_roce_caps }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64, i64, i32, i8*, i64, i64, i32, i32, i8*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i32, i64, i64, i32, i64, i8*, i64, i64, i8*, i64, i64, i8*, i64, i64, i8*, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Query hardware version fail, ret = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Query firmware version fail, ret = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Configure global param fail, ret = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Query pf resource fail, ret = %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Query pf timer resource fail, ret = %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Allocate vf resource fail, ret = %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Set function switch param fail, ret = %d.\0A\00", align 1
@HNS_ROCE_V2_MAX_QP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_WQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_CQ_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQ_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_MIN_CQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_CQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQWQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SQ_SGE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_EXTEND_SGE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_RQ_SGE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SQ_INLINE = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQ_SGE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_UAR_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_PHY_UAR_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_AEQE_VEC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_COMP_VEC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_ABNORMAL_VEC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_MTPT_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_MTT_SEGS = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_CQE_SEGS = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQWQE_SEGS = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_IDX_SEGS = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_PD_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_QP_INIT_RDMA = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_QP_DEST_RDMA = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SQ_DESC_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_RQ_DESC_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQ_DESC_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_QPC_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_IRRL_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_TRRL_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQC_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_SRQC_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MTPT_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MTT_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQE_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V2_PAGE_SIZE_SUPPORTED = common dso_local global i32 0, align 4
@HNS_ROCE_V2_RSV_QPS = common dso_local global i32 0, align 4
@HNS_ROCE_CONTEXT_HOP_NUM = common dso_local global i8* null, align 8
@HNS_ROCE_PBL_HOP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_MTT_HOP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_CQE_HOP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_SRQWQE_HOP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_IDX_HOP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_EQE_HOP_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_REREG_MR = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_ROCE_V1_V2 = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_RQ_INLINE = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_RECORD_DB = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_SQ_RECORD_DB = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_MW = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_FRMR = common dso_local global i32 0, align 4
@HNS_ROCE_V2_GID_INDEX_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_COMP_EQE_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_ASYNC_EQE_NUM = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQ_WR = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_SRQ_SGE = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_ATOMIC = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_SRQ = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_QP_FLOW_CTRL = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_QPC_TIMER_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_QPC_TIMER_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i8* null, align 8
@HNS_ROCE_V2_MAX_CQC_TIMER_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQC_TIMER_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_SCCC_ENTRY_SZ = common dso_local global i32 0, align 4
@HNS_ROCE_SCCC_HOP_NUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Configure bt attribute fail, ret = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_profile(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_caps*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 5
  store %struct.hns_roce_caps* %7, %struct.hns_roce_caps** %4, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = call i32 @hns_roce_cmq_query_hw_info(%struct.hns_roce_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %451

19:                                               ; preds = %1
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %21 = call i32 @hns_roce_query_fw_ver(%struct.hns_roce_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %451

31:                                               ; preds = %19
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %33 = call i32 @hns_roce_config_global_param(%struct.hns_roce_dev* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %451

43:                                               ; preds = %31
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %45 = call i32 @hns_roce_query_pf_resource(%struct.hns_roce_dev* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %451

55:                                               ; preds = %43
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 33
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %64 = call i32 @hns_roce_query_pf_timer_resource(%struct.hns_roce_dev* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %451

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %77 = call i32 @hns_roce_alloc_vf_resource(%struct.hns_roce_dev* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %451

87:                                               ; preds = %75
  %88 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %89 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 33
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %96 = call i32 @hns_roce_set_vf_switch_param(%struct.hns_roce_dev* %95, i32 0)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %101 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %451

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %87
  %108 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %114 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %116 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @be64_to_cpu(i32 %118)
  %120 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %121 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @HNS_ROCE_V2_MAX_QP_NUM, align 4
  %123 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %124 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %123, i32 0, i32 103
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @HNS_ROCE_V2_MAX_WQE_NUM, align 4
  %126 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %127 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %126, i32 0, i32 102
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @HNS_ROCE_V2_MAX_CQ_NUM, align 4
  %129 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %130 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %129, i32 0, i32 101
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @HNS_ROCE_V2_MAX_SRQ_NUM, align 4
  %132 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %133 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %132, i32 0, i32 100
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @HNS_ROCE_MIN_CQE_NUM, align 4
  %135 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %136 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %135, i32 0, i32 99
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @HNS_ROCE_V2_MAX_CQE_NUM, align 4
  %138 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %139 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %138, i32 0, i32 98
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @HNS_ROCE_V2_MAX_SRQWQE_NUM, align 4
  %141 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %142 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %141, i32 0, i32 97
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @HNS_ROCE_V2_MAX_SQ_SGE_NUM, align 4
  %144 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %145 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %144, i32 0, i32 96
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @HNS_ROCE_V2_MAX_EXTEND_SGE_NUM, align 4
  %147 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %148 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %147, i32 0, i32 95
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @HNS_ROCE_V2_MAX_RQ_SGE_NUM, align 4
  %150 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %151 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %150, i32 0, i32 94
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @HNS_ROCE_V2_MAX_SQ_INLINE, align 4
  %153 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %154 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %153, i32 0, i32 93
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @HNS_ROCE_V2_MAX_SRQ_SGE_NUM, align 4
  %156 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %157 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %156, i32 0, i32 92
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @HNS_ROCE_V2_UAR_NUM, align 4
  %159 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %160 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %159, i32 0, i32 91
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @HNS_ROCE_V2_PHY_UAR_NUM, align 4
  %162 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %163 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %162, i32 0, i32 90
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @HNS_ROCE_V2_AEQE_VEC_NUM, align 4
  %165 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %166 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %165, i32 0, i32 89
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @HNS_ROCE_V2_COMP_VEC_NUM, align 4
  %168 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %169 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %168, i32 0, i32 88
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @HNS_ROCE_V2_ABNORMAL_VEC_NUM, align 4
  %171 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %172 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %171, i32 0, i32 87
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @HNS_ROCE_V2_MAX_MTPT_NUM, align 4
  %174 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %175 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %174, i32 0, i32 86
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @HNS_ROCE_V2_MAX_MTT_SEGS, align 4
  %177 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %178 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %177, i32 0, i32 85
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @HNS_ROCE_V2_MAX_CQE_SEGS, align 4
  %180 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %181 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %180, i32 0, i32 84
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @HNS_ROCE_V2_MAX_SRQWQE_SEGS, align 4
  %183 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %184 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %183, i32 0, i32 83
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @HNS_ROCE_V2_MAX_IDX_SEGS, align 4
  %186 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %187 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %186, i32 0, i32 82
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @HNS_ROCE_V2_MAX_PD_NUM, align 4
  %189 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %190 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %189, i32 0, i32 81
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @HNS_ROCE_V2_MAX_QP_INIT_RDMA, align 4
  %192 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %193 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %192, i32 0, i32 80
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @HNS_ROCE_V2_MAX_QP_DEST_RDMA, align 4
  %195 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %196 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %195, i32 0, i32 79
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @HNS_ROCE_V2_MAX_SQ_DESC_SZ, align 4
  %198 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %199 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %198, i32 0, i32 78
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @HNS_ROCE_V2_MAX_RQ_DESC_SZ, align 4
  %201 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %202 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %201, i32 0, i32 77
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @HNS_ROCE_V2_MAX_SRQ_DESC_SZ, align 4
  %204 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %205 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %204, i32 0, i32 76
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @HNS_ROCE_V2_QPC_ENTRY_SZ, align 4
  %207 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %208 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %207, i32 0, i32 75
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* @HNS_ROCE_V2_IRRL_ENTRY_SZ, align 4
  %210 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %211 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %210, i32 0, i32 74
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @HNS_ROCE_V2_TRRL_ENTRY_SZ, align 4
  %213 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %214 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %213, i32 0, i32 73
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @HNS_ROCE_V2_CQC_ENTRY_SZ, align 4
  %216 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %217 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %216, i32 0, i32 72
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @HNS_ROCE_V2_SRQC_ENTRY_SZ, align 4
  %219 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %220 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %219, i32 0, i32 71
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @HNS_ROCE_V2_MTPT_ENTRY_SZ, align 4
  %222 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %223 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %222, i32 0, i32 70
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @HNS_ROCE_V2_MTT_ENTRY_SZ, align 4
  %225 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %226 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %225, i32 0, i32 69
  store i32 %224, i32* %226, align 8
  %227 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %228 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %227, i32 0, i32 0
  store i32 4, i32* %228, align 8
  %229 = load i32, i32* @HNS_ROCE_V2_CQE_ENTRY_SIZE, align 4
  %230 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %231 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %230, i32 0, i32 68
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @HNS_ROCE_V2_PAGE_SIZE_SUPPORTED, align 4
  %233 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %234 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %233, i32 0, i32 67
  store i32 %232, i32* %234, align 8
  %235 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %236 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %235, i32 0, i32 66
  store i64 0, i64* %236, align 8
  %237 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %238 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %237, i32 0, i32 65
  store i64 0, i64* %238, align 8
  %239 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %240 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %239, i32 0, i32 1
  store i32 1, i32* %240, align 4
  %241 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %242 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %241, i32 0, i32 64
  store i64 0, i64* %242, align 8
  %243 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %244 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %243, i32 0, i32 63
  store i64 0, i64* %244, align 8
  %245 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %246 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %245, i32 0, i32 62
  store i64 0, i64* %246, align 8
  %247 = load i32, i32* @HNS_ROCE_V2_RSV_QPS, align 4
  %248 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %249 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %248, i32 0, i32 61
  store i32 %247, i32* %249, align 8
  %250 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %251 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %250, i32 0, i32 60
  store i64 0, i64* %251, align 8
  %252 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %253 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %252, i32 0, i32 59
  store i64 0, i64* %253, align 8
  %254 = load i8*, i8** @HNS_ROCE_CONTEXT_HOP_NUM, align 8
  %255 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %256 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %255, i32 0, i32 58
  store i8* %254, i8** %256, align 8
  %257 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %258 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %257, i32 0, i32 57
  store i64 0, i64* %258, align 8
  %259 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %260 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %259, i32 0, i32 56
  store i64 0, i64* %260, align 8
  %261 = load i8*, i8** @HNS_ROCE_CONTEXT_HOP_NUM, align 8
  %262 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %263 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %262, i32 0, i32 55
  store i8* %261, i8** %263, align 8
  %264 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %265 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %264, i32 0, i32 54
  store i64 0, i64* %265, align 8
  %266 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %267 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %266, i32 0, i32 53
  store i64 0, i64* %267, align 8
  %268 = load i8*, i8** @HNS_ROCE_CONTEXT_HOP_NUM, align 8
  %269 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %270 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %269, i32 0, i32 52
  store i8* %268, i8** %270, align 8
  %271 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %272 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %271, i32 0, i32 51
  store i64 0, i64* %272, align 8
  %273 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %274 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %273, i32 0, i32 50
  store i64 0, i64* %274, align 8
  %275 = load i8*, i8** @HNS_ROCE_CONTEXT_HOP_NUM, align 8
  %276 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %277 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %276, i32 0, i32 49
  store i8* %275, i8** %277, align 8
  %278 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %279 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %278, i32 0, i32 2
  store i32 2, i32* %279, align 8
  %280 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %281 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %280, i32 0, i32 48
  store i64 0, i64* %281, align 8
  %282 = load i32, i32* @HNS_ROCE_PBL_HOP_NUM, align 4
  %283 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %284 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %283, i32 0, i32 47
  store i32 %282, i32* %284, align 8
  %285 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %286 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %285, i32 0, i32 46
  store i64 0, i64* %286, align 8
  %287 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %288 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %287, i32 0, i32 45
  store i64 0, i64* %288, align 8
  %289 = load i32, i32* @HNS_ROCE_MTT_HOP_NUM, align 4
  %290 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %291 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %290, i32 0, i32 44
  store i32 %289, i32* %291, align 8
  %292 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %293 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %292, i32 0, i32 3
  store i32 2, i32* %293, align 4
  %294 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %295 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %294, i32 0, i32 4
  store i32 1, i32* %295, align 8
  %296 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %297 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %296, i32 0, i32 5
  store i32 2, i32* %297, align 4
  %298 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %299 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %298, i32 0, i32 6
  store i32 6, i32* %299, align 8
  %300 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %301 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %300, i32 0, i32 43
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* @HNS_ROCE_CQE_HOP_NUM, align 4
  %303 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %304 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %303, i32 0, i32 42
  store i32 %302, i32* %304, align 8
  %305 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %306 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %305, i32 0, i32 41
  store i64 0, i64* %306, align 8
  %307 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %308 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %307, i32 0, i32 40
  store i64 0, i64* %308, align 8
  %309 = load i32, i32* @HNS_ROCE_SRQWQE_HOP_NUM, align 4
  %310 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %311 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %310, i32 0, i32 39
  store i32 %309, i32* %311, align 8
  %312 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %313 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %312, i32 0, i32 38
  store i64 0, i64* %313, align 8
  %314 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %315 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %314, i32 0, i32 37
  store i64 0, i64* %315, align 8
  %316 = load i32, i32* @HNS_ROCE_IDX_HOP_NUM, align 4
  %317 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %318 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %317, i32 0, i32 36
  store i32 %316, i32* %318, align 8
  %319 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %320 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %319, i32 0, i32 35
  store i64 0, i64* %320, align 8
  %321 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %322 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %321, i32 0, i32 34
  store i64 0, i64* %322, align 8
  %323 = load i32, i32* @HNS_ROCE_EQE_HOP_NUM, align 4
  %324 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %325 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %324, i32 0, i32 33
  store i32 %323, i32* %325, align 8
  %326 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %327 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %326, i32 0, i32 32
  store i64 0, i64* %327, align 8
  %328 = load i32, i32* @HNS_ROCE_V2_TABLE_CHUNK_SIZE, align 4
  %329 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %330 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %329, i32 0, i32 31
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* @HNS_ROCE_CAP_FLAG_REREG_MR, align 4
  %332 = load i32, i32* @HNS_ROCE_CAP_FLAG_ROCE_V1_V2, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @HNS_ROCE_CAP_FLAG_RQ_INLINE, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @HNS_ROCE_CAP_FLAG_RECORD_DB, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @HNS_ROCE_CAP_FLAG_SQ_RECORD_DB, align 4
  %339 = or i32 %337, %338
  %340 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %341 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 4
  %342 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %343 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %342, i32 0, i32 1
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 33
  br i1 %347, label %348, label %356

348:                                              ; preds = %107
  %349 = load i32, i32* @HNS_ROCE_CAP_FLAG_MW, align 4
  %350 = load i32, i32* @HNS_ROCE_CAP_FLAG_FRMR, align 4
  %351 = or i32 %349, %350
  %352 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %353 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %352, i32 0, i32 7
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %348, %107
  %357 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %358 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %357, i32 0, i32 8
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 0
  store i32 1, i32* %360, align 4
  %361 = load i32, i32* @HNS_ROCE_V2_GID_INDEX_NUM, align 4
  %362 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %363 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %362, i32 0, i32 30
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  store i32 %361, i32* %365, align 4
  %366 = load i32, i32* @HNS_ROCE_V2_COMP_EQE_NUM, align 4
  %367 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %368 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %367, i32 0, i32 29
  store i32 %366, i32* %368, align 4
  %369 = load i32, i32* @HNS_ROCE_V2_ASYNC_EQE_NUM, align 4
  %370 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %371 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %370, i32 0, i32 28
  store i32 %369, i32* %371, align 8
  %372 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %373 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %372, i32 0, i32 27
  store i64 0, i64* %373, align 8
  %374 = load i32, i32* @IB_MTU_4096, align 4
  %375 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %376 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %375, i32 0, i32 26
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* @HNS_ROCE_V2_MAX_SRQ, align 4
  %378 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %379 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %378, i32 0, i32 25
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* @HNS_ROCE_V2_MAX_SRQ_WR, align 4
  %381 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %382 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %381, i32 0, i32 24
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* @HNS_ROCE_V2_MAX_SRQ_SGE, align 4
  %384 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %385 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %384, i32 0, i32 23
  store i32 %383, i32* %385, align 8
  %386 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %387 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %386, i32 0, i32 1
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 33
  br i1 %391, label %392, label %438

392:                                              ; preds = %356
  %393 = load i32, i32* @HNS_ROCE_CAP_FLAG_ATOMIC, align 4
  %394 = load i32, i32* @HNS_ROCE_CAP_FLAG_SRQ, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @HNS_ROCE_CAP_FLAG_QP_FLOW_CTRL, align 4
  %397 = or i32 %395, %396
  %398 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %399 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = or i32 %400, %397
  store i32 %401, i32* %399, align 4
  %402 = load i32, i32* @HNS_ROCE_V2_MAX_QPC_TIMER_NUM, align 4
  %403 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %404 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %403, i32 0, i32 22
  store i32 %402, i32* %404, align 4
  %405 = load i32, i32* @HNS_ROCE_V2_QPC_TIMER_ENTRY_SZ, align 4
  %406 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %407 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %406, i32 0, i32 21
  store i32 %405, i32* %407, align 8
  %408 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %409 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %408, i32 0, i32 20
  store i64 0, i64* %409, align 8
  %410 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %411 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %410, i32 0, i32 19
  store i64 0, i64* %411, align 8
  %412 = load i8*, i8** @HNS_ROCE_HOP_NUM_0, align 8
  %413 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %414 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %413, i32 0, i32 18
  store i8* %412, i8** %414, align 8
  %415 = load i32, i32* @HNS_ROCE_V2_MAX_CQC_TIMER_NUM, align 4
  %416 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %417 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %416, i32 0, i32 17
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* @HNS_ROCE_V2_CQC_TIMER_ENTRY_SZ, align 4
  %419 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %420 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %419, i32 0, i32 16
  store i32 %418, i32* %420, align 8
  %421 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %422 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %421, i32 0, i32 15
  store i64 0, i64* %422, align 8
  %423 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %424 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %423, i32 0, i32 14
  store i64 0, i64* %424, align 8
  %425 = load i8*, i8** @HNS_ROCE_HOP_NUM_0, align 8
  %426 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %427 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %426, i32 0, i32 13
  store i8* %425, i8** %427, align 8
  %428 = load i32, i32* @HNS_ROCE_V2_SCCC_ENTRY_SZ, align 4
  %429 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %430 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %429, i32 0, i32 12
  store i32 %428, i32* %430, align 8
  %431 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %432 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %431, i32 0, i32 11
  store i64 0, i64* %432, align 8
  %433 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %434 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %433, i32 0, i32 10
  store i64 0, i64* %434, align 8
  %435 = load i32, i32* @HNS_ROCE_SCCC_HOP_NUM, align 4
  %436 = load %struct.hns_roce_caps*, %struct.hns_roce_caps** %4, align 8
  %437 = getelementptr inbounds %struct.hns_roce_caps, %struct.hns_roce_caps* %436, i32 0, i32 9
  store i32 %435, i32* %437, align 8
  br label %438

438:                                              ; preds = %392, %356
  %439 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %440 = call i32 @hns_roce_v2_set_bt(%struct.hns_roce_dev* %439)
  store i32 %440, i32* %5, align 4
  %441 = load i32, i32* %5, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %438
  %444 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %445 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* %5, align 4
  %448 = call i32 @dev_err(i32 %446, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %447)
  br label %449

449:                                              ; preds = %443, %438
  %450 = load i32, i32* %5, align 4
  store i32 %450, i32* %2, align 4
  br label %451

451:                                              ; preds = %449, %99, %80, %67, %48, %36, %24, %12
  %452 = load i32, i32* %2, align 4
  ret i32 %452
}

declare dso_local i32 @hns_roce_cmq_query_hw_info(%struct.hns_roce_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hns_roce_query_fw_ver(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_config_global_param(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_query_pf_resource(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_query_pf_timer_resource(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_alloc_vf_resource(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_set_vf_switch_param(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @hns_roce_v2_set_bt(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
