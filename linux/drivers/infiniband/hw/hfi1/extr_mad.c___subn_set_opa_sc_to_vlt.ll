; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_sc_to_vlt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_sc_to_vlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PORT_ARMED = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_sc_to_vlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_sc_to_vlt(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hfi1_devdata*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.hfi1_pportdata*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @OPA_AM_NBLK(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @OPA_AM_ASYNC(i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %28 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %27)
  store %struct.hfi1_devdata* %28, %struct.hfi1_devdata** %18, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %19, align 8
  store i64 16, i64* %22, align 8
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %41, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %22, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @smp_length_check(i64 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36, %33, %7
  %42 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %43 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %44 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %48 = bitcast %struct.opa_smp* %47 to %struct.ib_mad_hdr*
  %49 = call i32 @reply(%struct.ib_mad_hdr* %48)
  store i32 %49, i32* %8, align 4
  br label %91

50:                                               ; preds = %36
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  %52 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %51, i32 0, i32 0
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %53, i64 %56
  store %struct.hfi1_pportdata* %57, %struct.hfi1_pportdata** %20, align 8
  %58 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %59 = call i32 @driver_lstate(%struct.hfi1_pportdata* %58)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* @IB_PORT_ARMED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %72 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %73 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %77 = bitcast %struct.opa_smp* %76 to %struct.ib_mad_hdr*
  %78 = call i32 @reply(%struct.ib_mad_hdr* %77)
  store i32 %78, i32* %8, align 4
  br label %91

79:                                               ; preds = %66, %50
  %80 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = call i32 @set_sc2vlt_tables(%struct.hfi1_devdata* %80, i8* %81)
  %83 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @__subn_get_opa_sc_to_vlt(%struct.opa_smp* %83, i32 %84, i32* %85, %struct.ib_device* %86, i32 %87, i32* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %79, %70, %41
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @OPA_AM_NBLK(i32) #1

declare dso_local i32 @OPA_AM_ASYNC(i32) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @smp_length_check(i64, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @driver_lstate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @set_sc2vlt_tables(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @__subn_get_opa_sc_to_vlt(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
