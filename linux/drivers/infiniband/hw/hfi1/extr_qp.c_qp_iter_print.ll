; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_iter_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_iter_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rvt_qp_iter = type { i32, %struct.rvt_qp* }
%struct.rvt_qp = type { i64, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rvt_ack_entry*, %struct.hfi1_qp_priv* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }
%struct.rvt_ack_entry = type { i32, i32, i32 }
%struct.hfi1_qp_priv = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.rvt_swqe = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sdma_engine = type { i32 }
%struct.send_context = type { i32 }
%struct.rvt_srq = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [224 x i8] c"N %d %s QP %x R %u %s %u %u f=%x %u %u %u %u %u %u SPSN %x %x %x %x %x RPSN %x S(%u %u %u %u %u %u %u) R(%u %u %u) RQP %x LID %x SL %u MTU %u %u %u %u %u SDE %p,%u SC %p,%u SCQ %u %u PID %d OS %x %x E %x %x %x RNR %d %s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@qp_type_str = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"SRQ\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"RQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qp_iter_print(%struct.seq_file* %0, %struct.rvt_qp_iter* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.rvt_qp_iter*, align 8
  %5 = alloca %struct.rvt_swqe*, align 8
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca %struct.hfi1_qp_priv*, align 8
  %8 = alloca %struct.sdma_engine*, align 8
  %9 = alloca %struct.send_context*, align 8
  %10 = alloca %struct.rvt_ack_entry*, align 8
  %11 = alloca %struct.rvt_srq*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.rvt_qp_iter* %1, %struct.rvt_qp_iter** %4, align 8
  %12 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %4, align 8
  %13 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %12, i32 0, i32 1
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %13, align 8
  store %struct.rvt_qp* %14, %struct.rvt_qp** %6, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 34
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  store %struct.hfi1_qp_priv* %17, %struct.hfi1_qp_priv** %7, align 8
  store %struct.rvt_ack_entry* null, %struct.rvt_ack_entry** %10, align 8
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %19 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.rvt_srq* @ibsrq_to_rvtsrq(i32 %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi %struct.rvt_srq* [ %28, %23 ], [ null, %29 ]
  store %struct.rvt_srq* %31, %struct.rvt_srq** %11, align 8
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %33 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %34 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.sdma_engine* @qp_to_sdma_engine(%struct.rvt_qp* %32, i32 %35)
  store %struct.sdma_engine* %36, %struct.sdma_engine** %8, align 8
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %38 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %39 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %38, i32 0, i32 21
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %37, i32 %40)
  store %struct.rvt_swqe* %41, %struct.rvt_swqe** %5, align 8
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %43 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %44 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.send_context* @qp_to_send_context(%struct.rvt_qp* %42, i32 %45)
  store %struct.send_context* %46, %struct.send_context** %9, align 8
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 33
  %49 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %48, align 8
  %50 = icmp ne %struct.rvt_ack_entry* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %30
  %52 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %53 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %52, i32 0, i32 33
  %54 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %53, align 8
  %55 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %56 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %54, i64 %57
  store %struct.rvt_ack_entry* %58, %struct.rvt_ack_entry** %10, align 8
  br label %59

