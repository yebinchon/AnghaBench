; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_rc_send_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_rc_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i32, i64, i64, i64, i64, i32 }
%struct.ib_header = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.ib_other_headers }
%struct.TYPE_4__ = type { %struct.ib_other_headers }
%struct.ib_other_headers = type { i32* }
%struct.rvt_swqe = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_SEND_OR_FLUSH_OR_RECV_OK = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IB_BTH_REQ_ACK = common dso_local global i32 0, align 4
@RVT_S_TIMER = common dso_local global i32 0, align 4
@RVT_S_WAIT_RNR = common dso_local global i32 0, align 4
@RVT_S_WAIT_PSN = common dso_local global i32 0, align 4
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@ib_qib_wc_opcode = common dso_local global i32* null, align 8
@IB_WC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_rc_send_complete(%struct.rvt_qp* %0, %struct.ib_header* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.ib_header*, align 8
  %5 = alloca %struct.ib_other_headers*, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.ib_header* %1, %struct.ib_header** %4, align 8
  %9 = load i32*, i32** @ib_rvt_state_ops, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RVT_SEND_OR_FLUSH_OR_RECV_OK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %194

19:                                               ; preds = %2
  %20 = load %struct.ib_header*, %struct.ib_header** %4, align 8
  %21 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be16_to_cpu(i32 %24)
  %26 = and i32 %25, 3
  %27 = load i32, i32* @QIB_LRH_BTH, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.ib_header*, %struct.ib_header** %4, align 8
  %31 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store %struct.ib_other_headers* %32, %struct.ib_other_headers** %5, align 8
  br label %38

33:                                               ; preds = %19
  %34 = load %struct.ib_header*, %struct.ib_header** %4, align 8
  %35 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.ib_other_headers* %37, %struct.ib_other_headers** %5, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %40 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = ashr i32 %44, 24
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @RDMA_READ_RESPONSE_FIRST, align 4
  %48 = call i32 @OP(i32 %47)
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %53 = call i32 @OP(i32 %52)
  %54 = icmp sle i32 %51, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %57 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  br label %194

67:                                               ; preds = %50, %38
  %68 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %69 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @reset_sending_psn(%struct.rvt_qp* %74, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @IB_BTH_REQ_ACK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %67
  %82 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %83 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %81
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RVT_S_TIMER, align 4
  %94 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %89
  %101 = load i32*, i32** @ib_rvt_state_ops, align 8
  %102 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %103 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %112 = call i32 @rvt_add_retry_timer(%struct.rvt_qp* %111)
  br label %113

113:                                              ; preds = %110, %100, %89, %81, %67
  br label %114

114:                                              ; preds = %146, %113
  %115 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %116 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %119 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %114
  %123 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %123, i64 %126)
  store %struct.rvt_swqe* %127, %struct.rvt_swqe** %6, align 8
  %128 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %129 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %132 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @qib_cmp24(i64 %130, i64 %133)
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %122
  %137 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %138 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %141 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @qib_cmp24(i64 %139, i64 %142)
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %158

146:                                              ; preds = %136, %122
  %147 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %148 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %149 = load i32*, i32** @ib_qib_wc_opcode, align 8
  %150 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %151 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IB_WC_SUCCESS, align 4
  %157 = call i32 @rvt_qp_complete_swqe(%struct.rvt_qp* %147, %struct.rvt_swqe* %148, i32 %155, i32 %156)
  br label %114

158:                                              ; preds = %145, %114
  %159 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %160 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %158
  %166 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %167 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %170 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @qib_cmp24(i64 %168, i64 %171)
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %165
  %175 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %178 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %182 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %185 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %184, i32 0, i32 7
  store i64 %183, i64* %185, align 8
  %186 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %187 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %188, 1
  %190 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %191 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %190, i32 0, i32 6
  store i64 %189, i64* %191, align 8
  %192 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %193 = call i32 @qib_schedule_send(%struct.rvt_qp* %192)
  br label %194

194:                                              ; preds = %18, %55, %174, %165, %158
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @reset_sending_psn(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_add_retry_timer(%struct.rvt_qp*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i64 @qib_cmp24(i64, i64) #1

declare dso_local i32 @rvt_qp_complete_swqe(%struct.rvt_qp*, %struct.rvt_swqe*, i32, i32) #1

declare dso_local i32 @qib_schedule_send(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
