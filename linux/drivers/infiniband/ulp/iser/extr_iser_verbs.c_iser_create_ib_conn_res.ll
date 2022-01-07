; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_create_ib_conn_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_create_ib_conn_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.ib_conn = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i64, %struct.iser_device* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iser_device = type { i32, i32, %struct.ib_device*, %struct.TYPE_8__* }
%struct.ib_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.iser_conn = type { i8* }
%struct.ib_qp_init_attr = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"cq index %d used for ib_conn %p\0A\00", align 1
@iser_qp_event_callback = common dso_local global i32 0, align 4
@ISER_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@ISER_QP_SIG_MAX_REQ_DTOS = common dso_local global i64 0, align 8
@IB_QP_CREATE_INTEGRITY_EN = common dso_local global i32 0, align 4
@ISER_QP_MAX_REQ_DTOS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"device %s supports max_send_wr %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"setting conn %p cma_id %p qp %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unable to alloc mem or create resource, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_conn*)* @iser_create_ib_conn_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_create_ib_conn_res(%struct.ib_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_conn*, align 8
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.iser_device*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.ib_qp_init_attr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_conn* %0, %struct.ib_conn** %3, align 8
  %11 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %12 = call %struct.iser_conn* @to_iser_conn(%struct.ib_conn* %11)
  store %struct.iser_conn* %12, %struct.iser_conn** %4, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %16 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %15, i32 0, i32 4
  %17 = load %struct.iser_device*, %struct.iser_device** %16, align 8
  %18 = icmp eq %struct.iser_device* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %22 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %21, i32 0, i32 4
  %23 = load %struct.iser_device*, %struct.iser_device** %22, align 8
  store %struct.iser_device* %23, %struct.iser_device** %5, align 8
  %24 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %25 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %24, i32 0, i32 2
  %26 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  store %struct.ib_device* %26, %struct.ib_device** %6, align 8
  %27 = call i32 @memset(%struct.ib_qp_init_attr* %7, i32 0, i32 64)
  %28 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ig, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %56, %1
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %32 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %37 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %45 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %43, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %61 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %60, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %67 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %66, i32 0, i32 0
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %69 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ig, i32 0, i32 0))
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %77 = call i32 (i8*, ...) @iser_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %75, %struct.ib_conn* %76)
  %78 = load i32, i32* @iser_qp_event_callback, align 4
  %79 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 7
  store i32 %78, i32* %79, align 8
  %80 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %81 = bitcast %struct.ib_conn* %80 to i8*
  %82 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 6
  store i8* %81, i8** %82, align 8
  %83 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %84 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 5
  store i32 %87, i32* %88, align 8
  %89 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %90 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 4
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @ISER_QP_MAX_RECV_DTOS, align 4
  %96 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 2, i32* %99, align 8
  %100 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %103 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 3
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @IB_QPT_RC, align 4
  %105 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %107 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %59
  %111 = load i64, i64* @ISER_QP_SIG_MAX_REQ_DTOS, align 8
  %112 = add nsw i64 %111, 1
  %113 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @IB_QP_CREATE_INTEGRITY_EN, align 4
  %116 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 8
  %119 = load i64, i64* @ISER_QP_SIG_MAX_REQ_DTOS, align 8
  %120 = call i8* @ISER_GET_MAX_XMIT_CMDS(i64 %119)
  %121 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %122 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %164

123:                                              ; preds = %59
  %124 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %125 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ISER_QP_MAX_REQ_DTOS, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load i64, i64* @ISER_QP_MAX_REQ_DTOS, align 8
  %132 = add nsw i64 %131, 1
  %133 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* @ISER_QP_MAX_REQ_DTOS, align 8
  %136 = call i8* @ISER_GET_MAX_XMIT_CMDS(i64 %135)
  %137 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %138 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %163

139:                                              ; preds = %123
  %140 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %141 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %7, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %147 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @ISER_GET_MAX_XMIT_CMDS(i64 %149)
  %151 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %152 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %154 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %153, i32 0, i32 2
  %155 = load %struct.ib_device*, %struct.ib_device** %154, align 8
  %156 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %155, i32 0, i32 1
  %157 = call i32 @dev_name(i32* %156)
  %158 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %159 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @iser_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %157, i64 %161)
  br label %163

163:                                              ; preds = %139, %130
  br label %164

164:                                              ; preds = %163, %110
  %165 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %166 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %169 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @rdma_create_qp(%struct.TYPE_9__* %167, i32 %170, %struct.ib_qp_init_attr* %7)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %194

175:                                              ; preds = %164
  %176 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %177 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %176, i32 0, i32 1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %182 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %184 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %185 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %184, i32 0, i32 1
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %188 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @iser_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.ib_conn* %183, %struct.TYPE_9__* %186, i32 %191)
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %2, align 4
  br label %206

194:                                              ; preds = %174
  %195 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ig, i32 0, i32 0))
  %196 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %197 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, -1
  store i64 %201, i64* %199, align 8
  %202 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ig, i32 0, i32 0))
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @iser_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %194, %175
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.iser_conn* @to_iser_conn(%struct.ib_conn*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iser_info(i8*, ...) #1

declare dso_local i8* @ISER_GET_MAX_XMIT_CMDS(i64) #1

declare dso_local i32 @iser_dbg(i8*, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_9__*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
