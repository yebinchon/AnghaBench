; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_handle_hpd_irq_psr_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_handle_hpd_irq_psr_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, i32 }
%union.dpcd_psr_configuration = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%union.psr_error_status = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%union.psr_sink_psr_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PSR_SINK_STATE_ACTIVE_DISPLAY_FROM_SINK_RFB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*)* @handle_hpd_irq_psr_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hpd_irq_psr_sink(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %union.dpcd_psr_configuration, align 8
  %5 = alloca [3 x i8], align 1
  %6 = alloca %union.psr_error_status, align 8
  %7 = alloca %union.psr_sink_psr_status, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  %8 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %9 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = bitcast %union.dpcd_psr_configuration* %4 to i8*
  %19 = call i32 @dm_helpers_dp_read_dpcd(i32 %16, %struct.dc_link* %17, i32 368, i8* %18, i32 1)
  %20 = bitcast %union.dpcd_psr_configuration* %4 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %13
  %25 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %25, i8 0, i64 3, i1 false)
  %26 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %27 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %31 = call i32 @dm_helpers_dp_read_dpcd(i32 %28, %struct.dc_link* %29, i32 8198, i8* %30, i32 3)
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = bitcast %union.psr_error_status* %6 to i8*
  store i8 %33, i8* %34, align 8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = bitcast %union.psr_sink_psr_status* %7 to i8*
  store i8 %36, i8* %37, align 8
  %38 = bitcast %union.psr_error_status* %6 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %24
  %43 = bitcast %union.psr_error_status* %6 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42, %24
  %48 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %49 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %52 = bitcast %union.psr_error_status* %6 to i8*
  %53 = call i32 @dm_helpers_dp_write_dpcd(i32 %50, %struct.dc_link* %51, i32 8198, i8* %52, i32 1)
  %54 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %55 = call i32 @dc_link_set_psr_enable(%struct.dc_link* %54, i32 0, i32 1)
  %56 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %57 = call i32 @dc_link_set_psr_enable(%struct.dc_link* %56, i32 1, i32 1)
  store i32 1, i32* %2, align 4
  br label %68

58:                                               ; preds = %42
  %59 = bitcast %union.psr_sink_psr_status* %7 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PSR_SINK_STATE_ACTIVE_DISPLAY_FROM_SINK_RFB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %68

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %13
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %47, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dm_helpers_dp_read_dpcd(i32, %struct.dc_link*, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dm_helpers_dp_write_dpcd(i32, %struct.dc_link*, i32, i8*, i32) #1

declare dso_local i32 @dc_link_set_psr_enable(%struct.dc_link*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
