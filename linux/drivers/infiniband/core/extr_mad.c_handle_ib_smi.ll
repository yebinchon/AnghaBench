; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_handle_ib_smi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_handle_ib_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_port_private = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ib_mad_qp_info = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_mad_private = type { i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32*, %struct.ib_mad* }
%struct.ib_mad = type { i32 }
%struct.ib_smp = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMI_DISCARD = common dso_local global i64 0, align 8
@IB_SMI_LOCAL = common dso_local global i32 0, align 4
@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@IB_SMI_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_port_private*, %struct.ib_mad_qp_info*, %struct.ib_wc*, i32, %struct.ib_mad_private*, %struct.ib_mad_private*)* @handle_ib_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ib_smi(%struct.ib_mad_port_private* %0, %struct.ib_mad_qp_info* %1, %struct.ib_wc* %2, i32 %3, %struct.ib_mad_private* %4, %struct.ib_mad_private* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_port_private*, align 8
  %9 = alloca %struct.ib_mad_qp_info*, align 8
  %10 = alloca %struct.ib_wc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_mad_private*, align 8
  %13 = alloca %struct.ib_mad_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_smp*, align 8
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %8, align 8
  store %struct.ib_mad_qp_info* %1, %struct.ib_mad_qp_info** %9, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ib_mad_private* %4, %struct.ib_mad_private** %12, align 8
  store %struct.ib_mad_private* %5, %struct.ib_mad_private** %13, align 8
  %16 = load %struct.ib_mad_private*, %struct.ib_mad_private** %12, align 8
  %17 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_smp*
  store %struct.ib_smp* %19, %struct.ib_smp** %15, align 8
  %20 = load %struct.ib_smp*, %struct.ib_smp** %15, align 8
  %21 = call i32 @trace_ib_mad_handle_ib_smi(%struct.ib_smp* %20)
  %22 = load %struct.ib_smp*, %struct.ib_smp** %15, align 8
  %23 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %24 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = call i64 @rdma_cap_ib_switch(%struct.TYPE_12__* %25)
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %29 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @smi_handle_dr_smp_recv(%struct.ib_smp* %22, i64 %26, i32 %27, i32 %32)
  %34 = load i64, i64* @IB_SMI_DISCARD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i64, i64* @IB_SMI_DISCARD, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %137

39:                                               ; preds = %6
  %40 = load %struct.ib_smp*, %struct.ib_smp** %15, align 8
  %41 = call i32 @smi_check_forward_dr_smp(%struct.ib_smp* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @IB_SMI_LOCAL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %46, i32* %7, align 4
  br label %137

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @IB_SMI_SEND, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load %struct.ib_smp*, %struct.ib_smp** %15, align 8
  %53 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %54 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i64 @rdma_cap_ib_switch(%struct.TYPE_12__* %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @smi_handle_dr_smp_send(%struct.ib_smp* %52, i64 %56, i32 %57)
  %59 = load i64, i64* @IB_SMI_DISCARD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i64, i64* @IB_SMI_DISCARD, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %137

64:                                               ; preds = %51
  %65 = load %struct.ib_smp*, %struct.ib_smp** %15, align 8
  %66 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %67 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = call i64 @smi_check_local_smp(%struct.ib_smp* %65, %struct.TYPE_12__* %68)
  %70 = load i64, i64* @IB_SMI_DISCARD, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i64, i64* @IB_SMI_DISCARD, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %137

75:                                               ; preds = %64
  br label %135

76:                                               ; preds = %47
  %77 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %78 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i64 @rdma_cap_ib_switch(%struct.TYPE_12__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %134

82:                                               ; preds = %76
  %83 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %84 = load %struct.ib_mad_private*, %struct.ib_mad_private** %12, align 8
  %85 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %86 = call i32 @mad_priv_size(%struct.ib_mad_private* %85)
  %87 = call i32 @memcpy(%struct.ib_mad_private* %83, %struct.ib_mad_private* %84, i32 %86)
  %88 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %89 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %92 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i32* %90, i32** %94, align 8
  %95 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %96 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.ib_mad*
  %99 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %100 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store %struct.ib_mad* %98, %struct.ib_mad** %103, align 8
  %104 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %105 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %104, i32 0, i32 1
  %106 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %107 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32* %105, i32** %110, align 8
  %111 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %112 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.ib_mad_hdr*
  %115 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %116 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %115, i32 0, i32 1
  %117 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %118 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %119 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load %struct.ib_smp*, %struct.ib_smp** %15, align 8
  %122 = call i32 @smi_get_fwd_port(%struct.ib_smp* %121)
  %123 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %9, align 8
  %124 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %129 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @agent_send_response(%struct.ib_mad_hdr* %114, i32* %116, %struct.ib_wc* %117, %struct.TYPE_12__* %120, i32 %122, i32 %127, i32 %130, i32 0)
  %132 = load i64, i64* @IB_SMI_DISCARD, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  br label %137

134:                                              ; preds = %76
  br label %135

135:                                              ; preds = %134, %75
  %136 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %135, %82, %72, %61, %45, %36
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @trace_ib_mad_handle_ib_smi(%struct.ib_smp*) #1

declare dso_local i64 @smi_handle_dr_smp_recv(%struct.ib_smp*, i64, i32, i32) #1

declare dso_local i64 @rdma_cap_ib_switch(%struct.TYPE_12__*) #1

declare dso_local i32 @smi_check_forward_dr_smp(%struct.ib_smp*) #1

declare dso_local i64 @smi_handle_dr_smp_send(%struct.ib_smp*, i64, i32) #1

declare dso_local i64 @smi_check_local_smp(%struct.ib_smp*, %struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(%struct.ib_mad_private*, %struct.ib_mad_private*, i32) #1

declare dso_local i32 @mad_priv_size(%struct.ib_mad_private*) #1

declare dso_local i32 @agent_send_response(%struct.ib_mad_hdr*, i32*, %struct.ib_wc*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @smi_get_fwd_port(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
