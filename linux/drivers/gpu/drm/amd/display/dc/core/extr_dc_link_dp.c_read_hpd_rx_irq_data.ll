; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_read_hpd_rx_irq_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_read_hpd_rx_irq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%union.hpd_irq_data = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8* }

@read_hpd_rx_irq_data.retval = internal global i32 0, align 4
@DPCD_REV_14 = common dso_local global i64 0, align 8
@DP_SINK_COUNT = common dso_local global i32 0, align 4
@DP_SINK_STATUS_ESI = common dso_local global i32 0, align 4
@DP_SINK_COUNT_ESI = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0 = common dso_local global i32 0, align 4
@DP_LANE0_1_STATUS_ESI = common dso_local global i32 0, align 4
@DP_LANE2_3_STATUS_ESI = common dso_local global i32 0, align 4
@DP_LANE_ALIGN_STATUS_UPDATED_ESI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*, %union.hpd_irq_data*)* @read_hpd_rx_irq_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_hpd_rx_irq_data(%struct.dc_link* %0, %union.hpd_irq_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %union.hpd_irq_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store %union.hpd_irq_data* %1, %union.hpd_irq_data** %5, align 8
  %9 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DPCD_REV_14, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %18 = load i32, i32* @DP_SINK_COUNT, align 4
  %19 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %20 = bitcast %union.hpd_irq_data* %19 to i8***
  %21 = load i8**, i8*** %20, align 8
  %22 = call i32 @core_link_read_dpcd(%struct.dc_link* %17, i32 %18, i8** %21, i32 48)
  store i32 %22, i32* @read_hpd_rx_irq_data.retval, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load i32, i32* @DP_SINK_STATUS_ESI, align 4
  %25 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %31 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %32 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %33 = mul nuw i64 8, %28
  %34 = trunc i64 %33 to i32
  %35 = call i32 @core_link_read_dpcd(%struct.dc_link* %31, i32 %32, i8** %30, i32 %34)
  store i32 %35, i32* @read_hpd_rx_irq_data.retval, align 4
  %36 = load i32, i32* @read_hpd_rx_irq_data.retval, align 4
  %37 = load i32, i32* @DC_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @read_hpd_rx_irq_data.retval, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %102

41:                                               ; preds = %23
  %42 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %43 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %30, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %49 = bitcast %union.hpd_irq_data* %48 to %struct.TYPE_18__*
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* @DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0, align 4
  %53 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %30, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %59 = bitcast %union.hpd_irq_data* %58 to %struct.TYPE_18__*
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* @DP_LANE0_1_STATUS_ESI, align 4
  %63 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %30, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %69 = bitcast %union.hpd_irq_data* %68 to %struct.TYPE_18__*
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* @DP_LANE2_3_STATUS_ESI, align 4
  %73 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %30, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %79 = bitcast %union.hpd_irq_data* %78 to %struct.TYPE_18__*
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  %82 = load i32, i32* @DP_LANE_ALIGN_STATUS_UPDATED_ESI, align 4
  %83 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %30, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %89 = bitcast %union.hpd_irq_data* %88 to %struct.TYPE_18__*
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i8* %87, i8** %91, align 8
  %92 = load i32, i32* @DP_SINK_STATUS_ESI, align 4
  %93 = load i32, i32* @DP_SINK_COUNT_ESI, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %30, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %union.hpd_irq_data*, %union.hpd_irq_data** %5, align 8
  %99 = bitcast %union.hpd_irq_data* %98 to %struct.TYPE_18__*
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %41, %39
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %8, align 4
  switch i32 %104, label %110 [
    i32 0, label %105
    i32 1, label %108
  ]

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %16
  %107 = load i32, i32* @read_hpd_rx_irq_data.retval, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i32, i32* %3, align 4
  ret i32 %109

110:                                              ; preds = %102
  unreachable
}

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i8**, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
