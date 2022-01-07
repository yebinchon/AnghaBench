; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c___prescan_rxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c___prescan_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { %struct.TYPE_10__*, i32*, %struct.ib_header*, %struct.hfi1_ctxtdata* }
%struct.TYPE_10__ = type { i32* }
%struct.ib_header = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.hfi1_ctxtdata = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rvt_dev_info }
%struct.rvt_dev_info = type { i32 }
%struct.ps_mdata = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.rvt_qp = type { i32 }

@RHF_RCV_TYPE_IB = common dso_local global i64 0, align 8
@HFI1_LRH_BTH = common dso_local global i64 0, align 8
@HFI1_LRH_GRH = common dso_local global i64 0, align 8
@RVT_QPN_MASK = common dso_local global i64 0, align 8
@IB_FECN_SMASK = common dso_local global i64 0, align 8
@IB_BECN_SMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_packet*)* @__prescan_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__prescan_rxq(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.ps_mdata, align 4
  %5 = alloca %struct.hfi1_ibport*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rvt_qp*, align 8
  %8 = alloca %struct.ib_header*, align 8
  %9 = alloca %struct.rvt_dev_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %15 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %15, i32 0, i32 3
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %16, align 8
  store %struct.hfi1_ctxtdata* %17, %struct.hfi1_ctxtdata** %3, align 8
  %18 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %19 = call i32 @init_ps_mdata(%struct.ps_mdata* %4, %struct.hfi1_packet* %18)
  br label %20

20:                                               ; preds = %1, %152
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %22 = call %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata* %21)
  store %struct.hfi1_ibport* %22, %struct.hfi1_ibport** %5, align 8
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %32 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %31, i32 0, i32 3
  %33 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %32, align 8
  %34 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  store i32* %37, i32** %6, align 8
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %39 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.rvt_dev_info* %42, %struct.rvt_dev_info** %9, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @rhf_to_cpu(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @rhf_rcv_type(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %49 = call i64 @ps_done(%struct.ps_mdata* %4, i32 %47, %struct.hfi1_ctxtdata* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %20
  br label %155

52:                                               ; preds = %20
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %55 = call i64 @ps_skip(%struct.ps_mdata* %4, i32 %53, %struct.hfi1_ctxtdata* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %152

58:                                               ; preds = %52
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @RHF_RCV_TYPE_IB, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %152

63:                                               ; preds = %58
  %64 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %65 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %64, i32 0, i32 3
  %66 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %65, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call %struct.ib_header* @hfi1_get_msgheader(%struct.hfi1_ctxtdata* %66, i32* %67)
  %69 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %70 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %69, i32 0, i32 2
  store %struct.ib_header* %68, %struct.ib_header** %70, align 8
  %71 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %72 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %71, i32 0, i32 2
  %73 = load %struct.ib_header*, %struct.ib_header** %72, align 8
  store %struct.ib_header* %73, %struct.ib_header** %8, align 8
  %74 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %75 = call i64 @ib_get_lnh(%struct.ib_header* %74)
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @HFI1_LRH_BTH, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %63
  %80 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %81 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %84 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %83, i32 0, i32 0
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %86 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %106

87:                                               ; preds = %63
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* @HFI1_LRH_GRH, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %93 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %97 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %96, i32 0, i32 0
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %97, align 8
  %98 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %99 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %103 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  br label %105

104:                                              ; preds = %87
  br label %152

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %79
  %107 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %108 = call i32 @hfi1_may_ecn(%struct.hfi1_packet* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %152

111:                                              ; preds = %106
  %112 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %113 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @be32_to_cpu(i32 %118)
  store i64 %119, i64* %13, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @RVT_QPN_MASK, align 8
  %122 = and i64 %120, %121
  store i64 %122, i64* %12, align 8
  %123 = call i32 (...) @rcu_read_lock()
  %124 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %125 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %126 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %125, i32 0, i32 0
  %127 = load i64, i64* %12, align 8
  %128 = call %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info* %124, i32* %126, i64 %127)
  store %struct.rvt_qp* %128, %struct.rvt_qp** %7, align 8
  %129 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %130 = icmp ne %struct.rvt_qp* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %111
  %132 = call i32 (...) @rcu_read_unlock()
  br label %152

133:                                              ; preds = %111
  %134 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %135 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %136 = call i32 @hfi1_process_ecn_slowpath(%struct.rvt_qp* %134, %struct.hfi1_packet* %135, i32 1)
  %137 = call i32 (...) @rcu_read_unlock()
  %138 = load i64, i64* @IB_FECN_SMASK, align 8
  %139 = load i64, i64* @IB_BECN_SMASK, align 8
  %140 = or i64 %138, %139
  %141 = xor i64 %140, -1
  %142 = load i64, i64* %13, align 8
  %143 = and i64 %142, %141
  store i64 %143, i64* %13, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @cpu_to_be32(i64 %144)
  %146 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %147 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %133, %131, %110, %104, %62, %57
  %153 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %154 = call i32 @update_ps_mdata(%struct.ps_mdata* %4, %struct.hfi1_ctxtdata* %153)
  br label %20

155:                                              ; preds = %51
  ret void
}

declare dso_local i32 @init_ps_mdata(%struct.ps_mdata*, %struct.hfi1_packet*) #1

declare dso_local %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @rhf_to_cpu(i32*) #1

declare dso_local i64 @rhf_rcv_type(i32) #1

declare dso_local i64 @ps_done(%struct.ps_mdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i64 @ps_skip(%struct.ps_mdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local %struct.ib_header* @hfi1_get_msgheader(%struct.hfi1_ctxtdata*, i32*) #1

declare dso_local i64 @ib_get_lnh(%struct.ib_header*) #1

declare dso_local i32 @hfi1_may_ecn(%struct.hfi1_packet*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info*, i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @hfi1_process_ecn_slowpath(%struct.rvt_qp*, %struct.hfi1_packet*, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @update_ps_mdata(%struct.ps_mdata*, %struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
