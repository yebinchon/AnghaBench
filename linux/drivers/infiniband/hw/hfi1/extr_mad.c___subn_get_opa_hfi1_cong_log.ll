; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_hfi1_cong_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_hfi1_cong_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32, i32, i64, i32*, %struct.opa_hfi1_cong_log_event_internal* }
%struct.opa_hfi1_cong_log_event_internal = type { i32, i32, i32, i32, i32, i32 }
%struct.opa_hfi1_cong_log = type { %struct.TYPE_2__*, i8*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_CC_LOG_TYPE_HFI = common dso_local global i32 0, align 4
@OPA_CONG_LOG_ELEMS = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_hfi1_cong_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_hfi1_cong_log(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_ibport*, align 8
  %17 = alloca %struct.hfi1_pportdata*, align 8
  %18 = alloca %struct.opa_hfi1_cong_log*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.opa_hfi1_cong_log_event_internal*, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %22, i32 %23)
  store %struct.hfi1_ibport* %24, %struct.hfi1_ibport** %16, align 8
  %25 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %26 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %25)
  store %struct.hfi1_pportdata* %26, %struct.hfi1_pportdata** %17, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = bitcast i32* %27 to %struct.opa_hfi1_cong_log*
  store %struct.opa_hfi1_cong_log* %28, %struct.opa_hfi1_cong_log** %18, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @smp_length_check(i32 40, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31, %7
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
  br label %191

44:                                               ; preds = %31
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %46 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load i32, i32* @OPA_CC_LOG_TYPE_HFI, align 4
  %49 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %50 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %52 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %54 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @cpu_to_be16(i64 %55)
  %57 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %58 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %60 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %63 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @memcpy(i32 %61, i32* %64, i32 4)
  %66 = call i32 (...) @ktime_get_ns()
  %67 = sdiv i32 %66, 1024
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %71 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  store i32 0, i32* %20, align 4
  br label %72

72:                                               ; preds = %166, %44
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* @OPA_CONG_LOG_ELEMS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %169

76:                                               ; preds = %72
  %77 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %78 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %77, i32 0, i32 4
  %79 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %78, align 8
  %80 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %81 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %79, i64 %84
  store %struct.opa_hfi1_cong_log_event_internal* %85, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %86 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %87 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @OPA_CONG_LOG_ELEMS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %93 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %76
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %97 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* @U32_MAX, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %166

104:                                              ; preds = %94
  %105 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %106 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %114 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %113, i32 0, i32 5
  %115 = call i32 @memcpy(i32 %112, i32* %114, i32 3)
  %116 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %117 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %125 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %124, i32 0, i32 4
  %126 = call i32 @memcpy(i32 %123, i32* %125, i32 3)
  %127 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %128 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 31
  %131 = shl i32 %130, 3
  %132 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %133 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 7
  %136 = or i32 %131, %135
  %137 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %138 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 8
  %144 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %145 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @cpu_to_be32(i32 %146)
  %148 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %149 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %20, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  store i8* %147, i8** %154, align 8
  %155 = load %struct.opa_hfi1_cong_log_event_internal*, %struct.opa_hfi1_cong_log_event_internal** %21, align 8
  %156 = getelementptr inbounds %struct.opa_hfi1_cong_log_event_internal, %struct.opa_hfi1_cong_log_event_internal* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @cpu_to_be32(i32 %157)
  %159 = load %struct.opa_hfi1_cong_log*, %struct.opa_hfi1_cong_log** %18, align 8
  %160 = getelementptr inbounds %struct.opa_hfi1_cong_log, %struct.opa_hfi1_cong_log* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i8* %158, i8** %165, align 8
  br label %166

166:                                              ; preds = %104, %103
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %72

169:                                              ; preds = %72
  %170 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %171 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @memset(i32* %172, i32 0, i32 8)
  %174 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %175 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %177 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %176, i32 0, i32 1
  %178 = call i32 @spin_unlock_irq(i32* %177)
  %179 = load i32*, i32** %14, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %169
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 %184, 40
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  br label %187

187:                                              ; preds = %181, %169
  %188 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %189 = bitcast %struct.opa_smp* %188 to %struct.ib_mad_hdr*
  %190 = call i32 @reply(%struct.ib_mad_hdr* %189)
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %187, %35
  %192 = load i32, i32* %8, align 4
  ret i32 %192
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
