; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_pkey_validation_pma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_pkey_validation_pma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.opa_mad = type { i32 }
%struct.ib_wc = type { i32 }

@LIM_MGMT_P_KEY = common dso_local global i64 0, align 8
@FULL_MGMT_P_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, %struct.opa_mad*, %struct.ib_wc*)* @hfi1_pkey_validation_pma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_pkey_validation_pma(%struct.hfi1_ibport* %0, %struct.opa_mad* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_ibport*, align 8
  %6 = alloca %struct.opa_mad*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i64, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %5, align 8
  store %struct.opa_mad* %1, %struct.opa_mad** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %9 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %10 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %11 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @hfi1_lookup_pkey_value(%struct.hfi1_ibport* %9, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %15 = load %struct.opa_mad*, %struct.opa_mad** %6, align 8
  %16 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %17 = call i32 @is_local_mad(%struct.hfi1_ibport* %14, %struct.opa_mad* %15, %struct.ib_wc* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @LIM_MGMT_P_KEY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @FULL_MGMT_P_KEY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %23, %19, %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @LIM_MGMT_P_KEY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %36 = call i64 @is_full_mgmt_pkey_in_table(%struct.hfi1_ibport* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %34, %30
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %27
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @hfi1_lookup_pkey_value(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @is_local_mad(%struct.hfi1_ibport*, %struct.opa_mad*, %struct.ib_wc*) #1

declare dso_local i64 @is_full_mgmt_pkey_in_table(%struct.hfi1_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
