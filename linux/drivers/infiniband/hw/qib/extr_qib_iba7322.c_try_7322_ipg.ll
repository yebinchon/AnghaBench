; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_try_7322_ipg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_try_7322_ipg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_5__*, %struct.qib_ibport }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qib_ibport = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.ib_mad_send_buf }
%struct.ib_mad_send_buf = type { %struct.ib_smp*, %struct.ib_mad_send_buf* }
%struct.ib_smp = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_ah = type { %struct.ib_smp*, %struct.ib_ah* }

@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_SEND = common dso_local global i32 0, align 4
@QIB_VENDOR_IPG = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @try_7322_ipg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_7322_ipg(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca %struct.ib_mad_send_buf*, align 8
  %5 = alloca %struct.ib_mad_agent*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_ah*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 1
  store %struct.qib_ibport* %11, %struct.qib_ibport** %3, align 8
  %12 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %13 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %14, align 8
  store %struct.ib_mad_agent* %15, %struct.ib_mad_agent** %5, align 8
  %16 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %17 = icmp ne %struct.ib_mad_agent* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %101

19:                                               ; preds = %1
  %20 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %21 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %22 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %25 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %20, i32 0, i32 0, i32 0, i32 %21, i32 %22, i32 %23, i32 %24)
  store %struct.ib_mad_send_buf* %25, %struct.ib_mad_send_buf** %4, align 8
  %26 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %27 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %101

30:                                               ; preds = %19
  %31 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %32 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %30
  %36 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %37 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %38 = call i32 @be16_to_cpu(i32 %37)
  %39 = call %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport* %36, i32 %38)
  %40 = bitcast %struct.ib_mad_send_buf* %39 to %struct.ib_ah*
  store %struct.ib_ah* %40, %struct.ib_ah** %9, align 8
  %41 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %42 = bitcast %struct.ib_ah* %41 to %struct.ib_mad_send_buf*
  %43 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %47 = bitcast %struct.ib_ah* %46 to %struct.ib_mad_send_buf*
  %48 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %47)
  store i32 %48, i32* %8, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %51 = bitcast %struct.ib_ah* %50 to %struct.ib_mad_send_buf*
  %52 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %53 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %52, i32 0, i32 1
  store %struct.ib_mad_send_buf* %51, %struct.ib_mad_send_buf** %53, align 8
  %54 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %55 = bitcast %struct.ib_ah* %54 to %struct.ib_mad_send_buf*
  %56 = call %struct.TYPE_6__* @ibah_to_rvtah(%struct.ib_mad_send_buf* %55)
  %57 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %58 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %57, i32 0, i32 0
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %58, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %49, %45
  br label %67

60:                                               ; preds = %30
  %61 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %62 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %66 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %65, i32 0, i32 1
  store %struct.ib_mad_send_buf* %64, %struct.ib_mad_send_buf** %66, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %59
  %68 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %69 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %68, i32 0, i32 0
  %70 = load %struct.ib_smp*, %struct.ib_smp** %69, align 8
  store %struct.ib_smp* %70, %struct.ib_smp** %6, align 8
  %71 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %72 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %73 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 4
  %75 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %76 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %78 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* @IB_MGMT_METHOD_SEND, align 4
  %80 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %81 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %83 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* @QIB_VENDOR_IPG, align 4
  %85 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %86 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %88 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %67
  %92 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %93 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %92, i32* null)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %67
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %99 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %98)
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %29, %18
  %102 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %103 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 2, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @ib_wq, align 4
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @msecs_to_jiffies(i32 %113)
  %115 = call i32 @queue_delayed_work(i32 %108, i32* %112, i32 %114)
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.TYPE_6__* @ibah_to_rvtah(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
