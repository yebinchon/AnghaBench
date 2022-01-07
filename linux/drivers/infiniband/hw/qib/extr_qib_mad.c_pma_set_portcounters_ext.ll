; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i32 }
%struct.qib_ibport = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.qib_pportdata = type { i32 }
%struct.qib_pma_counters = type { i32, i32, i32, i32 }

@IB_PMA_SELX_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_RCV_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_UNI_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_UNI_RCV_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_MULTI_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_MULTI_RCV_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @pma_set_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.qib_pma_counters, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %17 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %19, %struct.ib_pma_portcounters** %7, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %20, i32 %21)
  store %struct.qib_ibport* %22, %struct.qib_ibport** %8, align 8
  %23 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %24 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %23)
  store %struct.qib_pportdata* %24, %struct.qib_pportdata** %9, align 8
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %26 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %25, i8** %10, i8** %11, i8** %12, i8** %13, i8** %14)
  %27 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %28 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IB_PMA_SELX_PORT_XMIT_DATA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %36 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %39 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IB_PMA_SELX_PORT_RCV_DATA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %47 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %50 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IB_PMA_SELX_PORT_XMIT_PACKETS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %58 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %61 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IB_PMA_SELX_PORT_RCV_PACKETS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %69 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %72 = call i32 @qib_snapshot_pmacounters(%struct.qib_ibport* %71, %struct.qib_pma_counters* %15)
  %73 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %74 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IB_PMA_SELX_PORT_UNI_XMIT_PACKETS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %83 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %86 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IB_PMA_SELX_PORT_UNI_RCV_PACKETS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %98 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IB_PMA_SELX_PORT_MULTI_XMIT_PACKETS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %110 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IB_PMA_SELX_PORT_MULTI_RCV_PACKETS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %119 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %108
  %121 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %122 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @pma_get_portcounters_ext(%struct.ib_pma_mad* %121, %struct.ib_device* %122, i32 %123)
  ret i32 %124
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @qib_snapshot_pmacounters(%struct.qib_ibport*, %struct.qib_pma_counters*) #1

declare dso_local i32 @pma_get_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
