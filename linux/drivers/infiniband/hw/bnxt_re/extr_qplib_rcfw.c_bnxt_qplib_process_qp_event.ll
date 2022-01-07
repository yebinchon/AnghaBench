; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_process_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_process_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i64, i32, %struct.TYPE_5__*, i32, %struct.bnxt_qplib_crsq*, i32 (%struct.bnxt_qplib_rcfw*, %struct.creq_qp_event*, %struct.bnxt_qplib_qp*)*, %struct.TYPE_4__*, %struct.bnxt_qplib_hwq }
%struct.TYPE_5__ = type { i32 }
%struct.bnxt_qplib_crsq = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.bnxt_qplib_qp = type opaque
%struct.TYPE_4__ = type { %struct.bnxt_qplib_qp.0* }
%struct.bnxt_qplib_qp.0 = type { i32 }
%struct.bnxt_qplib_hwq = type { i32, i32 }
%struct.creq_qp_event = type { i32, i32 }
%struct.creq_qp_error_notification = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Received QP error notification\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"qpid 0x%x, req_err=0x%x, resp_err=0x%x\0A\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@RCFW_CMD_IS_BLOCKING = common dso_local global i64 0, align 8
@RCFW_MAX_COOKIE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"CMD %s cookie sent=%#x, recd=%#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mismatch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"collision\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"CMD bit %d was not requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_rcfw*, %struct.creq_qp_event*)* @bnxt_qplib_process_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_process_qp_event(%struct.bnxt_qplib_rcfw* %0, %struct.creq_qp_event* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %4 = alloca %struct.creq_qp_event*, align 8
  %5 = alloca %struct.bnxt_qplib_hwq*, align 8
  %6 = alloca %struct.creq_qp_error_notification*, align 8
  %7 = alloca %struct.bnxt_qplib_crsq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnxt_qplib_qp.0*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %3, align 8
  store %struct.creq_qp_event* %1, %struct.creq_qp_event** %4, align 8
  %15 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %15, i32 0, i32 7
  store %struct.bnxt_qplib_hwq* %16, %struct.bnxt_qplib_hwq** %5, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.creq_qp_event*, %struct.creq_qp_event** %4, align 8
  %18 = getelementptr inbounds %struct.creq_qp_event, %struct.creq_qp_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %65 [
    i32 128, label %20
  ]

20:                                               ; preds = %2
  %21 = load %struct.creq_qp_event*, %struct.creq_qp_event** %4, align 8
  %22 = bitcast %struct.creq_qp_event* %21 to %struct.creq_qp_error_notification*
  store %struct.creq_qp_error_notification* %22, %struct.creq_qp_error_notification** %6, align 8
  %23 = load %struct.creq_qp_error_notification*, %struct.creq_qp_error_notification** %6, align 8
  %24 = getelementptr inbounds %struct.creq_qp_error_notification, %struct.creq_qp_error_notification* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %27, i32 0, i32 6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.bnxt_qplib_qp.0*, %struct.bnxt_qplib_qp.0** %32, align 8
  store %struct.bnxt_qplib_qp.0* %33, %struct.bnxt_qplib_qp.0** %9, align 8
  %34 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %40 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.creq_qp_error_notification*, %struct.creq_qp_error_notification** %6, align 8
  %45 = getelementptr inbounds %struct.creq_qp_error_notification, %struct.creq_qp_error_notification* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.creq_qp_error_notification*, %struct.creq_qp_error_notification** %6, align 8
  %48 = getelementptr inbounds %struct.creq_qp_error_notification, %struct.creq_qp_error_notification* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %46, i32 %49)
  %51 = load %struct.bnxt_qplib_qp.0*, %struct.bnxt_qplib_qp.0** %9, align 8
  %52 = icmp ne %struct.bnxt_qplib_qp.0* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %20
  br label %188

