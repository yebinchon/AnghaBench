; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_ib_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_ib_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters_ext = type { i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct._port_dctrs = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_ib_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_ib_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %8 = alloca %struct._port_dctrs, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %10 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %12, %struct.ib_pma_portcounters_ext** %7, align 8
  %13 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %20 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %26 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %27 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  br label %63

31:                                               ; preds = %18
  %32 = call i32 @memset(%struct._port_dctrs* %8, i32 0, i32 24)
  %33 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %34 = call i32 @pma_get_opa_port_dctrs(%struct.ib_device* %33, %struct._port_dctrs* %8)
  %35 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %8, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %38 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %8, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %42 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %8, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %46 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %8, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %50 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %52 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %54 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %58 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %62 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %31, %24
  %64 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %65 = bitcast %struct.ib_pma_mad* %64 to %struct.ib_mad_hdr*
  %66 = call i32 @reply(%struct.ib_mad_hdr* %65)
  ret i32 %66
}

declare dso_local i32 @memset(%struct._port_dctrs*, i32, i32) #1

declare dso_local i32 @pma_get_opa_port_dctrs(%struct.ib_device*, %struct._port_dctrs*) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
