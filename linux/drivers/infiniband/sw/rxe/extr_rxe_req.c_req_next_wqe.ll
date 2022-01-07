; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_req_next_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_req_next_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_send_wqe = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.rxe_qp = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@QP_STATE_DRAIN = common dso_local global i64 0, align 8
@wqe_state_posted = common dso_local global i64 0, align 8
@QP_STATE_DRAINED = common dso_local global i64 0, align 8
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@wqe_state_processing = common dso_local global i64 0, align 8
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxe_send_wqe* (%struct.rxe_qp*)* @req_next_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxe_send_wqe* @req_next_wqe(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_send_wqe*, align 8
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_send_wqe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ib_event.0, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.rxe_send_wqe* @queue_head(i32 %10)
  store %struct.rxe_send_wqe* %11, %struct.rxe_send_wqe** %4, align 8
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QP_STATE_DRAIN, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %1
  %22 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %23 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %22, i32 0, i32 3
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %28 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QP_STATE_DRAIN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %35 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %34, i32 0, i32 3
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %100

38:                                               ; preds = %26
  %39 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %40 = icmp ne %struct.rxe_send_wqe* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %47 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @consumer_index(i32 %49)
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %41
  %53 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %54 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @wqe_state_posted, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %41
  %59 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %60 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %59, i32 0, i32 3
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %100

63:                                               ; preds = %52, %38
  %64 = load i64, i64* @QP_STATE_DRAINED, align 8
  %65 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %66 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %69 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %68, i32 0, i32 3
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.ib_event*, i32)* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %63
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %79 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %84 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %88 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %90 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %91, align 8
  %93 = bitcast %struct.ib_event.0* %6 to %struct.ib_event*
  %94 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %95 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %92(%struct.ib_event* %93, i32 %97)
  br label %99

99:                                               ; preds = %77, %63
  br label %100

100:                                              ; preds = %99, %58, %33
  br label %101

101:                                              ; preds = %100, %1
  %102 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %103 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %107 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @producer_index(i32 %109)
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store %struct.rxe_send_wqe* null, %struct.rxe_send_wqe** %2, align 8
  br label %186

113:                                              ; preds = %101
  %114 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %115 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %119 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.rxe_send_wqe* @addr_from_index(i32 %117, i64 %121)
  store %struct.rxe_send_wqe* %122, %struct.rxe_send_wqe** %4, align 8
  %123 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %124 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @QP_STATE_DRAIN, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %136, label %129

129:                                              ; preds = %113
  %130 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %131 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @QP_STATE_DRAINED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %129, %113
  %137 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %138 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @wqe_state_processing, align 8
  %141 = icmp ne i64 %139, %140
  br label %142

142:                                              ; preds = %136, %129
  %143 = phi i1 [ false, %129 ], [ %141, %136 ]
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store %struct.rxe_send_wqe* null, %struct.rxe_send_wqe** %2, align 8
  br label %186

148:                                              ; preds = %142
  %149 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %150 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @IB_SEND_FENCE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %148
  %157 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %158 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %162 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @consumer_index(i32 %164)
  %166 = icmp ne i64 %160, %165
  br label %167

167:                                              ; preds = %156, %148
  %168 = phi i1 [ false, %148 ], [ %166, %156 ]
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %174 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  store i32 1, i32* %175, align 8
  store %struct.rxe_send_wqe* null, %struct.rxe_send_wqe** %2, align 8
  br label %186

176:                                              ; preds = %167
  %177 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %178 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %182 = call i32 @wr_opcode_mask(i32 %180, %struct.rxe_qp* %181)
  %183 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %184 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  store %struct.rxe_send_wqe* %185, %struct.rxe_send_wqe** %2, align 8
  br label %186

186:                                              ; preds = %176, %172, %147, %112
  %187 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %2, align 8
  ret %struct.rxe_send_wqe* %187
}

declare dso_local %struct.rxe_send_wqe* @queue_head(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @consumer_index(i32) #1

declare dso_local i64 @producer_index(i32) #1

declare dso_local %struct.rxe_send_wqe* @addr_from_index(i32, i64) #1

declare dso_local i32 @wr_opcode_mask(i32, %struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
