; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32, i32 }
%struct.ib_srq_init_attr = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_srq = type { i64, i64, i32, %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.pvrdma_dev = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, %struct.pvrdma_srq** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i64 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_create_srq }
%struct.pvrdma_cmd_create_srq = type { i64, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_create_srq_resp }
%struct.pvrdma_cmd_create_srq_resp = type { i64 }
%struct.pvrdma_create_srq_resp = type { i64 }
%struct.pvrdma_create_srq = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"no shared receive queue support for kernel client\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_SRQT_BASIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"shared receive queue type %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"shared receive queue size invalid\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"create shared receive queue from user space\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PVRDMA_PAGE_DIR_MAX_PAGES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"overflow pages in shared receive queue\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"could not allocate page directory\0A\00", align 1
@PVRDMA_CMD_CREATE_SRQ = common dso_local global i32 0, align 4
@PVRDMA_CMD_CREATE_SRQ_RESP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"could not create shared receive queue, error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to copy back udata\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_create_srq(%struct.ib_srq* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.pvrdma_srq*, align 8
  %9 = alloca %struct.pvrdma_dev*, align 8
  %10 = alloca %union.pvrdma_cmd_req, align 8
  %11 = alloca %union.pvrdma_cmd_resp, align 8
  %12 = alloca %struct.pvrdma_cmd_create_srq*, align 8
  %13 = alloca %struct.pvrdma_cmd_create_srq_resp*, align 8
  %14 = alloca %struct.pvrdma_create_srq_resp, align 8
  %15 = alloca %struct.pvrdma_create_srq, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %19 = call %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq* %18)
  store %struct.pvrdma_srq* %19, %struct.pvrdma_srq** %8, align 8
  %20 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %21 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pvrdma_dev* @to_vdev(i32 %22)
  store %struct.pvrdma_dev* %23, %struct.pvrdma_dev** %9, align 8
  %24 = bitcast %union.pvrdma_cmd_req* %10 to %struct.pvrdma_cmd_create_srq*
  store %struct.pvrdma_cmd_create_srq* %24, %struct.pvrdma_cmd_create_srq** %12, align 8
  %25 = bitcast %union.pvrdma_cmd_resp* %11 to %struct.pvrdma_cmd_create_srq_resp*
  store %struct.pvrdma_cmd_create_srq_resp* %25, %struct.pvrdma_cmd_create_srq_resp** %13, align 8
  %26 = bitcast %struct.pvrdma_create_srq_resp* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 8, i1 false)
  %27 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %28 = icmp ne %struct.ib_udata* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %31 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_warn(i32* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %315

37:                                               ; preds = %3
  %38 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IB_SRQT_BASIC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %45 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i8*, ...) @dev_warn(i32* %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %315

54:                                               ; preds = %37
  %55 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %60 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %59, i32 0, i32 3
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %58, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %54
  %67 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %72 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %71, i32 0, i32 3
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %70, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %66, %54
  %79 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %80 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_warn(i32* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %315

86:                                               ; preds = %66
  %87 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %88 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %87, i32 0, i32 0
  %89 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %90 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @atomic_add_unless(i32* %88, i32 1, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %315

100:                                              ; preds = %86
  %101 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %102 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %101, i32 0, i32 7
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %105 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %104, i32 0, i32 6
  %106 = call i32 @refcount_set(i32* %105, i32 1)
  %107 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %108 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %107, i32 0, i32 5
  %109 = call i32 @init_completion(i32* %108)
  %110 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %111 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = call i32 @dev_dbg(i32* %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %116 = call i64 @ib_copy_from_udata(%struct.pvrdma_create_srq* %15, %struct.ib_udata* %115, i32 8)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load i32, i32* @EFAULT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %17, align 4
  br label %310

121:                                              ; preds = %100
  %122 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %123 = getelementptr inbounds %struct.pvrdma_create_srq, %struct.pvrdma_create_srq* %15, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.pvrdma_create_srq, %struct.pvrdma_create_srq* %15, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ib_umem_get(%struct.ib_udata* %122, i32 %124, i32 %126, i32 0, i32 0)
  %128 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %129 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %131 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @IS_ERR(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %121
  %136 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %137 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @PTR_ERR(i32 %138)
  store i32 %139, i32* %17, align 4
  br label %310

140:                                              ; preds = %121
  %141 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %142 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @ib_umem_page_count(i32 %143)
  %145 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %146 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %148 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %140
  %152 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %153 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PVRDMA_PAGE_DIR_MAX_PAGES, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151, %140
  %158 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %159 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = call i32 (i32*, i8*, ...) @dev_warn(i32* %161, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %17, align 4
  br label %305

165:                                              ; preds = %151
  %166 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %167 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %168 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %167, i32 0, i32 3
  %169 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %170 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @pvrdma_page_dir_init(%struct.pvrdma_dev* %166, %struct.TYPE_18__* %168, i64 %171, i32 0)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %165
  %176 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %177 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = call i32 (i32*, i8*, ...) @dev_warn(i32* %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %305

181:                                              ; preds = %165
  %182 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %183 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %182, i32 0, i32 3
  %184 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %185 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @pvrdma_page_dir_insert_umem(%struct.TYPE_18__* %183, i32 %186, i32 0)
  %188 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %189 = call i32 @memset(%struct.pvrdma_cmd_create_srq* %188, i32 0, i32 56)
  %190 = load i32, i32* @PVRDMA_CMD_CREATE_SRQ, align 4
  %191 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %192 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  %194 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %195 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %198 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %200 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %203 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %205 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call %struct.TYPE_17__* @to_vpd(i32 %206)
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %211 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 8
  %212 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %213 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %217 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  store i64 %215, i64* %218, align 8
  %219 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %220 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %224 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  store i64 %222, i64* %225, align 8
  %226 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %227 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %231 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 8
  %233 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %234 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.pvrdma_cmd_create_srq*, %struct.pvrdma_cmd_create_srq** %12, align 8
  %238 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, %struct.pvrdma_cmd_create_srq* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  %239 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %240 = load i32, i32* @PVRDMA_CMD_CREATE_SRQ_RESP, align 4
  %241 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %239, %union.pvrdma_cmd_req* %10, %union.pvrdma_cmd_resp* %11, i32 %240)
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %181
  %245 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %246 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %245, i32 0, i32 1
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i32, i32* %17, align 4
  %250 = call i32 (i32*, i8*, ...) @dev_warn(i32* %248, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %249)
  br label %300

251:                                              ; preds = %181
  %252 = load %struct.pvrdma_cmd_create_srq_resp*, %struct.pvrdma_cmd_create_srq_resp** %13, align 8
  %253 = getelementptr inbounds %struct.pvrdma_cmd_create_srq_resp, %struct.pvrdma_cmd_create_srq_resp* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %256 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %255, i32 0, i32 1
  store i64 %254, i64* %256, align 8
  %257 = load %struct.pvrdma_cmd_create_srq_resp*, %struct.pvrdma_cmd_create_srq_resp** %13, align 8
  %258 = getelementptr inbounds %struct.pvrdma_cmd_create_srq_resp, %struct.pvrdma_cmd_create_srq_resp* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.pvrdma_create_srq_resp, %struct.pvrdma_create_srq_resp* %14, i32 0, i32 0
  store i64 %259, i64* %260, align 8
  %261 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %262 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %261, i32 0, i32 2
  %263 = load i64, i64* %16, align 8
  %264 = call i32 @spin_lock_irqsave(i32* %262, i64 %263)
  %265 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %266 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %267 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %266, i32 0, i32 4
  %268 = load %struct.pvrdma_srq**, %struct.pvrdma_srq*** %267, align 8
  %269 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %270 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %273 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %272, i32 0, i32 3
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = urem i64 %271, %277
  %279 = getelementptr inbounds %struct.pvrdma_srq*, %struct.pvrdma_srq** %268, i64 %278
  store %struct.pvrdma_srq* %265, %struct.pvrdma_srq** %279, align 8
  %280 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %281 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %280, i32 0, i32 2
  %282 = load i64, i64* %16, align 8
  %283 = call i32 @spin_unlock_irqrestore(i32* %281, i64 %282)
  %284 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %285 = call i64 @ib_copy_to_udata(%struct.ib_udata* %284, %struct.pvrdma_create_srq_resp* %14, i32 8)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %251
  %288 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %289 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %288, i32 0, i32 1
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = call i32 (i32*, i8*, ...) @dev_warn(i32* %291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %293 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %294 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %293, i32 0, i32 4
  %295 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %296 = call i32 @pvrdma_destroy_srq(i32* %294, %struct.ib_udata* %295)
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %4, align 4
  br label %315

299:                                              ; preds = %251
  store i32 0, i32* %4, align 4
  br label %315

300:                                              ; preds = %244
  %301 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %302 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %303 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %302, i32 0, i32 3
  %304 = call i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %301, %struct.TYPE_18__* %303)
  br label %305

305:                                              ; preds = %300, %175, %157
  %306 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %8, align 8
  %307 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @ib_umem_release(i32 %308)
  br label %310

310:                                              ; preds = %305, %135, %118
  %311 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %9, align 8
  %312 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %311, i32 0, i32 0
  %313 = call i32 @atomic_dec(i32* %312)
  %314 = load i32, i32* %17, align 4
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %310, %299, %287, %97, %78, %43, %29
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq*) #1

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.pvrdma_create_srq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @ib_umem_page_count(i32) #1

declare dso_local i32 @pvrdma_page_dir_init(%struct.pvrdma_dev*, %struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @pvrdma_page_dir_insert_umem(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_create_srq*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @to_vpd(i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.pvrdma_create_srq_resp*, i32) #1

declare dso_local i32 @pvrdma_destroy_srq(i32*, %struct.ib_udata*) #1

declare dso_local i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev*, %struct.TYPE_18__*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
