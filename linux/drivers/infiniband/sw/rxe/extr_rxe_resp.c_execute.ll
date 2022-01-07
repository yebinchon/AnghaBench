; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.rxe_pkt_info = type { i32, i32, i32 }
%union.rdma_network_hdr = type { i32 }

@RXE_SEND_MASK = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@RXE_WRITE_MASK = common dso_local global i32 0, align 4
@RXE_READ_MASK = common dso_local global i32 0, align 4
@RESPST_READ_REPLY = common dso_local global i32 0, align 4
@RXE_ATOMIC_MASK = common dso_local global i32 0, align 4
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@RXE_COMP_MASK = common dso_local global i32 0, align 4
@RESPST_COMPLETE = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@RESPST_ACKNOWLEDGE = common dso_local global i32 0, align 4
@RESPST_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.rdma_network_hdr, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  %8 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %9 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RXE_SEND_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %2
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %16 = call i64 @qp_type(%struct.rxe_qp* %15)
  %17 = load i64, i64* @IB_QPT_UD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %21 = call i64 @qp_type(%struct.rxe_qp* %20)
  %22 = load i64, i64* @IB_QPT_SMI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %26 = call i64 @qp_type(%struct.rxe_qp* %25)
  %27 = load i64, i64* @IB_QPT_GSI, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %19, %14
  %30 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %31 = call i32 @build_rdma_network_hdr(%union.rdma_network_hdr* %7, %struct.rxe_pkt_info* %30)
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %33 = call i32 @send_data_in(%struct.rxe_qp* %32, %union.rdma_network_hdr* %7, i32 4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %151

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %41 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %42 = call %union.rdma_network_hdr* @payload_addr(%struct.rxe_pkt_info* %41)
  %43 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %44 = call i32 @payload_size(%struct.rxe_pkt_info* %43)
  %45 = call i32 @send_data_in(%struct.rxe_qp* %40, %union.rdma_network_hdr* %42, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %151

50:                                               ; preds = %39
  br label %102

51:                                               ; preds = %2
  %52 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %53 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RXE_WRITE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %60 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %61 = call i32 @write_data_in(%struct.rxe_qp* %59, %struct.rxe_pkt_info* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %151

66:                                               ; preds = %58
  br label %101

67:                                               ; preds = %51
  %68 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %69 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RXE_READ_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %76 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @RESPST_READ_REPLY, align 4
  store i32 %80, i32* %3, align 4
  br label %151

81:                                               ; preds = %67
  %82 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %83 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RXE_ATOMIC_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %90 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %91 = call i32 @process_atomic(%struct.rxe_qp* %89, %struct.rxe_pkt_info* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %151

96:                                               ; preds = %88
  br label %99

97:                                               ; preds = %81
  %98 = call i32 @WARN_ON_ONCE(i32 1)
  br label %99

99:                                               ; preds = %97, %96
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %50
  %103 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %104 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @BTH_PSN_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %110 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %113 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %117 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %120 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %123 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @IB_WC_SUCCESS, align 4
  %126 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %127 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %130 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @RXE_COMP_MASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %102
  %136 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %137 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @RESPST_COMPLETE, align 4
  store i32 %141, i32* %3, align 4
  br label %151

142:                                              ; preds = %102
  %143 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %144 = call i64 @qp_type(%struct.rxe_qp* %143)
  %145 = load i64, i64* @IB_QPT_RC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @RESPST_ACKNOWLEDGE, align 4
  store i32 %148, i32* %3, align 4
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %147, %135, %94, %74, %64, %48, %36
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @build_rdma_network_hdr(%union.rdma_network_hdr*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @send_data_in(%struct.rxe_qp*, %union.rdma_network_hdr*, i32) #1

declare dso_local %union.rdma_network_hdr* @payload_addr(%struct.rxe_pkt_info*) #1

declare dso_local i32 @payload_size(%struct.rxe_pkt_info*) #1

declare dso_local i32 @write_data_in(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @process_atomic(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
