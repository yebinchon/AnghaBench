; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_cong.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.qib_ibport = type { i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.qib_pportdata = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32, i32)* }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_PMA_SEL_CONG_XMIT = common dso_local global i32 0, align 4
@QIB_CONG_TIMER_PSINTERVAL = common dso_local global i32 0, align 4
@IB_PMA_SEL_CONG_PORT_DATA = common dso_local global i32 0, align 4
@IB_PMA_SEL_CONG_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @pma_set_portcounters_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portcounters_cong(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca %struct.qib_pportdata*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_verbs_counters, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %14, i32 %15)
  store %struct.qib_ibport* %16, %struct.qib_ibport** %7, align 8
  %17 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %18 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %17)
  store %struct.qib_pportdata* %18, %struct.qib_pportdata** %8, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %20 = call %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata* %19)
  store %struct.qib_devdata* %20, %struct.qib_devdata** %9, align 8
  %21 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %22 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %29 = call i32 @qib_get_counters(%struct.qib_pportdata* %28, %struct.qib_verbs_counters* %10)
  %30 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pma_get_portcounters_cong(%struct.ib_pma_mad* %30, %struct.ib_device* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @IB_PMA_SEL_CONG_XMIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %3
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  %50 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %49, align 8
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %52 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %53 = call i32 %50(%struct.qib_pportdata* %51, i32 %52, i32 0)
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %38, %3
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @IB_PMA_SEL_CONG_PORT_DATA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %69 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %73 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %72, i32 0, i32 12
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %77 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %81 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %65, %60
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @IB_PMA_SEL_CONG_ALL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %91 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %99 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %103 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %111 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %115 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %119 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %121 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %126 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %87, %82
  %128 = load i32, i32* %12, align 4
  ret i32 %128
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @pma_get_portcounters_cong(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
