; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cong_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cong_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.opa_congestion_info_attr = type { i32, i32, i64 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_CONG_LOG_ELEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_cong_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_cong_info(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.opa_congestion_info_attr*, align 8
  %17 = alloca %struct.hfi1_ibport*, align 8
  %18 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = bitcast i32* %19 to %struct.opa_congestion_info_attr*
  store %struct.opa_congestion_info_attr* %20, %struct.opa_congestion_info_attr** %16, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %21, i32 %22)
  store %struct.hfi1_ibport* %23, %struct.hfi1_ibport** %17, align 8
  %24 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %17, align 8
  %25 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %24)
  store %struct.hfi1_pportdata* %25, %struct.hfi1_pportdata** %18, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i64 @smp_length_check(i32 16, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %7
  %30 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %31 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %32 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %36 = bitcast %struct.opa_smp* %35 to %struct.ib_mad_hdr*
  %37 = call i32 @reply(%struct.ib_mad_hdr* %36)
  store i32 %37, i32* %8, align 4
  br label %61

38:                                               ; preds = %7
  %39 = load %struct.opa_congestion_info_attr*, %struct.opa_congestion_info_attr** %16, align 8
  %40 = getelementptr inbounds %struct.opa_congestion_info_attr, %struct.opa_congestion_info_attr* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %42 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.opa_congestion_info_attr*, %struct.opa_congestion_info_attr** %16, align 8
  %45 = getelementptr inbounds %struct.opa_congestion_info_attr, %struct.opa_congestion_info_attr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @OPA_CONG_LOG_ELEMS, align 4
  %47 = load %struct.opa_congestion_info_attr*, %struct.opa_congestion_info_attr** %16, align 8
  %48 = getelementptr inbounds %struct.opa_congestion_info_attr, %struct.opa_congestion_info_attr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 16
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  br label %57

57:                                               ; preds = %51, %38
  %58 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %59 = bitcast %struct.opa_smp* %58 to %struct.ib_mad_hdr*
  %60 = call i32 @reply(%struct.ib_mad_hdr* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %29
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
