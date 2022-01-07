; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_query_ddc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_query_ddc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.aux_payload = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.i2c_payloads = type { i32 }
%struct.i2c_command = type { i32, i32, i32, i32 }

@DEFAULT_AUX_MAX_DATA_SIZE = common dso_local global i32 0, align 4
@EDID_SEGMENT_SIZE = common dso_local global i32 0, align 4
@DDC_I2C_COMMAND_ENGINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddc_service*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.aux_payload, align 8
  %20 = alloca %struct.aux_payload, align 8
  %21 = alloca %struct.i2c_payloads*, align 8
  %22 = alloca %struct.i2c_command, align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %24 = call i64 @dal_ddc_service_is_in_aux_transaction_mode(%struct.ddc_service* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @DEFAULT_AUX_MAX_DATA_SIZE, align 4
  br label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @EDID_SEGMENT_SIZE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %15, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %15, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @EDID_SEGMENT_SIZE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @EDID_SEGMENT_SIZE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %30
  store i32 0, i32* %7, align 4
  br label %138

55:                                               ; preds = %50
  %56 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %57 = call i64 @dal_ddc_service_is_in_aux_transaction_mode(%struct.ddc_service* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 3
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 4
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 5
  %68 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %69 = call i32 @get_defer_delay(%struct.ddc_service* %68)
  store i32 %69, i32* %67, align 4
  %70 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 6
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %19, i32 0, i32 7
  %72 = load i32*, i32** %10, align 8
  store i32* %72, i32** %71, align 8
  %73 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 3
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 4
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %78, align 8
  %80 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 5
  %81 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %82 = call i32 @get_defer_delay(%struct.ddc_service* %81)
  store i32 %82, i32* %80, align 4
  %83 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 6
  store i32* null, i32** %83, align 8
  %84 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %20, i32 0, i32 7
  %85 = load i32*, i32** %12, align 8
  store i32* %85, i32** %84, align 8
  %86 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %87 = call i32 @dc_link_aux_transfer_with_retries(%struct.ddc_service* %86, %struct.aux_payload* %19)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %138

91:                                               ; preds = %59
  %92 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %93 = call i32 @dc_link_aux_transfer_with_retries(%struct.ddc_service* %92, %struct.aux_payload* %20)
  store i32 %93, i32* %14, align 4
  br label %136

94:                                               ; preds = %55
  %95 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %96 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call %struct.i2c_payloads* @dal_ddc_i2c_payloads_create(%struct.TYPE_7__* %97, i32 %98)
  store %struct.i2c_payloads* %99, %struct.i2c_payloads** %21, align 8
  %100 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %22, i32 0, i32 0
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %22, i32 0, i32 1
  %102 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %103 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %101, align 4
  %110 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %22, i32 0, i32 2
  %111 = load i32, i32* @DDC_I2C_COMMAND_ENGINE, align 4
  store i32 %111, i32* %110, align 4
  %112 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %22, i32 0, i32 3
  %113 = load %struct.i2c_payloads*, %struct.i2c_payloads** %21, align 8
  %114 = call i32 @dal_ddc_i2c_payloads_get(%struct.i2c_payloads* %113)
  store i32 %114, i32* %112, align 4
  %115 = load %struct.i2c_payloads*, %struct.i2c_payloads** %21, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @dal_ddc_i2c_payloads_add(%struct.i2c_payloads* %115, i32 %116, i32 %117, i32* %118, i32 1)
  %120 = load %struct.i2c_payloads*, %struct.i2c_payloads** %21, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @dal_ddc_i2c_payloads_add(%struct.i2c_payloads* %120, i32 %121, i32 %122, i32* %123, i32 0)
  %125 = load %struct.i2c_payloads*, %struct.i2c_payloads** %21, align 8
  %126 = call i32 @dal_ddc_i2c_payloads_get_count(%struct.i2c_payloads* %125)
  %127 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %22, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %129 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %132 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dm_helpers_submit_i2c(%struct.TYPE_7__* %130, i32 %133, %struct.i2c_command* %22)
  store i32 %134, i32* %14, align 4
  %135 = call i32 @dal_ddc_i2c_payloads_destroy(%struct.i2c_payloads** %21)
  br label %136

136:                                              ; preds = %94, %91
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %90, %54
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @dal_ddc_service_is_in_aux_transaction_mode(%struct.ddc_service*) #1

declare dso_local i32 @get_defer_delay(%struct.ddc_service*) #1

declare dso_local i32 @dc_link_aux_transfer_with_retries(%struct.ddc_service*, %struct.aux_payload*) #1

declare dso_local %struct.i2c_payloads* @dal_ddc_i2c_payloads_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dal_ddc_i2c_payloads_get(%struct.i2c_payloads*) #1

declare dso_local i32 @dal_ddc_i2c_payloads_add(%struct.i2c_payloads*, i32, i32, i32*, i32) #1

declare dso_local i32 @dal_ddc_i2c_payloads_get_count(%struct.i2c_payloads*) #1

declare dso_local i32 @dm_helpers_submit_i2c(%struct.TYPE_7__*, i32, %struct.i2c_command*) #1

declare dso_local i32 @dal_ddc_i2c_payloads_destroy(%struct.i2c_payloads**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