54:                                               ; preds = %20
  %55 = load %struct.bnxt_qplib_qp.0*, %struct.bnxt_qplib_qp.0** %9, align 8
  %56 = call i32 @bnxt_qplib_mark_qp_error(%struct.bnxt_qplib_qp.0* %55)
  %57 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %57, i32 0, i32 5
  %59 = load i32 (%struct.bnxt_qplib_rcfw*, %struct.creq_qp_event*, %struct.bnxt_qplib_qp*)*, i32 (%struct.bnxt_qplib_rcfw*, %struct.creq_qp_event*, %struct.bnxt_qplib_qp*)** %58, align 8
  %60 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %61 = load %struct.creq_qp_event*, %struct.creq_qp_event** %4, align 8
  %62 = load %struct.bnxt_qplib_qp.0*, %struct.bnxt_qplib_qp.0** %9, align 8
  %63 = bitcast %struct.bnxt_qplib_qp.0* %62 to %struct.bnxt_qplib_qp*
  %64 = call i32 %59(%struct.bnxt_qplib_rcfw* %60, %struct.creq_qp_event* %61, %struct.bnxt_qplib_qp* %63)
  br label %188

65:                                               ; preds = %2
  %66 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %67 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %70 = call i32 @spin_lock_irqsave_nested(i32* %67, i64 %68, i32 %69)
  %71 = load %struct.creq_qp_event*, %struct.creq_qp_event** %4, align 8
  %72 = getelementptr inbounds %struct.creq_qp_event, %struct.creq_qp_event* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le16_to_cpu(i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load %struct.creq_qp_event*, %struct.creq_qp_event** %4, align 8
  %76 = getelementptr inbounds %struct.creq_qp_event, %struct.creq_qp_event* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @RCFW_CMD_IS_BLOCKING, align 8
  %80 = and i64 %78, %79
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* @RCFW_MAX_COOKIE_VALUE, align 8
  %82 = load i64, i64* %12, align 8
  %83 = and i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %86 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = urem i64 %84, %87
  store i64 %88, i64* %10, align 8
  %89 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %90 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %89, i32 0, i32 4
  %91 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %91, i64 %92
  store %struct.bnxt_qplib_crsq* %93, %struct.bnxt_qplib_crsq** %7, align 8
  %94 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %95 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = icmp ne %struct.TYPE_6__* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %65
  %99 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %100 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %108 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load %struct.creq_qp_event*, %struct.creq_qp_event** %4, align 8
  %111 = call i32 @memcpy(%struct.TYPE_6__* %109, %struct.creq_qp_event* %110, i32 8)
  %112 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %113 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %112, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %113, align 8
  br label %153

114:                                              ; preds = %98, %65
  %115 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %116 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = icmp ne %struct.TYPE_6__* %117, null
  br i1 %118, label %119, label %152

119:                                              ; preds = %114
  %120 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %121 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %119
  %127 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %128 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %132 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = icmp ne %struct.TYPE_6__* %133, null
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %137 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %138 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = icmp ne %struct.TYPE_6__* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %126
  %142 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %143 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  br label %148

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147, %141
  %149 = phi i32 [ %146, %141 ], [ 0, %147 ]
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %136, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %119, %114
  br label %153

153:                                              ; preds = %152, %106
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %156 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @test_and_clear_bit(i64 %154, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %162 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %161, i32 0, i32 2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64, i64* %10, align 8
  %166 = call i32 @dev_warn(i32* %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %165)
  br label %167

167:                                              ; preds = %160, %153
  %168 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %169 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %172 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.bnxt_qplib_crsq*, %struct.bnxt_qplib_crsq** %7, align 8
  %176 = getelementptr inbounds %struct.bnxt_qplib_crsq, %struct.bnxt_qplib_crsq* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  %177 = load i64, i64* %11, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %167
  %180 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %181 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %180, i32 0, i32 1
  %182 = call i32 @wake_up(i32* %181)
  br label %183

183:                                              ; preds = %179, %167
  %184 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %5, align 8
  %185 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %184, i32 0, i32 0
  %186 = load i64, i64* %8, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  br label %188

188:                                              ; preds = %183, %54, %53
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @bnxt_qplib_mark_qp_error(%struct.bnxt_qplib_qp.0*) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.creq_qp_event*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i64, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
