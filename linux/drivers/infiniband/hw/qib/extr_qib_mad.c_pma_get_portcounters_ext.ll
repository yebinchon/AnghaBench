; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters_ext = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qib_ibport = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qib_pportdata = type { i32 }
%struct.qib_pma_counters = type { i64, i64, i64, i64 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.qib_pma_counters, align 8
  %16 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %18 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %20, %struct.ib_pma_portcounters_ext** %7, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %21, i64 %22)
  store %struct.qib_ibport* %23, %struct.qib_ibport** %8, align 8
  %24 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %25 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %24)
  store %struct.qib_pportdata* %25, %struct.qib_pportdata** %9, align 8
  %26 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %27 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  %29 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %30 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memset(i64 %31, i32 0, i32 8)
  %33 = load i64, i64* %16, align 8
  %34 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %35 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %37 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %3
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %3
  %46 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %48 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %129

52:                                               ; preds = %41
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %54 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %53, i64* %10, i64* %11, i64* %12, i64* %13, i64* %14)
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %56 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %61 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %11, align 8
  %65 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %66 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %12, align 8
  %70 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %71 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i8* @cpu_to_be64(i64 %75)
  %77 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %78 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i8* @cpu_to_be64(i64 %79)
  %81 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %82 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i8* @cpu_to_be64(i64 %83)
  %85 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %86 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i8* @cpu_to_be64(i64 %87)
  %89 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %90 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %92 = call i32 @qib_snapshot_pmacounters(%struct.qib_ibport* %91, %struct.qib_pma_counters* %15)
  %93 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %96 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = call i8* @cpu_to_be64(i64 %98)
  %100 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %101 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %105 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = call i8* @cpu_to_be64(i64 %107)
  %109 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %110 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %114 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = call i8* @cpu_to_be64(i64 %116)
  %118 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %119 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = getelementptr inbounds %struct.qib_pma_counters, %struct.qib_pma_counters* %15, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = call i8* @cpu_to_be64(i64 %125)
  %127 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %128 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %52, %45
  %130 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %131 = bitcast %struct.ib_pma_mad* %130 to %struct.ib_smp*
  %132 = call i32 @reply(%struct.ib_smp* %131)
  ret i32 %132
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @qib_snapshot_pmacounters(%struct.qib_ibport*, %struct.qib_pma_counters*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