59:                                               ; preds = %51, %30
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.rvt_qp_iter*, %struct.rvt_qp_iter** %4, align 8
  %62 = getelementptr inbounds %struct.rvt_qp_iter, %struct.rvt_qp_iter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %65 = call i64 @qp_idle(%struct.rvt_qp* %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %70 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %74 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %73, i32 0, i32 32
  %75 = call i32 @atomic_read(i32* %74)
  %76 = load i32*, i32** @qp_type_str, align 8
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %84 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %83, i32 0, i32 31
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %87 = icmp ne %struct.rvt_swqe* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %59
  %89 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %90 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  br label %94

93:                                               ; preds = %59
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %92, %88 ], [ 0, %93 ]
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 30
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %100 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %99, i32 0, i32 0
  %101 = call i32 @iowait_sdma_pending(%struct.TYPE_13__* %100)
  %102 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %103 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %102, i32 0, i32 0
  %104 = call i32 @iowait_pio_pending(%struct.TYPE_13__* %103)
  %105 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %106 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = call i32 @list_empty(i32* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %113 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %112, i32 0, i32 29
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %116 = icmp ne %struct.rvt_swqe* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %94
  %118 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %119 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  br label %122

121:                                              ; preds = %94
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i32 [ %120, %117 ], [ 0, %121 ]
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 28
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %128 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %127, i32 0, i32 27
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %131 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %130, i32 0, i32 26
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %134 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %133, i32 0, i32 25
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %137 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %136, i32 0, i32 24
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %140 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %139, i32 0, i32 23
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %143 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %142, i32 0, i32 22
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %146 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %145, i32 0, i32 21
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %149 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %148, i32 0, i32 20
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %152 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %151, i32 0, i32 19
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %155 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %154, i32 0, i32 18
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %158 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %161 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %160, i32 0, i32 16
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %164 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %163, i32 0, i32 15
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %167 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %170 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %169, i32 0, i32 14
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %173 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.TYPE_12__* @to_idev(i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = call i32 @rvt_max_atomic(i32* %177)
  %179 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %180 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %183 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %182, i32 0, i32 12
  %184 = call i32 @rdma_ah_get_dlid(i32* %183)
  %185 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %186 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %185, i32 0, i32 12
  %187 = call i32 @rdma_ah_get_sl(i32* %186)
  %188 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %189 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %188, i32 0, i32 11
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %192 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %195 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %198 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %201 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sdma_engine*, %struct.sdma_engine** %8, align 8
  %204 = load %struct.sdma_engine*, %struct.sdma_engine** %8, align 8
  %205 = icmp ne %struct.sdma_engine* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %122
  %207 = load %struct.sdma_engine*, %struct.sdma_engine** %8, align 8
  %208 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  br label %211

210:                                              ; preds = %122
  br label %211

211:                                              ; preds = %210, %206
  %212 = phi i32 [ %209, %206 ], [ 0, %210 ]
  %213 = load %struct.send_context*, %struct.send_context** %9, align 8
  %214 = load %struct.send_context*, %struct.send_context** %9, align 8
  %215 = icmp ne %struct.send_context* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.send_context*, %struct.send_context** %9, align 8
  %218 = getelementptr inbounds %struct.send_context, %struct.send_context* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  br label %221

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220, %216
  %222 = phi i32 [ %219, %216 ], [ 0, %220 ]
  %223 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %224 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @ib_cq_head(i32 %226)
  %228 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %229 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @ib_cq_tail(i32 %231)
  %233 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %234 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %237 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %240 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %10, align 8
  %243 = icmp ne %struct.rvt_ack_entry* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %221
  %245 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %10, align 8
  %246 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  br label %249

248:                                              ; preds = %221
  br label %249

249:                                              ; preds = %248, %244
  %250 = phi i32 [ %247, %244 ], [ 0, %248 ]
  %251 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %10, align 8
  %252 = icmp ne %struct.rvt_ack_entry* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %10, align 8
  %255 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  br label %258

257:                                              ; preds = %249
  br label %258

258:                                              ; preds = %257, %253
  %259 = phi i32 [ %256, %253 ], [ 0, %257 ]
  %260 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %10, align 8
  %261 = icmp ne %struct.rvt_ack_entry* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %10, align 8
  %264 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  br label %267

266:                                              ; preds = %258
  br label %267

267:                                              ; preds = %266, %262
  %268 = phi i32 [ %265, %262 ], [ 0, %266 ]
  %269 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %270 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.rvt_srq*, %struct.rvt_srq** %11, align 8
  %273 = icmp ne %struct.rvt_srq* %272, null
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %276 = load %struct.rvt_srq*, %struct.rvt_srq** %11, align 8
  %277 = icmp ne %struct.rvt_srq* %276, null
  br i1 %277, label %278, label %283

278:                                              ; preds = %267
  %279 = load %struct.rvt_srq*, %struct.rvt_srq** %11, align 8
  %280 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  br label %288

283:                                              ; preds = %267
  %284 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %285 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  br label %288

288:                                              ; preds = %283, %278
  %289 = phi i32 [ %282, %278 ], [ %287, %283 ]
  %290 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %68, i32 %72, i32 %75, i32 %82, i32 %85, i32 %95, i32 %98, i32 %101, i32 %104, i32 %111, i32 %114, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %147, i32 %150, i32 %153, i32 %156, i32 %159, i32 %162, i32 %165, i64 %168, i32 %171, i32 %178, i32 %181, i32 %184, i32 %187, i32 %190, i32 %193, i32 %196, i32 %199, i32 %202, %struct.sdma_engine* %203, i32 %212, %struct.send_context* %213, i32 %222, i32 %227, i32 %232, i32 %235, i32 %238, i32 %241, i32 %250, i32 %259, i32 %268, i32 %271, i8* %275, i32 %289)
  ret void
}

declare dso_local %struct.rvt_srq* @ibsrq_to_rvtsrq(i32) #1

declare dso_local %struct.sdma_engine* @qp_to_sdma_engine(%struct.rvt_qp*, i32) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i32) #1

declare dso_local %struct.send_context* @qp_to_send_context(%struct.rvt_qp*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sdma_engine*, i32, %struct.send_context*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @qp_idle(%struct.rvt_qp*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @iowait_sdma_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @iowait_pio_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rvt_max_atomic(i32*) #1

declare dso_local %struct.TYPE_12__* @to_idev(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local i32 @rdma_ah_get_sl(i32*) #1

declare dso_local i32 @ib_cq_head(i32) #1

declare dso_local i32 @ib_cq_tail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
