; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, %struct.TYPE_7__*, %struct.opa_vnic_vema_port* }
%struct.TYPE_7__ = type { i32 }
%struct.opa_vnic_vema_port = type { i32 }
%struct.ib_mad_send_buf = type { %struct.opa_vnic_vema_mad*, %struct.ib_mad_send_buf* }
%struct.opa_vnic_vema_mad = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_9__, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ib_ah = type { %struct.opa_vnic_vema_mad*, %struct.ib_ah* }

@IB_MGMT_VENDOR_HDR = common dso_local global i32 0, align 4
@OPA_VNIC_EMA_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@OPA_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET_RESP = common dso_local global i32 0, align 4
@OPA_VNIC_UNSUP_ATTR = common dso_local global i64 0, align 8
@RDMA_DESTROY_AH_SLEEPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, %struct.ib_mad_recv_wc*)* @vema_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_recv(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.opa_vnic_vema_port*, align 8
  %8 = alloca %struct.ib_ah*, align 8
  %9 = alloca %struct.ib_mad_send_buf*, align 8
  %10 = alloca %struct.opa_vnic_vema_mad*, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %5, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %6, align 8
  %11 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %12 = icmp ne %struct.ib_mad_recv_wc* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %15 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %3
  br label %141

20:                                               ; preds = %13
  %21 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %22 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %21, i32 0, i32 2
  %23 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %22, align 8
  store %struct.opa_vnic_vema_port* %23, %struct.opa_vnic_vema_port** %7, align 8
  %24 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %25 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %30 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %33 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %37 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.ib_mad_send_buf* @ib_create_ah_from_wc(i32 %28, %struct.TYPE_12__* %31, i32 %35, i32 %38)
  %40 = bitcast %struct.ib_mad_send_buf* %39 to %struct.ib_ah*
  store %struct.ib_ah* %40, %struct.ib_ah** %8, align 8
  %41 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %42 = bitcast %struct.ib_ah* %41 to %struct.ib_mad_send_buf*
  %43 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %20
  br label %138

46:                                               ; preds = %20
  %47 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %48 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %49 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %54 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IB_MGMT_VENDOR_HDR, align 4
  %59 = load i32, i32* @OPA_VNIC_EMA_DATA, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @OPA_MGMT_BASE_VERSION, align 4
  %62 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %47, i32 %52, i32 %57, i32 0, i32 %58, i32 %59, i32 %60, i32 %61)
  store %struct.ib_mad_send_buf* %62, %struct.ib_mad_send_buf** %9, align 8
  %63 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %9, align 8
  %64 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %133

67:                                               ; preds = %46
  %68 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %69 = bitcast %struct.ib_ah* %68 to %struct.ib_mad_send_buf*
  %70 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %9, align 8
  %71 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %70, i32 0, i32 1
  store %struct.ib_mad_send_buf* %69, %struct.ib_mad_send_buf** %71, align 8
  %72 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %9, align 8
  %73 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %72, i32 0, i32 0
  %74 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %73, align 8
  store %struct.opa_vnic_vema_mad* %74, %struct.opa_vnic_vema_mad** %10, align 8
  %75 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %10, align 8
  %76 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %77 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* @IB_MGMT_VENDOR_HDR, align 4
  %81 = call i32 @memcpy(%struct.opa_vnic_vema_mad* %75, %struct.TYPE_11__* %79, i32 %80)
  %82 = load i32, i32* @IB_MGMT_METHOD_GET_RESP, align 4
  %83 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %10, align 8
  %84 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %10, align 8
  %87 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %7, align 8
  %90 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %93 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %117 [
    i32 129, label %99
    i32 128, label %108
  ]

99:                                               ; preds = %67
  %100 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %7, align 8
  %101 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %102 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = bitcast %struct.TYPE_11__* %104 to %struct.opa_vnic_vema_mad*
  %106 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %10, align 8
  %107 = call i32 @vema_get(%struct.opa_vnic_vema_port* %100, %struct.opa_vnic_vema_mad* %105, %struct.opa_vnic_vema_mad* %106)
  br label %122

108:                                              ; preds = %67
  %109 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %7, align 8
  %110 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %111 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = bitcast %struct.TYPE_11__* %113 to %struct.opa_vnic_vema_mad*
  %115 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %10, align 8
  %116 = call i32 @vema_set(%struct.opa_vnic_vema_port* %109, %struct.opa_vnic_vema_mad* %114, %struct.opa_vnic_vema_mad* %115)
  br label %122

117:                                              ; preds = %67
  %118 = load i64, i64* @OPA_VNIC_UNSUP_ATTR, align 8
  %119 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %10, align 8
  %120 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  br label %122

122:                                              ; preds = %117, %108, %99
  %123 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %7, align 8
  %124 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %9, align 8
  %127 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %126, i32* null)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  br label %138

130:                                              ; preds = %122
  %131 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %9, align 8
  %132 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %131)
  br label %133

133:                                              ; preds = %130, %66
  %134 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %135 = bitcast %struct.ib_ah* %134 to %struct.ib_mad_send_buf*
  %136 = load i32, i32* @RDMA_DESTROY_AH_SLEEPABLE, align 4
  %137 = call i32 @rdma_destroy_ah(%struct.ib_mad_send_buf* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %129, %45
  %139 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %140 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %139)
  br label %141

141:                                              ; preds = %138, %19
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_ah_from_wc(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.opa_vnic_vema_mad*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vema_get(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

declare dso_local i32 @vema_set(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @rdma_destroy_ah(%struct.ib_mad_send_buf*, i32) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
