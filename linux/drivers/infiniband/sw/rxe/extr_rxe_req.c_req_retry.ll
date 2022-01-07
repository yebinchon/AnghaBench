; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_req_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_req_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_15__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.rxe_send_wqe = type { i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@wqe_state_posted = common dso_local global i64 0, align 8
@wqe_state_done = common dso_local global i64 0, align 8
@WR_ATOMIC_MASK = common dso_local global i32 0, align 4
@WR_READ_OR_WRITE_MASK = common dso_local global i32 0, align 4
@WR_READ_MASK = common dso_local global i32 0, align 4
@WR_WRITE_OR_SEND_MASK = common dso_local global i32 0, align 4
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*)* @req_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_retry(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_qp*, align 8
  %3 = alloca %struct.rxe_send_wqe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %2, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %9 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @consumer_index(i32 %11)
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %14 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %21 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %27 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @consumer_index(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %175, %1
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %35 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @producer_index(i32 %37)
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %182

40:                                               ; preds = %32
  %41 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %42 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call %struct.rxe_send_wqe* @addr_from_index(i32 %44, i32 %45)
  store %struct.rxe_send_wqe* %46, %struct.rxe_send_wqe** %3, align 8
  %47 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %48 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %52 = call i32 @wr_opcode_mask(i32 %50, %struct.rxe_qp* %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %54 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @wqe_state_posted, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %182

59:                                               ; preds = %40
  %60 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %61 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @wqe_state_done, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %175

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @WR_ATOMIC_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %73 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %93

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @WR_READ_OR_WRITE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %85 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %83
  %92 = phi i32 [ %89, %83 ], [ 0, %90 ]
  br label %93

93:                                               ; preds = %91, %71
  %94 = phi i32 [ %77, %71 ], [ %92, %91 ]
  %95 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %96 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @WR_READ_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99, %93
  %105 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %106 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %110 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %113 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %116 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %104, %99
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %171

121:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @WR_WRITE_OR_SEND_MASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %128 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %132 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  %135 = load i32, i32* @BTH_PSN_MASK, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %6, align 4
  %137 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %138 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @retry_first_write_send(%struct.rxe_qp* %137, %struct.rxe_send_wqe* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %126, %121
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @WR_READ_MASK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %142
  %148 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %149 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %153 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %151, %155
  %157 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %158 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %156, %159
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %163 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %161, %164
  %166 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %167 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %147, %142
  br label %171

171:                                              ; preds = %170, %118
  %172 = load i64, i64* @wqe_state_posted, align 8
  %173 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %3, align 8
  %174 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %65
  %176 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %177 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @next_index(i32 %179, i32 %180)
  store i32 %181, i32* %4, align 4
  br label %32

182:                                              ; preds = %58, %32
  ret void
}

declare dso_local i8* @consumer_index(i32) #1

declare dso_local i32 @producer_index(i32) #1

declare dso_local %struct.rxe_send_wqe* @addr_from_index(i32, i32) #1

declare dso_local i32 @wr_opcode_mask(i32, %struct.rxe_qp*) #1

declare dso_local i32 @retry_first_write_send(%struct.rxe_qp*, %struct.rxe_send_wqe*, i32, i32) #1

declare dso_local i32 @next_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
