; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_dce_aux_transfer_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_dce_aux_transfer_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { %struct.TYPE_9__*, %struct.ddc* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.dce_aux** }
%struct.dce_aux = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ddc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.aux_payload = type { i32, i32, i32*, i32, i32, i64 }
%struct.aux_request_transaction_data = type { i32, i32, i32, i32, i32, i32 }
%struct.aux_reply_transaction_data = type { i32, i32, i32, i32, i32, i32 }

@AUX_TRANSACTION_TYPE_I2C = common dso_local global i32 0, align 4
@AUX_TRANSACTION_TYPE_DP = common dso_local global i32 0, align 4
@AUX_CHANNEL_OPERATION_SUCCEEDED = common dso_local global i32 0, align 4
@EVENT_LOG_AUX_ORIGIN_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_aux_transfer_raw(%struct.ddc_service* %0, %struct.aux_payload* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddc_service*, align 8
  %6 = alloca %struct.aux_payload*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ddc*, align 8
  %9 = alloca %struct.dce_aux*, align 8
  %10 = alloca %struct.aux_request_transaction_data, align 4
  %11 = alloca %struct.aux_reply_transaction_data, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %5, align 8
  store %struct.aux_payload* %1, %struct.aux_payload** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.ddc_service*, %struct.ddc_service** %5, align 8
  %17 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %16, i32 0, i32 1
  %18 = load %struct.ddc*, %struct.ddc** %17, align 8
  store %struct.ddc* %18, %struct.ddc** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %19 = call i32 @memset(%struct.aux_request_transaction_data* %10, i32 0, i32 24)
  %20 = bitcast %struct.aux_reply_transaction_data* %11 to %struct.aux_request_transaction_data*
  %21 = call i32 @memset(%struct.aux_request_transaction_data* %20, i32 0, i32 24)
  %22 = load %struct.ddc_service*, %struct.ddc_service** %5, align 8
  %23 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.dce_aux**, %struct.dce_aux*** %29, align 8
  %31 = load %struct.ddc*, %struct.ddc** %8, align 8
  %32 = getelementptr inbounds %struct.ddc, %struct.ddc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dce_aux*, %struct.dce_aux** %30, i64 %35
  %37 = load %struct.dce_aux*, %struct.dce_aux** %36, align 8
  store %struct.dce_aux* %37, %struct.dce_aux** %9, align 8
  %38 = load %struct.dce_aux*, %struct.dce_aux** %9, align 8
  %39 = load %struct.ddc*, %struct.ddc** %8, align 8
  %40 = call i32 @acquire(%struct.dce_aux* %38, %struct.ddc* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %119

43:                                               ; preds = %3
  %44 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %45 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @AUX_TRANSACTION_TYPE_I2C, align 4
  %50 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @AUX_TRANSACTION_TYPE_DP, align 4
  %53 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %56 = call i32 @i2caux_action_from_payload(%struct.aux_payload* %55)
  %57 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %59 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %63 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 10
  %66 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %68 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %72 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %10, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.dce_aux*, %struct.dce_aux** %9, align 8
  %76 = call i32 @submit_channel_request(%struct.dce_aux* %75, %struct.aux_request_transaction_data* %10)
  %77 = load %struct.dce_aux*, %struct.dce_aux** %9, align 8
  %78 = call i32 @get_channel_status(%struct.dce_aux* %77, i32* %12)
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AUX_CHANNEL_OPERATION_SUCCEEDED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  %85 = load %struct.dce_aux*, %struct.dce_aux** %9, align 8
  %86 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %87 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %90 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %93 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @read_channel_reply(%struct.dce_aux* %85, i32 %88, i32 %91, i32* %94, i32* %14)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.dce_aux*, %struct.dce_aux** %9, align 8
  %97 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @EVENT_LOG_AUX_ORIGIN_NATIVE, align 4
  %104 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %105 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.aux_payload*, %struct.aux_payload** %6, align 8
  %110 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @EVENT_LOG_AUX_REP(i32 %102, i32 %103, i32 %107, i32 %108, i32 %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %13, align 4
  br label %115

114:                                              ; preds = %54
  store i32 -1, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %84
  %116 = load %struct.dce_aux*, %struct.dce_aux** %9, align 8
  %117 = call i32 @release_engine(%struct.dce_aux* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %42
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.aux_request_transaction_data*, i32, i32) #1

declare dso_local i32 @acquire(%struct.dce_aux*, %struct.ddc*) #1

declare dso_local i32 @i2caux_action_from_payload(%struct.aux_payload*) #1

declare dso_local i32 @submit_channel_request(%struct.dce_aux*, %struct.aux_request_transaction_data*) #1

declare dso_local i32 @get_channel_status(%struct.dce_aux*, i32*) #1

declare dso_local i32 @read_channel_reply(%struct.dce_aux*, i32, i32, i32*, i32*) #1

declare dso_local i32 @EVENT_LOG_AUX_REP(i32, i32, i32, i32, i32) #1

declare dso_local i32 @release_engine(%struct.dce_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
