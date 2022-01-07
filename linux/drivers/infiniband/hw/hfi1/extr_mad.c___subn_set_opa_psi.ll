; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_psi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_psi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.opa_port_state_info = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PORT_INIT = common dso_local global i32 0, align 4
@IB_PORT_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32, i32)* @__subn_set_opa_psi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_psi(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.opa_smp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ib_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.hfi1_ibport*, align 8
  %24 = alloca %struct.hfi1_pportdata*, align 8
  %25 = alloca %struct.opa_port_state_info*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store %struct.ib_device* %3, %struct.ib_device** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @OPA_AM_NPORT(i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @OPA_AM_START_SM_CFG(i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = bitcast i32* %32 to %struct.opa_port_state_info*
  store %struct.opa_port_state_info* %33, %struct.opa_port_state_info** %25, align 8
  store i32 0, i32* %27, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %8
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @smp_length_check(i32 4, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %8
  %41 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %42 = load %struct.opa_smp*, %struct.opa_smp** %10, align 8
  %43 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.opa_smp*, %struct.opa_smp** %10, align 8
  %47 = bitcast %struct.opa_smp* %46 to %struct.ib_mad_hdr*
  %48 = call i32 @reply(%struct.ib_mad_hdr* %47)
  store i32 %48, i32* %9, align 4
  br label %123

49:                                               ; preds = %36
  %50 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %50, i32 %51)
  store %struct.hfi1_ibport* %52, %struct.hfi1_ibport** %23, align 8
  %53 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %23, align 8
  %54 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %53)
  store %struct.hfi1_pportdata* %54, %struct.hfi1_pportdata** %24, align 8
  %55 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %24, align 8
  %56 = call i32 @driver_lstate(%struct.hfi1_pportdata* %55)
  store i32 %56, i32* %20, align 4
  %57 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %25, align 8
  %58 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %57, i32 0, i32 0
  %59 = call i32 @port_states_to_logical_state(i32* %58)
  store i32 %59, i32* %21, align 4
  %60 = load %struct.opa_port_state_info*, %struct.opa_port_state_info** %25, align 8
  %61 = getelementptr inbounds %struct.opa_port_state_info, %struct.opa_port_state_info* %60, i32 0, i32 0
  %62 = call i32 @port_states_to_phys_state(i32* %61)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @IB_PORT_INIT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %49
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* @IB_PORT_ARMED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %69
  %78 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %24, align 8
  %79 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %73
  br label %98

81:                                               ; preds = %66
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* @IB_PORT_ARMED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %24, align 8
  %87 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  store i32 1, i32* %27, align 4
  %91 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %92 = load %struct.opa_smp*, %struct.opa_smp** %10, align 8
  %93 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %49
  %100 = load i32, i32* %27, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %24, align 8
  %104 = load %struct.opa_smp*, %struct.opa_smp** %10, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @set_port_states(%struct.hfi1_pportdata* %103, %struct.opa_smp* %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %26, align 4
  %109 = load i32, i32* %26, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %26, align 4
  store i32 %112, i32* %9, align 4
  br label %123

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %99
  %115 = load %struct.opa_smp*, %struct.opa_smp** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @__subn_get_opa_psi(%struct.opa_smp* %115, i32 %116, i32* %117, %struct.ib_device* %118, i32 %119, i32* %120, i32 %121)
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %114, %111, %40
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i32 @OPA_AM_START_SM_CFG(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @driver_lstate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @port_states_to_logical_state(i32*) #1

declare dso_local i32 @port_states_to_phys_state(i32*) #1

declare dso_local i32 @set_port_states(%struct.hfi1_pportdata*, %struct.opa_smp*, i32, i32, i32) #1

declare dso_local i32 @__subn_get_opa_psi(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
