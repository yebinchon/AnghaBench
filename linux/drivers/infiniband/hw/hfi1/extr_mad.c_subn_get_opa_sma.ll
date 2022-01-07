; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_get_opa_sma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_get_opa_sma.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @subn_get_opa_sma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_opa_sma(i32 %0, %struct.opa_smp* %1, i32 %2, i32* %3, %struct.ib_device* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.opa_smp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hfi1_ibport*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.opa_smp* %1, %struct.opa_smp** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store %struct.ib_device* %4, %struct.ib_device** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %21 = load i32, i32* %15, align 4
  %22 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %20, i32 %21)
  store %struct.hfi1_ibport* %22, %struct.hfi1_ibport** %19, align 8
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %200 [
    i32 144, label %24
    i32 143, label %33
    i32 141, label %42
    i32 142, label %51
    i32 128, label %60
    i32 131, label %69
    i32 129, label %78
    i32 130, label %87
    i32 132, label %96
    i32 138, label %105
    i32 137, label %114
    i32 139, label %123
    i32 135, label %132
    i32 133, label %141
    i32 134, label %150
    i32 136, label %159
    i32 145, label %168
    i32 140, label %177
  ]

24:                                               ; preds = %8
  %25 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @__subn_get_opa_nodedesc(%struct.opa_smp* %25, i32 %26, i32* %27, %struct.ib_device* %28, i32 %29, i32* %30, i32 %31)
  store i32 %32, i32* %18, align 4
  br label %209

33:                                               ; preds = %8
  %34 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @__subn_get_opa_nodeinfo(%struct.opa_smp* %34, i32 %35, i32* %36, %struct.ib_device* %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %18, align 4
  br label %209

42:                                               ; preds = %8
  %43 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @__subn_get_opa_portinfo(%struct.opa_smp* %43, i32 %44, i32* %45, %struct.ib_device* %46, i32 %47, i32* %48, i32 %49)
  store i32 %50, i32* %18, align 4
  br label %209

51:                                               ; preds = %8
  %52 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @__subn_get_opa_pkeytable(%struct.opa_smp* %52, i32 %53, i32* %54, %struct.ib_device* %55, i32 %56, i32* %57, i32 %58)
  store i32 %59, i32* %18, align 4
  br label %209

60:                                               ; preds = %8
  %61 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @__subn_get_opa_sl_to_sc(%struct.opa_smp* %61, i32 %62, i32* %63, %struct.ib_device* %64, i32 %65, i32* %66, i32 %67)
  store i32 %68, i32* %18, align 4
  br label %209

69:                                               ; preds = %8
  %70 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @__subn_get_opa_sc_to_sl(%struct.opa_smp* %70, i32 %71, i32* %72, %struct.ib_device* %73, i32 %74, i32* %75, i32 %76)
  store i32 %77, i32* %18, align 4
  br label %209

78:                                               ; preds = %8
  %79 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @__subn_get_opa_sc_to_vlt(%struct.opa_smp* %79, i32 %80, i32* %81, %struct.ib_device* %82, i32 %83, i32* %84, i32 %85)
  store i32 %86, i32* %18, align 4
  br label %209

87:                                               ; preds = %8
  %88 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @__subn_get_opa_sc_to_vlnt(%struct.opa_smp* %88, i32 %89, i32* %90, %struct.ib_device* %91, i32 %92, i32* %93, i32 %94)
  store i32 %95, i32* %18, align 4
  br label %209

96:                                               ; preds = %8
  %97 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @__subn_get_opa_psi(%struct.opa_smp* %97, i32 %98, i32* %99, %struct.ib_device* %100, i32 %101, i32* %102, i32 %103)
  store i32 %104, i32* %18, align 4
  br label %209

105:                                              ; preds = %8
  %106 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @__subn_get_opa_bct(%struct.opa_smp* %106, i32 %107, i32* %108, %struct.ib_device* %109, i32 %110, i32* %111, i32 %112)
  store i32 %113, i32* %18, align 4
  br label %209

114:                                              ; preds = %8
  %115 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @__subn_get_opa_cable_info(%struct.opa_smp* %115, i32 %116, i32* %117, %struct.ib_device* %118, i32 %119, i32* %120, i32 %121)
  store i32 %122, i32* %18, align 4
  br label %209

123:                                              ; preds = %8
  %124 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @__subn_get_opa_vl_arb(%struct.opa_smp* %124, i32 %125, i32* %126, %struct.ib_device* %127, i32 %128, i32* %129, i32 %130)
  store i32 %131, i32* %18, align 4
  br label %209

132:                                              ; preds = %8
  %133 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @__subn_get_opa_cong_info(%struct.opa_smp* %133, i32 %134, i32* %135, %struct.ib_device* %136, i32 %137, i32* %138, i32 %139)
  store i32 %140, i32* %18, align 4
  br label %209

141:                                              ; preds = %8
  %142 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32*, i32** %16, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @__subn_get_opa_cong_setting(%struct.opa_smp* %142, i32 %143, i32* %144, %struct.ib_device* %145, i32 %146, i32* %147, i32 %148)
  store i32 %149, i32* %18, align 4
  br label %209

150:                                              ; preds = %8
  %151 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load i32*, i32** %16, align 8
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @__subn_get_opa_hfi1_cong_log(%struct.opa_smp* %151, i32 %152, i32* %153, %struct.ib_device* %154, i32 %155, i32* %156, i32 %157)
  store i32 %158, i32* %18, align 4
  br label %209

159:                                              ; preds = %8
  %160 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load i32*, i32** %16, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @__subn_get_opa_cc_table(%struct.opa_smp* %160, i32 %161, i32* %162, %struct.ib_device* %163, i32 %164, i32* %165, i32 %166)
  store i32 %167, i32* %18, align 4
  br label %209

168:                                              ; preds = %8
  %169 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @__subn_get_opa_led_info(%struct.opa_smp* %169, i32 %170, i32* %171, %struct.ib_device* %172, i32 %173, i32* %174, i32 %175)
  store i32 %176, i32* %18, align 4
  br label %209

177:                                              ; preds = %8
  %178 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %19, align 8
  %179 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %187 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %9, align 4
  br label %211

189:                                              ; preds = %177
  %190 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %19, align 8
  %191 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IB_PORT_SM, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %198, i32* %9, align 4
  br label %211

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %8, %199
  %201 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %202 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %203 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load %struct.opa_smp*, %struct.opa_smp** %11, align 8
  %207 = bitcast %struct.opa_smp* %206 to %struct.ib_mad_hdr*
  %208 = call i32 @reply(%struct.ib_mad_hdr* %207)
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %200, %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78, %69, %60, %51, %42, %33, %24
  %210 = load i32, i32* %18, align 4
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %209, %197, %185
  %212 = load i32, i32* %9, align 4
  ret i32 %212
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @__subn_get_opa_nodedesc(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_nodeinfo(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_portinfo(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_pkeytable(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_sl_to_sc(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_sc_to_sl(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_sc_to_vlt(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_sc_to_vlnt(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_psi(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_bct(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_cable_info(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_vl_arb(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_cong_info(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_cong_setting(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_hfi1_cong_log(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_cc_table(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @__subn_get_opa_led_info(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
