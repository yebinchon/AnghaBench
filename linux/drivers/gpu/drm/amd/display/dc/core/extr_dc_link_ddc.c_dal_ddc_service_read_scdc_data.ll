; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_read_scdc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_read_scdc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }
%union.hdmi_scdc_status_flags_data = type { i32* }

@HDMI_SCDC_ADDRESS = common dso_local global i32 0, align 4
@HDMI_SCDC_TMDS_CONFIG = common dso_local global i32 0, align 4
@HDMI_SCDC_SCRAMBLER_STATUS = common dso_local global i32 0, align 4
@HDMI_SCDC_STATUS_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_ddc_service_read_scdc_data(%struct.ddc_service* %0) #0 {
  %2 = alloca %struct.ddc_service*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.hdmi_scdc_status_flags_data, align 8
  %7 = alloca i32, align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %2, align 8
  %8 = load i32, i32* @HDMI_SCDC_ADDRESS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @HDMI_SCDC_TMDS_CONFIG, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %10, i32 %11, i32* %4, i32 4, i32* %5, i32 4)
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = bitcast %union.hdmi_scdc_status_flags_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @HDMI_SCDC_SCRAMBLER_STATUS, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %19, i32 %20, i32* %4, i32 4, i32* %7, i32 4)
  %22 = load i32, i32* @HDMI_SCDC_STATUS_FLAGS, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = bitcast %union.hdmi_scdc_status_flags_data* %6 to i32**
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service* %23, i32 %24, i32* %4, i32 4, i32* %26, i32 8)
  br label %28

28:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @dal_ddc_service_query_ddc_data(%struct.ddc_service*, i32, i32*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
