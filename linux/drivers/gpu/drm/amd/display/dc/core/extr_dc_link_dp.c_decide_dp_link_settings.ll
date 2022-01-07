; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_dp_link_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_dp_link_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dc_link_settings = type { i32, i64, i64, i32, i32, i32, i32 }

@LANE_COUNT_ONE = common dso_local global i32 0, align 4
@LINK_RATE_LOW = common dso_local global i32 0, align 4
@LINK_SPREAD_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*, %struct.dc_link_settings*, i64)* @decide_dp_link_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_dp_link_settings(%struct.dc_link* %0, %struct.dc_link_settings* %1, i64 %2) #0 {
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
  %11 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 0
  %12 = load i32, i32* @LANE_COUNT_ONE, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 1
  %14 = load i32, i32* @LINK_RATE_LOW, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 2
  %17 = load i32, i32* @LINK_SPREAD_DISABLED, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 3
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 5
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 6
  store i32 0, i32* %22, align 4
  %23 = bitcast %struct.dc_link_settings* %9 to i8*
  %24 = bitcast %struct.dc_link_settings* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 40, i1 false)
  br label %25

25:                                               ; preds = %64, %3
  %26 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %29 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %27, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %25
  %34 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %35 = call i64 @dc_link_bandwidth_kbps(%struct.dc_link* %34, %struct.dc_link_settings* %9)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %41 = bitcast %struct.dc_link_settings* %40 to i8*
  %42 = bitcast %struct.dc_link_settings* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 40, i1 false)
  store i32 1, i32* %4, align 4
  br label %66

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %47 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @increase_lane_count(i64 %53)
  %55 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 2
  store i64 %54, i64* %55, align 8
  br label %64

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @increase_link_rate(i64 %58)
  %60 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %8, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %9, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  br label %25

65:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dc_link_bandwidth_kbps(%struct.dc_link*, %struct.dc_link_settings*) #2

declare dso_local i64 @increase_lane_count(i64) #2

declare dso_local i64 @increase_link_rate(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
