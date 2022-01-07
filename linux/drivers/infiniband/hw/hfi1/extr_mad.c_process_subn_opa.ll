; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_process_subn_opa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_process_subn_opa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64 }
%struct.opa_mad = type { i32 }
%struct.opa_smp = type { i64, i64, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi1_ibport = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@OPA_SM_CLASS_VERSION = common dso_local global i64 0, align 8
@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, %struct.opa_mad*, %struct.opa_mad*, i64*, i32)* @process_subn_opa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_subn_opa(%struct.ib_device* %0, i32 %1, i64 %2, %struct.opa_mad* %3, %struct.opa_mad* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.opa_mad*, align 8
  %13 = alloca %struct.opa_mad*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.opa_smp*, align 8
  %17 = alloca %struct.hfi1_ibport*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store %struct.opa_mad* %3, %struct.opa_mad** %12, align 8
  store %struct.opa_mad* %4, %struct.opa_mad** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load %struct.opa_mad*, %struct.opa_mad** %13, align 8
  %25 = bitcast %struct.opa_mad* %24 to %struct.opa_smp*
  store %struct.opa_smp* %25, %struct.opa_smp** %16, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %26, i64 %27)
  store %struct.hfi1_ibport* %28, %struct.hfi1_ibport** %17, align 8
  %29 = load %struct.opa_mad*, %struct.opa_mad** %13, align 8
  %30 = load %struct.opa_mad*, %struct.opa_mad** %12, align 8
  %31 = bitcast %struct.opa_mad* %29 to i8*
  %32 = bitcast %struct.opa_mad* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %34 = call i64* @opa_get_smp_data(%struct.opa_smp* %33)
  store i64* %34, i64** %18, align 8
  %35 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %36 = call i64 @opa_get_smp_data_size(%struct.opa_smp* %35)
  store i64 %36, i64* %20, align 8
  %37 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %38 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @be32_to_cpu(i32 %39)
  store i64 %40, i64* %19, align 8
  %41 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %42 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %21, align 8
  %44 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %45 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OPA_SM_CLASS_VERSION, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %7
  %50 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %51 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %52 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %56 = bitcast %struct.opa_smp* %55 to %struct.ib_mad_hdr*
  %57 = call i32 @reply(%struct.ib_mad_hdr* %56)
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  store i32 %58, i32* %8, align 4
  br label %207

