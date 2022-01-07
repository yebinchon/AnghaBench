; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_set_port_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_set_port_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.opa_smp = type { i32 }

@HFI_TRANSITION_DISALLOWED = common dso_local global i32 0, align 4
@HFI_TRANSITION_UNDEFINED = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@HFI_TRANSITION_IGNORED = common dso_local global i32 0, align 4
@IB_PORTPHYSSTATE_NOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"SubnSet(OPA_PortInfo) port state invalid: logical_state 0x%x physical_state 0x%x\0A\00", align 1
@HLS_DN_DOWNDEF = common dso_local global i64 0, align 8
@IB_PORTPHYSSTATE_POLLING = common dso_local global i64 0, align 8
@HLS_DN_POLL = common dso_local global i64 0, align 8
@OPA_LINKDOWN_REASON_FM_BOUNCE = common dso_local global i32 0, align 4
@IB_PORTPHYSSTATE_DISABLED = common dso_local global i64 0, align 8
@HLS_DN_DISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"SubnSet(OPA_PortInfo) invalid physical state 0x%x\0A\00", align 1
@HLS_DN_OFFLINE = common dso_local global i64 0, align 8
@OPA_LINKDOWN_REASON_SMA_DISABLED = common dso_local global i32 0, align 4
@OPA_LINKDOWN_REASON_NONE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@HLS_UP_ARMED = common dso_local global i64 0, align 8
@SMA_IDLE_ARM = common dso_local global i32 0, align 4
@HLS_UP_ACTIVE = common dso_local global i64 0, align 8
@SMA_IDLE_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"SubnSet(OPA_PortInfo) Cannot move to Active with NeighborNormal 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"SubnSet(OPA_PortInfo) invalid logical state 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, %struct.opa_smp*, i64, i64, i32)* @set_port_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_states(%struct.hfi1_pportdata* %0, %struct.opa_smp* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca %struct.opa_smp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfi1_devdata*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %7, align 8
  store %struct.opa_smp* %1, %struct.opa_smp** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 2
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  store %struct.hfi1_devdata* %17, %struct.hfi1_devdata** %12, align 8
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @port_states_transition_allowed(%struct.hfi1_pportdata* %18, i64 %19, i64 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @HFI_TRANSITION_DISALLOWED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @HFI_TRANSITION_UNDEFINED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %5
  %30 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %31 = load %struct.opa_smp*, %struct.opa_smp** %8, align 8
  %32 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %196

35:                                               ; preds = %25
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @HFI_TRANSITION_IGNORED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %196

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @IB_PORTPHYSSTATE_NOP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 129
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 128
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %55 = load %struct.opa_smp*, %struct.opa_smp** %8, align 8
  %56 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %50, %47, %44, %40
  %60 = load i64, i64* %9, align 8
  switch i64 %60, label %187 [
    i64 128, label %61
    i64 129, label %67
    i64 130, label %152
    i64 131, label %163
  ]

61:                                               ; preds = %59
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @IB_PORTPHYSSTATE_NOP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %195

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %59, %66
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @IB_PORTPHYSSTATE_NOP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @HLS_DN_DOWNDEF, align 8
  store i64 %72, i64* %13, align 8
  br label %99

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @IB_PORTPHYSSTATE_POLLING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* @HLS_DN_POLL, align 8
  store i64 %78, i64* %13, align 8
  %79 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %80 = load i32, i32* @OPA_LINKDOWN_REASON_FM_BOUNCE, align 4
  %81 = load i32, i32* @OPA_LINKDOWN_REASON_FM_BOUNCE, align 4
  %82 = call i32 @set_link_down_reason(%struct.hfi1_pportdata* %79, i32 %80, i32 0, i32 %81)
  br label %98

83:                                               ; preds = %73
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @IB_PORTPHYSSTATE_DISABLED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* @HLS_DN_DISABLE, align 8
  store i64 %88, i64* %13, align 8
  br label %97

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8
  %91 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %93 = load %struct.opa_smp*, %struct.opa_smp** %8, align 8
  %94 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %195

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %77
  br label %99

99:                                               ; preds = %98, %71
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* @HLS_DN_POLL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @HLS_DN_DOWNDEF, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103, %99
  %108 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %109 = load i64, i64* @HLS_DN_OFFLINE, align 8
  %110 = call i32 @set_link_state(%struct.hfi1_pportdata* %108, i64 %109)
  %111 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %112 = call i32 @start_link(%struct.hfi1_pportdata* %111)
  br label %117

113:                                              ; preds = %103
  %114 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @set_link_state(%struct.hfi1_pportdata* %114, i64 %115)
  br label %117

117:                                              ; preds = %113, %107
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @HLS_DN_DISABLE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %123 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @OPA_LINKDOWN_REASON_SMA_DISABLED, align 4
  %126 = call i32 @HFI1_ODR_MASK(i32 %125)
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %130 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @OPA_LINKDOWN_REASON_NONE, align 4
  %133 = call i32 @HFI1_ODR_MASK(i32 %132)
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %128, %121
  %136 = load i32, i32* @OPA_LINKDOWN_REASON_SMA_DISABLED, align 4
  %137 = call i32 @HFI1_ODR_MASK(i32 %136)
  %138 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %139 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %128, %117
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* @HLS_DN_DISABLE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %149 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %6, align 4
  br label %196

151:                                              ; preds = %144, %140
  br label %195

152:                                              ; preds = %59
  %153 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %154 = load i64, i64* @HLS_UP_ARMED, align 8
  %155 = call i32 @set_link_state(%struct.hfi1_pportdata* %153, i64 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %160 = load i32, i32* @SMA_IDLE_ARM, align 4
  %161 = call i32 @send_idle_sma(%struct.hfi1_devdata* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %152
  br label %195

163:                                              ; preds = %59
  %164 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %165 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %170 = load i64, i64* @HLS_UP_ACTIVE, align 8
  %171 = call i32 @set_link_state(%struct.hfi1_pportdata* %169, i64 %170)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %176 = load i32, i32* @SMA_IDLE_ACTIVE, align 4
  %177 = call i32 @send_idle_sma(%struct.hfi1_devdata* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %168
  br label %186

179:                                              ; preds = %163
  %180 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %182 = load %struct.opa_smp*, %struct.opa_smp** %8, align 8
  %183 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %179, %178
  br label %195

187:                                              ; preds = %59
  %188 = load i64, i64* %9, align 8
  %189 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %188)
  %190 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %191 = load %struct.opa_smp*, %struct.opa_smp** %8, align 8
  %192 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %187, %186, %162, %151, %89, %65
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %195, %147, %39, %29
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @port_states_transition_allowed(%struct.hfi1_pportdata*, i64, i64) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @set_link_down_reason(%struct.hfi1_pportdata*, i32, i32, i32) #1

declare dso_local i32 @set_link_state(%struct.hfi1_pportdata*, i64) #1

declare dso_local i32 @start_link(%struct.hfi1_pportdata*) #1

declare dso_local i32 @HFI1_ODR_MASK(i32) #1

declare dso_local i32 @send_idle_sma(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
