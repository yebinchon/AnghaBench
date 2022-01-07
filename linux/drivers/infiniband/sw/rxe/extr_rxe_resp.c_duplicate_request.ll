; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_duplicate_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_duplicate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.resp_res* }
%struct.resp_res = type { i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.rxe_pkt_info = type { i32, i64 }

@BTH_PSN_MASK = common dso_local global i32 0, align 4
@RXE_SEND_MASK = common dso_local global i32 0, align 4
@RXE_WRITE_MASK = common dso_local global i32 0, align 4
@AETH_ACK_UNLIMITED = common dso_local global i32 0, align 4
@RESPST_CLEANUP = common dso_local global i32 0, align 4
@RXE_READ_MASK = common dso_local global i32 0, align 4
@rdatm_res_state_new = common dso_local global i32 0, align 4
@rdatm_res_state_replay = common dso_local global i32 0, align 4
@RESPST_READ_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Failed resending result. This flow is not handled - skb ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @duplicate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duplicate_request(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.resp_res*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resp_res*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %4, align 8
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %12 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @BTH_PSN_MASK, align 4
  %17 = and i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %20 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RXE_SEND_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %27 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RXE_WRITE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25, %2
  %33 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %34 = call i64 @bth_ack(%struct.rxe_pkt_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %38 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %39 = load i32, i32* @AETH_ACK_UNLIMITED, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @send_ack(%struct.rxe_qp* %37, %struct.rxe_pkt_info* %38, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %43, i32* %5, align 4
  br label %174

44:                                               ; preds = %25
  %45 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %46 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RXE_READ_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %145

51:                                               ; preds = %44
  %52 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %53 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %54 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.resp_res* @find_resource(%struct.rxe_qp* %52, i64 %55)
  store %struct.resp_res* %56, %struct.resp_res** %7, align 8
  %57 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %58 = icmp ne %struct.resp_res* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %60, i32* %5, align 4
  br label %174

61:                                               ; preds = %51
  %62 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %63 = call i64 @reth_va(%struct.rxe_pkt_info* %62)
  store i64 %63, i64* %8, align 8
  %64 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %65 = call i64 @reth_len(%struct.rxe_pkt_info* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %68 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %66, %70
  br i1 %71, label %93, label %72

72:                                               ; preds = %61
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %75 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %93, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %84 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %88 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %86, %90
  %92 = icmp sgt i64 %82, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %79, %72, %61
  %94 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %94, i32* %5, align 4
  br label %174

95:                                               ; preds = %79
  %96 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %97 = call i64 @reth_rkey(%struct.rxe_pkt_info* %96)
  %98 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %99 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %104, i32* %5, align 4
  br label %174

105:                                              ; preds = %95
  %106 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %107 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %110 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %112 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %115 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @rdatm_res_state_new, align 4
  br label %122

120:                                              ; preds = %105
  %121 = load i32, i32* @rdatm_res_state_replay, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %125 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %127 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %130 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %134 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %138 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  store i64 %136, i64* %139, align 8
  %140 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %141 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %142 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store %struct.resp_res* %140, %struct.resp_res** %143, align 8
  %144 = load i32, i32* @RESPST_READ_REPLY, align 4
  store i32 %144, i32* %5, align 4
  br label %174

145:                                              ; preds = %44
  %146 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %147 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %148 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call %struct.resp_res* @find_resource(%struct.rxe_qp* %146, i64 %149)
  store %struct.resp_res* %150, %struct.resp_res** %10, align 8
  %151 = load %struct.resp_res*, %struct.resp_res** %10, align 8
  %152 = icmp ne %struct.resp_res* %151, null
  br i1 %152, label %153, label %172

153:                                              ; preds = %145
  %154 = load %struct.resp_res*, %struct.resp_res** %10, align 8
  %155 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @skb_get(i32 %157)
  %159 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %160 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %161 = load %struct.resp_res*, %struct.resp_res** %10, align 8
  %162 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @rxe_xmit_packet(%struct.rxe_qp* %159, %struct.rxe_pkt_info* %160, i32 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %153
  %169 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %170 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %170, i32* %5, align 4
  br label %174

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %145
  %173 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %168, %122, %103, %93, %59, %42
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i64 @bth_ack(%struct.rxe_pkt_info*) #1

declare dso_local i32 @send_ack(%struct.rxe_qp*, %struct.rxe_pkt_info*, i32, i64) #1

declare dso_local %struct.resp_res* @find_resource(%struct.rxe_qp*, i64) #1

declare dso_local i64 @reth_va(%struct.rxe_pkt_info*) #1

declare dso_local i64 @reth_len(%struct.rxe_pkt_info*) #1

declare dso_local i64 @reth_rkey(%struct.rxe_pkt_info*) #1

declare dso_local i32 @skb_get(i32) #1

declare dso_local i32 @rxe_xmit_packet(%struct.rxe_qp*, %struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
