; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_opa_local_smp_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_opa_local_smp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.ib_wc = type { i64, i32 }
%struct.hfi1_pportdata = type { i64* }

@LIM_MGMT_P_KEY = common dso_local global i64 0, align 8
@FULL_MGMT_P_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, %struct.ib_wc*)* @opa_local_smp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_local_smp_check(%struct.hfi1_ibport* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca i64, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  %8 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %9 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %8)
  store %struct.hfi1_pportdata* %9, %struct.hfi1_pportdata** %6, align 8
  %10 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %11 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %14 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = call i64 @ARRAY_SIZE(i64* %15)
  %17 = icmp uge i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %21 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @LIM_MGMT_P_KEY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @FULL_MGMT_P_KEY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %19
  store i32 0, i32* %3, align 4
  br label %43

36:                                               ; preds = %31
  %37 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ingress_pkey_table_fail(%struct.hfi1_pportdata* %37, i64 %38, i32 %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %35, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ingress_pkey_table_fail(%struct.hfi1_pportdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
