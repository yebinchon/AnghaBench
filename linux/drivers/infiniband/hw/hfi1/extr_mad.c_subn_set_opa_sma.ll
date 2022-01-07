; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_set_opa_sma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_set_opa_sma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_PORT_SM_DISABLED = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_PORT_SM = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32, i32)* @subn_set_opa_sma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_opa_sma(i32 %0, %struct.opa_smp* %1, i32 %2, i32* %3, %struct.ib_device* %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.opa_smp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ib_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.hfi1_ibport*, align 8
  store i32 %0, i32* %11, align 4
  store %struct.opa_smp* %1, %struct.opa_smp** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store %struct.ib_device* %4, %struct.ib_device** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %23 = load i32, i32* %16, align 4
  %24 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %22, i32 %23)
  store %struct.hfi1_ibport* %24, %struct.hfi1_ibport** %21, align 8
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %159 [
    i32 138, label %26
    i32 139, label %36
    i32 128, label %45
    i32 131, label %54
    i32 129, label %63
    i32 130, label %72
    i32 132, label %81
    i32 135, label %91
    i32 136, label %100
    i32 133, label %109
    i32 134, label %118
    i32 140, label %127
    i32 137, label %136
  ]

26:                                               ; preds = %9
  %27 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = call i32 @__subn_set_opa_portinfo(%struct.opa_smp* %27, i32 %28, i32* %29, %struct.ib_device* %30, i32 %31, i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %20, align 4
  br label %168

36:                                               ; preds = %9
  %37 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @__subn_set_opa_pkeytable(%struct.opa_smp* %37, i32 %38, i32* %39, %struct.ib_device* %40, i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %20, align 4
  br label %168

45:                                               ; preds = %9
  %46 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @__subn_set_opa_sl_to_sc(%struct.opa_smp* %46, i32 %47, i32* %48, %struct.ib_device* %49, i32 %50, i32* %51, i32 %52)
  store i32 %53, i32* %20, align 4
  br label %168

54:                                               ; preds = %9
  %55 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @__subn_set_opa_sc_to_sl(%struct.opa_smp* %55, i32 %56, i32* %57, %struct.ib_device* %58, i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %20, align 4
  br label %168

63:                                               ; preds = %9
  %64 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @__subn_set_opa_sc_to_vlt(%struct.opa_smp* %64, i32 %65, i32* %66, %struct.ib_device* %67, i32 %68, i32* %69, i32 %70)
  store i32 %71, i32* %20, align 4
  br label %168

72:                                               ; preds = %9
  %73 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @__subn_set_opa_sc_to_vlnt(%struct.opa_smp* %73, i32 %74, i32* %75, %struct.ib_device* %76, i32 %77, i32* %78, i32 %79)
  store i32 %80, i32* %20, align 4
  br label %168

81:                                               ; preds = %9
  %82 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @__subn_set_opa_psi(%struct.opa_smp* %82, i32 %83, i32* %84, %struct.ib_device* %85, i32 %86, i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %20, align 4
  br label %168

91:                                               ; preds = %9
  %92 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @__subn_set_opa_bct(%struct.opa_smp* %92, i32 %93, i32* %94, %struct.ib_device* %95, i32 %96, i32* %97, i32 %98)
  store i32 %99, i32* %20, align 4
  br label %168

100:                                              ; preds = %9
  %101 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @__subn_set_opa_vl_arb(%struct.opa_smp* %101, i32 %102, i32* %103, %struct.ib_device* %104, i32 %105, i32* %106, i32 %107)
  store i32 %108, i32* %20, align 4
  br label %168

109:                                              ; preds = %9
  %110 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @__subn_set_opa_cong_setting(%struct.opa_smp* %110, i32 %111, i32* %112, %struct.ib_device* %113, i32 %114, i32* %115, i32 %116)
  store i32 %117, i32* %20, align 4
  br label %168

118:                                              ; preds = %9
  %119 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @__subn_set_opa_cc_table(%struct.opa_smp* %119, i32 %120, i32* %121, %struct.ib_device* %122, i32 %123, i32* %124, i32 %125)
  store i32 %126, i32* %20, align 4
  br label %168

127:                                              ; preds = %9
  %128 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32*, i32** %14, align 8
  %131 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @__subn_set_opa_led_info(%struct.opa_smp* %128, i32 %129, i32* %130, %struct.ib_device* %131, i32 %132, i32* %133, i32 %134)
  store i32 %135, i32* %20, align 4
  br label %168

136:                                              ; preds = %9
  %137 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %21, align 8
  %138 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %146 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %10, align 4
  br label %170

148:                                              ; preds = %136
  %149 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %21, align 8
  %150 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IB_PORT_SM, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %157, i32* %10, align 4
  br label %170

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %9, %158
  %160 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %161 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %162 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load %struct.opa_smp*, %struct.opa_smp** %12, align 8
  %166 = bitcast %struct.opa_smp* %165 to %struct.ib_mad_hdr*
  %167 = call i32 @reply(%struct.ib_mad_hdr* %166)
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %159, %127, %118, %109, %100, %91, %81, %72, %63, %54, %45, %36, %26
  %169 = load i32, i32* %20, align 4
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %168, %156, %144
  %171 = load i32, i32* %10, align 4
  ret i32 %171
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @__subn_set_opa_portinfo(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @__subn_set_opa_pkeytable(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_sl_to_sc(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_sc_to_sl(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_sc_to_vlt(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_sc_to_vlnt(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_psi(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @__subn_set_opa_bct(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_vl_arb(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_cong_setting(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_cc_table(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_set_opa_led_info(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