59:                                               ; preds = %7
  %60 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %17, align 8
  %61 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %62 = bitcast %struct.opa_smp* %61 to %struct.ib_mad_hdr*
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %65 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %68 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %73 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %78 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @check_mkey(%struct.hfi1_ibport* %60, %struct.ib_mad_hdr* %62, i32 %63, i32 %66, i32 %71, i32 %76, i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %140

83:                                               ; preds = %59
  %84 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %85 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @be32_to_cpu(i32 %86)
  store i64 %87, i64* %23, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %137

91:                                               ; preds = %83
  %92 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %93 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 135
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %98 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 131
  br i1 %100, label %101, label %137

101:                                              ; preds = %96, %91
  %102 = load i64, i64* %23, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %101
  %105 = load i64, i64* %23, align 8
  %106 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %107 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %137

110:                                              ; preds = %104
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %23, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %110
  %115 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %116 = load i64, i64* %23, align 8
  %117 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %115, i64 %116)
  %118 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %119 = bitcast %struct.opa_smp* %118 to %struct.ib_mad_hdr*
  %120 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %121 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %124 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %129 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %134 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @check_mkey(%struct.hfi1_ibport* %117, %struct.ib_mad_hdr* %119, i32 0, i32 %122, i32 %127, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %114, %110, %104, %101, %96, %83
  %138 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  store i32 %139, i32* %8, align 4
  br label %207

140:                                              ; preds = %59
  %141 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %142 = call i64 @opa_get_smp_header_size(%struct.opa_smp* %141)
  %143 = load i64*, i64** %14, align 8
  store i64 %142, i64* %143, align 8
  %144 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %145 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  switch i32 %146, label %196 [
    i32 135, label %147
    i32 131, label %168
    i32 130, label %189
    i32 133, label %189
    i32 132, label %189
    i32 134, label %189
    i32 129, label %191
  ]

147:                                              ; preds = %140
  %148 = load i64, i64* %21, align 8
  switch i64 %148, label %149 [
    i64 128, label %161
  ]

149:                                              ; preds = %147
  %150 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %151 = call i32 @clear_opa_smp_data(%struct.opa_smp* %150)
  %152 = load i64, i64* %21, align 8
  %153 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %154 = load i64, i64* %19, align 8
  %155 = load i64*, i64** %18, align 8
  %156 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64*, i64** %14, align 8
  %159 = load i64, i64* %20, align 8
  %160 = call i32 @subn_get_opa_sma(i64 %152, %struct.opa_smp* %153, i64 %154, i64* %155, %struct.ib_device* %156, i64 %157, i64* %158, i64 %159)
  store i32 %160, i32* %22, align 4
  br label %167

161:                                              ; preds = %147
  %162 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %163 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %164 = load i64, i64* %11, align 8
  %165 = load i64*, i64** %14, align 8
  %166 = call i32 @subn_get_opa_aggregate(%struct.opa_smp* %162, %struct.ib_device* %163, i64 %164, i64* %165)
  store i32 %166, i32* %22, align 4
  br label %167

167:                                              ; preds = %161, %149
  br label %205

168:                                              ; preds = %140
  %169 = load i64, i64* %21, align 8
  switch i64 %169, label %170 [
    i64 128, label %181
  ]

170:                                              ; preds = %168
  %171 = load i64, i64* %21, align 8
  %172 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %173 = load i64, i64* %19, align 8
  %174 = load i64*, i64** %18, align 8
  %175 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load i64*, i64** %14, align 8
  %178 = load i64, i64* %20, align 8
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @subn_set_opa_sma(i64 %171, %struct.opa_smp* %172, i64 %173, i64* %174, %struct.ib_device* %175, i64 %176, i64* %177, i64 %178, i32 %179)
  store i32 %180, i32* %22, align 4
  br label %188

181:                                              ; preds = %168
  %182 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %183 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i64*, i64** %14, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @subn_set_opa_aggregate(%struct.opa_smp* %182, %struct.ib_device* %183, i64 %184, i64* %185, i32 %186)
  store i32 %187, i32* %22, align 4
  br label %188

188:                                              ; preds = %181, %170
  br label %205

189:                                              ; preds = %140, %140, %140, %140
  %190 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %190, i32* %22, align 4
  br label %205

191:                                              ; preds = %140
  %192 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %17, align 8
  %193 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %194 = call i32 @subn_handle_opa_trap_repress(%struct.hfi1_ibport* %192, %struct.opa_smp* %193)
  %195 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %195, i32* %22, align 4
  br label %205

196:                                              ; preds = %140
  %197 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %198 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %199 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.opa_smp*, %struct.opa_smp** %16, align 8
  %203 = bitcast %struct.opa_smp* %202 to %struct.ib_mad_hdr*
  %204 = call i32 @reply(%struct.ib_mad_hdr* %203)
  store i32 %204, i32* %22, align 4
  br label %205

205:                                              ; preds = %196, %191, %189, %188, %167
  %206 = load i32, i32* %22, align 4
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %205, %137, %49
  %208 = load i32, i32* %8, align 4
  ret i32 %208
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64* @opa_get_smp_data(%struct.opa_smp*) #1

declare dso_local i64 @opa_get_smp_data_size(%struct.opa_smp*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @check_mkey(%struct.hfi1_ibport*, %struct.ib_mad_hdr*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @opa_get_smp_header_size(%struct.opa_smp*) #1

declare dso_local i32 @clear_opa_smp_data(%struct.opa_smp*) #1

declare dso_local i32 @subn_get_opa_sma(i64, %struct.opa_smp*, i64, i64*, %struct.ib_device*, i64, i64*, i64) #1

declare dso_local i32 @subn_get_opa_aggregate(%struct.opa_smp*, %struct.ib_device*, i64, i64*) #1

declare dso_local i32 @subn_set_opa_sma(i64, %struct.opa_smp*, i64, i64*, %struct.ib_device*, i64, i64*, i64, i32) #1

declare dso_local i32 @subn_set_opa_aggregate(%struct.opa_smp*, %struct.ib_device*, i64, i64*, i32) #1

declare dso_local i32 @subn_handle_opa_trap_repress(%struct.hfi1_ibport*, %struct.opa_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
