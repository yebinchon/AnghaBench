; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_wa_power_up_0010FA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_wa_power_up_0010FA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%union.dp_downstream_port_present = type { i8* }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DOWNSTREAMPORT_PRESENT = common dso_local global i64 0, align 8
@DISPLAY_DONGLE_DP_VGA_CONVERTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*, i8**, i32)* @dp_wa_power_up_0010FA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_wa_power_up_0010FA(%struct.dc_link* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.dp_downstream_port_present, align 8
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = bitcast %union.dp_downstream_port_present* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %11 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %50, label %16

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %47, %16
  %18 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %19 = call i32 @dp_receiver_power_ctrl(%struct.dc_link* %18, i32 1)
  %20 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %21 = load i64, i64* @DP_DPCD_REV, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @core_link_read_dpcd(%struct.dc_link* %20, i64 %21, i8** %22, i32 %23)
  %25 = load i8**, i8*** %5, align 8
  %26 = load i64, i64* @DP_DPCD_REV, align 8
  %27 = load i64, i64* @DP_DPCD_REV, align 8
  %28 = sub i64 %26, %27
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %36, 4
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %39, %35
  %48 = phi i1 [ false, %35 ], [ %46, %39 ]
  br i1 %48, label %17, label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i8**, i8*** %5, align 8
  %52 = load i64, i64* @DP_DOWNSTREAMPORT_PRESENT, align 8
  %53 = load i64, i64* @DP_DPCD_REV, align 8
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast %union.dp_downstream_port_present* %8 to i8**
  store i8* %56, i8** %57, align 8
  %58 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %59 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DISPLAY_DONGLE_DP_VGA_CONVERTER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %50
  %65 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %66 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %73 [
    i32 129, label %69
    i32 128, label %69
  ]

69:                                               ; preds = %64, %64
  %70 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %71 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %75 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %82

78:                                               ; preds = %50
  %79 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %80 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %77
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dp_receiver_power_ctrl(%struct.dc_link*, i32) #2

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i64, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
