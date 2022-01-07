; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_cq_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_cq_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_cq = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_7__, %struct.rvt_dev_info*, %struct.rvt_k_cq_wc*, %struct.rvt_cq_wc*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.rvt_dev_info = type { i32 }
%struct.rvt_k_cq_wc = type { i32, i32, %struct.ib_wc* }
%struct.rvt_cq_wc = type { i32, i32, %struct.ib_uverbs_wc* }
%struct.ib_uverbs_wc = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ib_wc = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [13 x i8] c"CQ is full!\0A\00", align 1
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i64 0, align 8
@IB_CQ_SOLICITED = common dso_local global i64 0, align 8
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@RVT_CQ_NONE = common dso_local global i64 0, align 8
@comp_vector_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_cq_enter(%struct.rvt_cq* %0, %struct.ib_wc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_cq*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_uverbs_wc*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.rvt_cq_wc*, align 8
  %11 = alloca %struct.rvt_k_cq_wc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rvt_dev_info*, align 8
  %17 = alloca %struct.ib_event.0, align 8
  store %struct.rvt_cq* %0, %struct.rvt_cq** %5, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_uverbs_wc* null, %struct.ib_uverbs_wc** %8, align 8
  store %struct.ib_wc* null, %struct.ib_wc** %9, align 8
  store %struct.rvt_cq_wc* null, %struct.rvt_cq_wc** %10, align 8
  store %struct.rvt_k_cq_wc* null, %struct.rvt_k_cq_wc** %11, align 8
  %18 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %19 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %18, i32 0, i32 2
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %23 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %28 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %27, i32 0, i32 9
  %29 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %28, align 8
  store %struct.rvt_cq_wc* %29, %struct.rvt_cq_wc** %10, align 8
  %30 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %10, align 8
  %31 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %30, i32 0, i32 2
  %32 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %31, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %32, i64 0
  store %struct.ib_uverbs_wc* %33, %struct.ib_uverbs_wc** %8, align 8
  %34 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %10, align 8
  %35 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @RDMA_READ_UAPI_ATOMIC(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %10, align 8
  %39 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RDMA_READ_UAPI_ATOMIC(i32 %40)
  store i32 %41, i32* %15, align 4
  br label %56

42:                                               ; preds = %3
  %43 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %44 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %43, i32 0, i32 8
  %45 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %44, align 8
  store %struct.rvt_k_cq_wc* %45, %struct.rvt_k_cq_wc** %11, align 8
  %46 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %11, align 8
  %47 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %46, i32 0, i32 2
  %48 = load %struct.ib_wc*, %struct.ib_wc** %47, align 8
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %48, i64 0
  store %struct.ib_wc* %49, %struct.ib_wc** %9, align 8
  %50 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %11, align 8
  %51 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  %53 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %11, align 8
  %54 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %42, %26
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %59 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp uge i32 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %65 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %77 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i1 [ true, %71 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %131

85:                                               ; preds = %80
  %86 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %87 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %86, i32 0, i32 7
  %88 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %87, align 8
  store %struct.rvt_dev_info* %88, %struct.rvt_dev_info** %16, align 8
  %89 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %90 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %16, align 8
  %95 = call i32 @rvt_pr_err_ratelimited(%struct.rvt_dev_info* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %85
  %97 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %98 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %100 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %99, i32 0, i32 2
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %104 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.ib_event*, i32)* %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %96
  %109 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %110 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %17, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %115 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %17, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %117, align 8
  %118 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %119 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %17, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %121 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %122, align 8
  %124 = bitcast %struct.ib_event.0* %17 to %struct.ib_event*
  %125 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %126 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 %123(%struct.ib_event* %124, i32 %128)
  br label %130

130:                                              ; preds = %108, %96
  store i32 0, i32* %4, align 4
  br label %313

131:                                              ; preds = %80
  %132 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %133 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @trace_rvt_cq_enter(%struct.rvt_cq* %132, %struct.ib_wc* %133, i32 %134)
  %136 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %137 = icmp ne %struct.ib_uverbs_wc* %136, null
  br i1 %137, label %138, label %261

138:                                              ; preds = %131
  %139 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %140 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %139, i32 0, i32 13
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %142, i64 %144
  %146 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %145, i32 0, i32 13
  store i32 %141, i32* %146, align 8
  %147 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %148 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %150, i64 %152
  %154 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %153, i32 0, i32 0
  store i64 %149, i64* %154, align 8
  %155 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %156 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %158, i64 %160
  %162 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %161, i32 0, i32 12
  store i32 %157, i32* %162, align 4
  %163 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %164 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %163, i32 0, i32 11
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %166, i64 %168
  %170 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %169, i32 0, i32 11
  store i32 %165, i32* %170, align 8
  %171 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %172 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %175 = load i32, i32* %13, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %174, i64 %176
  %178 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %177, i32 0, i32 10
  store i32 %173, i32* %178, align 4
  %179 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %180 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %184 = load i32, i32* %13, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %183, i64 %185
  %187 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i32 %182, i32* %188, align 8
  %189 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %190 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %189, i32 0, i32 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %194, i64 %196
  %198 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %197, i32 0, i32 8
  store i32 %193, i32* %198, align 4
  %199 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %200 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %202, i64 %204
  %206 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %205, i32 0, i32 7
  store i32 %201, i32* %206, align 8
  %207 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %208 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %211 = load i32, i32* %13, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %210, i64 %212
  %214 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %213, i32 0, i32 6
  store i32 %209, i32* %214, align 4
  %215 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %216 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %219 = load i32, i32* %13, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %218, i64 %220
  %222 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %221, i32 0, i32 5
  store i32 %217, i32* %222, align 8
  %223 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %224 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ib_lid_cpu16(i32 %225)
  %227 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %228 = load i32, i32* %13, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %227, i64 %229
  %231 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %230, i32 0, i32 4
  store i32 %226, i32* %231, align 4
  %232 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %233 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %236 = load i32, i32* %13, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %235, i64 %237
  %239 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %238, i32 0, i32 3
  store i32 %234, i32* %239, align 8
  %240 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %241 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %244 = load i32, i32* %13, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %243, i64 %245
  %247 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %246, i32 0, i32 2
  store i32 %242, i32* %247, align 4
  %248 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %249 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %252 = load i32, i32* %13, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %251, i64 %253
  %255 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %254, i32 0, i32 1
  store i32 %250, i32* %255, align 8
  %256 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %10, align 8
  %257 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = call i32 @RDMA_WRITE_UAPI_ATOMIC(i32 %258, i32 %259)
  br label %272

261:                                              ; preds = %131
  %262 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %263 = load i32, i32* %13, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %262, i64 %264
  %266 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %267 = bitcast %struct.ib_wc* %265 to i8*
  %268 = bitcast %struct.ib_wc* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 72, i1 false)
  %269 = load i32, i32* %14, align 4
  %270 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %11, align 8
  %271 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %261, %138
  %273 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %274 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @IB_CQ_NEXT_COMP, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %293, label %278

278:                                              ; preds = %272
  %279 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %280 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @IB_CQ_SOLICITED, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %308

284:                                              ; preds = %278
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %284
  %288 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %289 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @IB_WC_SUCCESS, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %287, %284, %272
  %294 = load i64, i64* @RVT_CQ_NONE, align 8
  %295 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %296 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %295, i32 0, i32 1
  store i64 %294, i64* %296, align 8
  %297 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %298 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %302 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @comp_vector_wq, align 4
  %305 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %306 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %305, i32 0, i32 3
  %307 = call i32 @queue_work_on(i32 %303, i32 %304, i32* %306)
  br label %308

308:                                              ; preds = %293, %287, %278
  %309 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %310 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %309, i32 0, i32 2
  %311 = load i64, i64* %12, align 8
  %312 = call i32 @spin_unlock_irqrestore(i32* %310, i64 %311)
  store i32 1, i32* %4, align 4
  br label %313

313:                                              ; preds = %308, %130
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @RDMA_READ_UAPI_ATOMIC(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rvt_pr_err_ratelimited(%struct.rvt_dev_info*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_rvt_cq_enter(%struct.rvt_cq*, %struct.ib_wc*, i32) #1

declare dso_local i32 @ib_lid_cpu16(i32) #1

declare dso_local i32 @RDMA_WRITE_UAPI_ATOMIC(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
