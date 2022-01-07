; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_edp_link_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_edp_link_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_4__, %struct.dc_link_settings }
%struct.TYPE_4__ = type { i64, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dc_link_settings = type { i64, i64, i32, i64, i32 }

@DPCD_REV_14 = common dso_local global i64 0, align 8
@LANE_COUNT_ONE = common dso_local global i64 0, align 8
@LINK_SPREAD_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*, %struct.dc_link_settings*, i64)* @decide_edp_link_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_edp_link_settings(%struct.dc_link* %0, %struct.dc_link_settings* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca %struct.dc_link_settings*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dc_link_settings, align 8
  %9 = alloca %struct.dc_link_settings, align 8
  %10 = alloca i64, align 8
  store %struct.dc_link* %0, %struct.dc_link** %5, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DPCD_REV_14, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %20 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %3
  %25 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %26 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %27 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %26, i32 0, i32 1
  %28 = bitcast %struct.dc_link_settings* %25 to i8*
  %29 = bitcast %struct.dc_link_settings* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 40, i1 false)
  store i32 1, i32* %4, align 4
  br label %106

30:                                               ; preds = %18
  %31 = call i32 @memset(%struct.dc_link_settings* %8, i32 0, i32 40)
  %32 = load i64, i64* @LANE_COUNT_ONE, align 8
  %33 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %35 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @LINK_SPREAD_DISABLED, align 4
  %42 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = bitcast %struct.dc_link_settings* %9 to i8*
  %46 = bitcast %struct.dc_link_settings* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 40, i1 false)
  br label %47

47:                                               ; preds = %104, %30
  %48 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %51 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %49, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %47
  %56 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %57 = call i64 @dc_link_bandwidth_kbps(%struct.dc_link* %56, %struct.dc_link_settings* %9)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %63 = bitcast %struct.dc_link_settings* %62 to i8*
  %64 = bitcast %struct.dc_link_settings* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 40, i1 false)
  store i32 1, i32* %4, align 4
  br label %106

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @increase_lane_count(i64 %75)
  %77 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  br label %104

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %82 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %80, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %91 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  br label %103

102:                                              ; preds = %78
  br label %105

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %73
  br label %47

105:                                              ; preds = %102, %47
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %61, %24
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.dc_link_settings*, i32, i32) #2

declare dso_local i64 @dc_link_bandwidth_kbps(%struct.dc_link*, %struct.dc_link_settings*) #2

declare dso_local i64 @increase_lane_count(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
