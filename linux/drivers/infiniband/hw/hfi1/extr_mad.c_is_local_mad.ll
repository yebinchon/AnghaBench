; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_is_local_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_is_local_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.opa_mad = type { i32 }
%struct.ib_wc = type { i64 }
%struct.hfi1_pportdata = type { i64 }
%struct.opa_smp = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@OPA_LID_PERMISSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, %struct.opa_mad*, %struct.ib_wc*)* @is_local_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_local_mad(%struct.hfi1_ibport* %0, %struct.opa_mad* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_ibport*, align 8
  %6 = alloca %struct.opa_mad*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca %struct.opa_smp*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %5, align 8
  store %struct.opa_mad* %1, %struct.opa_mad** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %10 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %11 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %10)
  store %struct.hfi1_pportdata* %11, %struct.hfi1_pportdata** %8, align 8
  %12 = load %struct.opa_mad*, %struct.opa_mad** %6, align 8
  %13 = bitcast %struct.opa_mad* %12 to %struct.opa_smp*
  store %struct.opa_smp* %13, %struct.opa_smp** %9, align 8
  %14 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %15 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %21 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %26 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OPA_LID_PERMISSIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %34 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OPA_LID_PERMISSIVE, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %32, %24, %19
  %41 = phi i1 [ false, %24 ], [ false, %19 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %3
  %44 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %45 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %48 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %40
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
