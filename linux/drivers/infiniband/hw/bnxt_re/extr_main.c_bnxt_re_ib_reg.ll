; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_ib_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_ib_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.TYPE_21__, i32, %struct.TYPE_22__, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to register with netedev: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNXT_RE_FLAG_NETDEV_REGISTERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get chip context\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to get MSI-X vectors: %#x\0A\00", align 1
@BNXT_RE_FLAG_GOT_MSIX = common dso_local global i32 0, align 4
@BNXT_RE_MAX_QPC_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to allocate RCFW Channel: %#x\0A\00", align 1
@PBL_LVL_0 = common dso_local global i64 0, align 8
@BNXT_RE_AEQ_IDX = common dso_local global i64 0, align 8
@BNXT_QPLIB_CREQE_MAX_CNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to allocate CREQ: %#x\0A\00", align 1
@bnxt_re_aeq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to enable RCFW channel: %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to allocate QPLIB context: %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to allocate stats context: %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to initialize RCFW: %#x\0A\00", align 1
@BNXT_RE_FLAG_RCFW_CHANNEL_EN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to allocate resources: %#x\0A\00", align 1
@BNXT_RE_FLAG_RESOURCES_ALLOCATED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to initialize resources: %#x\0A\00", align 1
@BNXT_RE_FLAG_RESOURCES_INITIALIZED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"RoCE priority not yet configured\0A\00", align 1
@bnxt_re_worker = common dso_local global i32 0, align 4
@BNXT_RE_FLAG_QOS_WORK_REG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Failed to register with IB: %#x\0A\00", align 1
@BNXT_RE_FLAG_IBDEV_REGISTERED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Device registered successfully\00", align 1
@BNXT_RE_FLAG_ISSUE_ROCE_STATS = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*)* @bnxt_re_ib_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_ib_reg(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %3, align 8
  %12 = call i32 (...) @rtnl_lock()
  store i32 1, i32* %9, align 4
  %13 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %14 = call i32 @bnxt_re_register_netdev(%struct.bnxt_re_dev* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = call i32 (...) @rtnl_unlock()
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %350

23:                                               ; preds = %1
  %24 = load i32, i32* @BNXT_RE_FLAG_NETDEV_REGISTERED, align 4
  %25 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %25, i32 0, i32 5
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %29 = call i32 @bnxt_re_setup_chip_ctx(%struct.bnxt_re_dev* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %34 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %33)
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %350

38:                                               ; preds = %23
  %39 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %40 = call i32 @bnxt_re_get_sriov_func_type(%struct.bnxt_re_dev* %39)
  %41 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %42 = call i32 @bnxt_re_request_msix(%struct.bnxt_re_dev* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %340

50:                                               ; preds = %38
  %51 = load i32, i32* @BNXT_RE_FLAG_GOT_MSIX, align 4
  %52 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %53 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %52, i32 0, i32 5
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %56 = call i32 @bnxt_re_query_hwrm_intf_version(%struct.bnxt_re_dev* %55)
  %57 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %57, i32 0, i32 3
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %63 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %62, i32 0, i32 0
  %64 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %64, i32 0, i32 2
  %66 = load i32, i32* @BNXT_RE_MAX_QPC_COUNT, align 4
  %67 = call i32 @bnxt_qplib_alloc_rcfw_channel(i32 %61, %struct.TYPE_21__* %63, %struct.TYPE_22__* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %50
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %340

73:                                               ; preds = %50
  %74 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %75 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %74, i32 0, i32 1
  %76 = call i32 @bnxt_qplib_get_ring_type(i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %78 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load i64, i64* @PBL_LVL_0, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %4, align 8
  %86 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %87 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %92 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %7, align 4
  %99 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %100 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %99, i32 0, i32 11
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = load i64, i64* @BNXT_RE_AEQ_IDX, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  %106 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i64, i64* @BNXT_QPLIB_CREQE_MAX_CNT, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %114 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = call i32 @bnxt_re_net_ring_alloc(%struct.bnxt_re_dev* %106, i32* %107, i32 %108, i32 %109, i64 %111, i32 %112, i32* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %73
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %336

122:                                              ; preds = %73
  %123 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %124 = load i64, i64* @BNXT_RE_AEQ_IDX, align 8
  %125 = call i32 @bnxt_re_get_nqdb_offset(%struct.bnxt_re_dev* %123, i64 %124)
  store i32 %125, i32* %5, align 4
  %126 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %127 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %126, i32 0, i32 11
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = load i64, i64* @BNXT_RE_AEQ_IDX, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %8, align 4
  %133 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %134 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %133, i32 0, i32 3
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %139 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %143 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @bnxt_qplib_enable_rcfw_channel(i32 %137, %struct.TYPE_21__* %139, i32 %140, i32 %141, i32 %144, i32* @bnxt_re_aeq_handler)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %122
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  br label %325

151:                                              ; preds = %122
  %152 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %153 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %152, i32 0, i32 0
  %154 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %155 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %154, i32 0, i32 10
  %156 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %157 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bnxt_qplib_get_dev_attr(%struct.TYPE_21__* %153, i32* %155, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %321

163:                                              ; preds = %151
  %164 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %165 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %170 = call i32 @bnxt_re_set_resource_limits(%struct.bnxt_re_dev* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %173 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %172, i32 0, i32 3
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %178 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %177, i32 0, i32 2
  %179 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %180 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %179, i32 0, i32 1
  %181 = call i32 @bnxt_qplib_is_chip_gen_p5(i32* %180)
  %182 = call i32 @bnxt_qplib_alloc_ctx(i32 %176, %struct.TYPE_22__* %178, i32 0, i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %171
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %321

188:                                              ; preds = %171
  %189 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %190 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %191 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %196 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = call i32 @bnxt_re_net_stats_ctx_alloc(%struct.bnxt_re_dev* %189, i32 %194, i32* %198)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %188
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  br label %312

205:                                              ; preds = %188
  %206 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %207 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %206, i32 0, i32 0
  %208 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %209 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %208, i32 0, i32 2
  %210 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %211 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @bnxt_qplib_init_rcfw(%struct.TYPE_21__* %207, %struct.TYPE_22__* %209, i32 %212)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %205
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  br label %304

219:                                              ; preds = %205
  %220 = load i32, i32* @BNXT_RE_FLAG_RCFW_CHANNEL_EN, align 4
  %221 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %222 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %221, i32 0, i32 5
  %223 = call i32 @set_bit(i32 %220, i32* %222)
  %224 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %225 = call i32 @bnxt_re_alloc_res(%struct.bnxt_re_dev* %224)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %229)
  br label %340

231:                                              ; preds = %219
  %232 = load i32, i32* @BNXT_RE_FLAG_RESOURCES_ALLOCATED, align 4
  %233 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %234 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %233, i32 0, i32 5
  %235 = call i32 @set_bit(i32 %232, i32* %234)
  %236 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %237 = call i32 @bnxt_re_init_res(%struct.bnxt_re_dev* %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %231
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %241)
  br label %340

243:                                              ; preds = %231
  %244 = load i32, i32* @BNXT_RE_FLAG_RESOURCES_INITIALIZED, align 4
  %245 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %246 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %245, i32 0, i32 5
  %247 = call i32 @set_bit(i32 %244, i32* %246)
  %248 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %249 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %272, label %252

252:                                              ; preds = %243
  %253 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %254 = call i32 @bnxt_re_setup_qos(%struct.bnxt_re_dev* %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %252
  %260 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %261 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %260, i32 0, i32 8
  %262 = load i32, i32* @bnxt_re_worker, align 4
  %263 = call i32 @INIT_DELAYED_WORK(i32* %261, i32 %262)
  %264 = load i32, i32* @BNXT_RE_FLAG_QOS_WORK_REG, align 4
  %265 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %266 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %265, i32 0, i32 5
  %267 = call i32 @set_bit(i32 %264, i32* %266)
  %268 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %269 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %268, i32 0, i32 8
  %270 = call i32 @msecs_to_jiffies(i32 30000)
  %271 = call i32 @schedule_delayed_work(i32* %269, i32 %270)
  br label %272

272:                                              ; preds = %259, %243
  %273 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %9, align 4
  %274 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %275 = call i32 @bnxt_re_register_ib(%struct.bnxt_re_dev* %274)
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %272
  %279 = load i32, i32* %11, align 4
  %280 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %279)
  br label %340

281:                                              ; preds = %272
  %282 = load i32, i32* @BNXT_RE_FLAG_IBDEV_REGISTERED, align 4
  %283 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %284 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %283, i32 0, i32 5
  %285 = call i32 @set_bit(i32 %282, i32* %284)
  %286 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %287 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %286)
  %288 = call i32 @dev_info(i32 %287, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %289 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %290 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %289, i32 0, i32 4
  %291 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %292 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %291, i32 0, i32 7
  %293 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %294 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %293, i32 0, i32 6
  %295 = call i32 @ib_get_eth_speed(i32* %290, i32 1, i32* %292, i32* %294)
  %296 = load i32, i32* @BNXT_RE_FLAG_ISSUE_ROCE_STATS, align 4
  %297 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %298 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %297, i32 0, i32 5
  %299 = call i32 @set_bit(i32 %296, i32* %298)
  %300 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %301 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %300, i32 0, i32 4
  %302 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %303 = call i32 @bnxt_re_dispatch_event(i32* %301, i32* null, i32 1, i32 %302)
  store i32 0, i32* %2, align 4
  br label %350

304:                                              ; preds = %216
  %305 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %306 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %307 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @bnxt_re_net_stats_ctx_free(%struct.bnxt_re_dev* %305, i32 %310)
  br label %312

312:                                              ; preds = %304, %202
  %313 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %314 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %313, i32 0, i32 3
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %319 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %318, i32 0, i32 2
  %320 = call i32 @bnxt_qplib_free_ctx(i32 %317, %struct.TYPE_22__* %319)
  br label %321

321:                                              ; preds = %312, %185, %162
  %322 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %323 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %322, i32 0, i32 0
  %324 = call i32 @bnxt_qplib_disable_rcfw_channel(%struct.TYPE_21__* %323)
  br label %325

325:                                              ; preds = %321, %148
  %326 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %327 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %326, i32 0, i32 1
  %328 = call i32 @bnxt_qplib_get_ring_type(i32* %327)
  store i32 %328, i32* %10, align 4
  %329 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %330 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %331 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = call i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev* %329, i32 %333, i32 %334)
  br label %336

336:                                              ; preds = %325, %119
  %337 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %338 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %337, i32 0, i32 0
  %339 = call i32 @bnxt_qplib_free_rcfw_channel(%struct.TYPE_21__* %338)
  br label %340

340:                                              ; preds = %336, %278, %240, %228, %70, %45
  %341 = load i32, i32* %9, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %340
  %344 = call i32 (...) @rtnl_lock()
  br label %345

345:                                              ; preds = %343, %340
  %346 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %347 = call i32 @bnxt_re_ib_unreg(%struct.bnxt_re_dev* %346)
  %348 = call i32 (...) @rtnl_unlock()
  %349 = load i32, i32* %11, align 4
  store i32 %349, i32* %2, align 4
  br label %350

350:                                              ; preds = %345, %281, %32, %17
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @bnxt_re_register_netdev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_re_setup_chip_ctx(%struct.bnxt_re_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_get_sriov_func_type(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_request_msix(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_query_hwrm_intf_version(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_alloc_rcfw_channel(i32, %struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @bnxt_qplib_get_ring_type(i32*) #1

declare dso_local i32 @bnxt_re_net_ring_alloc(%struct.bnxt_re_dev*, i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @bnxt_re_get_nqdb_offset(%struct.bnxt_re_dev*, i64) #1

declare dso_local i32 @bnxt_qplib_enable_rcfw_channel(i32, %struct.TYPE_21__*, i32, i32, i32, i32*) #1

declare dso_local i32 @bnxt_qplib_get_dev_attr(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @bnxt_re_set_resource_limits(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_alloc_ctx(i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_is_chip_gen_p5(i32*) #1

declare dso_local i32 @bnxt_re_net_stats_ctx_alloc(%struct.bnxt_re_dev*, i32, i32*) #1

declare dso_local i32 @bnxt_qplib_init_rcfw(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @bnxt_re_alloc_res(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_init_res(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_setup_qos(%struct.bnxt_re_dev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bnxt_re_register_ib(%struct.bnxt_re_dev*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ib_get_eth_speed(i32*, i32, i32*, i32*) #1

declare dso_local i32 @bnxt_re_dispatch_event(i32*, i32*, i32, i32) #1

declare dso_local i32 @bnxt_re_net_stats_ctx_free(%struct.bnxt_re_dev*, i32) #1

declare dso_local i32 @bnxt_qplib_free_ctx(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @bnxt_qplib_disable_rcfw_channel(%struct.TYPE_21__*) #1

declare dso_local i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_free_rcfw_channel(%struct.TYPE_21__*) #1

declare dso_local i32 @bnxt_re_ib_unreg(%struct.bnxt_re_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
