; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_psi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_psi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32, i32, i32, i32, i32 }
%struct.opa_port_state_info = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PORT_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_psi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_psi(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca %struct.hfi1_ibport*, align 8
  %20 = alloca %struct.hfi1_pportdata*, align 8
  %21 = alloca %struct.opa_port_state_info*, align 8
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
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @OPA_AM_START_SM_CFG(i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast i32* %26 to %struct.opa_port_state_info*
  store %struct.opa_port_state_info* %27, %struct.opa_port_state_info** %21, align 8
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %34, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @smp_length_check(i32 24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %7
  %35 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %36 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %37 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %41 = bitcast %struct.opa_smp* %40 to %struct.ib_mad_hdr*
  %42 = call i32 @reply(%struct.ib_mad_hdr* %41)
  store i32 %42, i32* %8, align 4
  br label %118

43:                                               ; preds = %30
  %44 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %44, i32 %45)
  store %struct.hfi1_ibport* %46, %struct.hfi1_ibport** %19, align 8
  %47 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %19, align 8
  %48 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %47)
  store %struct.hfi1_pportdata* %48, %struct.hfi1_pportdata** %20, align 8
  %49 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %50 = call i32 @driver_lstate(%struct.hfi1_pportdata* %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @IB_PORT_INIT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %59 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %53, %43
  %61 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %62 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 4
  %65 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %21, align 8
  %66 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %69 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 5
  %72 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %21, align 8
  %73 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %78 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %21, align 8
  %81 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %86 = call i32 @driver_pstate(%struct.hfi1_pportdata* %85)
  %87 = shl i32 %86, 4
  %88 = load i32, i32* %18, align 4
  %89 = and i32 %88, 15
  %90 = or i32 %87, %89
  %91 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %21, align 8
  %92 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %95 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_be16(i32 %96)
  %98 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %21, align 8
  %99 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %20, align 8
  %101 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @cpu_to_be16(i32 %102)
  %104 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %21, align 8
  %105 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %60
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 24
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  br label %114

114:                                              ; preds = %108, %60
  %115 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %116 = bitcast %struct.opa_smp* %115 to %struct.ib_mad_hdr*
  %117 = call i32 @reply(%struct.ib_mad_hdr* %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %34
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i32 @OPA_AM_START_SM_CFG(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @driver_lstate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @driver_pstate(%struct.hfi1_pportdata*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
