; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_sc_to_vlnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_sc_to_vlnt.c"
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
@FM_TBL_SC2VLNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_sc_to_vlnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_sc_to_vlnt(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hfi1_devdata*, align 8
  %18 = alloca %struct.hfi1_pportdata*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @OPA_AM_NPORT(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %25 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %24)
  store %struct.hfi1_devdata* %25, %struct.hfi1_devdata** %17, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %19, align 8
  store i32 4, i32* %21, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @smp_length_check(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %7
  %36 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %37 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %38 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %42 = bitcast %struct.opa_smp* %41 to %struct.ib_mad_hdr*
  %43 = call i32 @reply(%struct.ib_mad_hdr* %42)
  store i32 %43, i32* %8, align 4
  br label %90

44:                                               ; preds = %30
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 0
  %47 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %47, i64 %50
  store %struct.hfi1_pportdata* %51, %struct.hfi1_pportdata** %18, align 8
  %52 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %53 = call i32 @driver_lstate(%struct.hfi1_pportdata* %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* @IB_PORT_ARMED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57, %44
  %62 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %63 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %64 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %68 = bitcast %struct.opa_smp* %67 to %struct.ib_mad_hdr*
  %69 = call i32 @reply(%struct.ib_mad_hdr* %68)
  store i32 %69, i32* %8, align 4
  br label %90

70:                                               ; preds = %57
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %72 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %71, i32 0, i32 0
  %73 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %73, i64 %76
  store %struct.hfi1_pportdata* %77, %struct.hfi1_pportdata** %18, align 8
  %78 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %79 = load i32, i32* @FM_TBL_SC2VLNT, align 4
  %80 = load i8*, i8** %19, align 8
  %81 = call i32 @fm_set_table(%struct.hfi1_pportdata* %78, i32 %79, i8* %80)
  %82 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @__subn_get_opa_sc_to_vlnt(%struct.opa_smp* %82, i32 %83, i32* %84, %struct.ib_device* %85, i32 %86, i32* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %70, %61, %35
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @driver_lstate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @fm_set_table(%struct.hfi1_pportdata*, i32, i8*) #1

declare dso_local i32 @__subn_get_opa_sc_to_vlnt(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
