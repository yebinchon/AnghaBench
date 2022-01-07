; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_max_link_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_max_link_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link_settings = type { i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.dc_link = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@LINK_RATE_HIGH = common dso_local global i32 0, align 4
@LINK_SPREAD_05_DOWNSPREAD_30KHZ = common dso_local global i32 0, align 4
@LINK_RATE_HIGH2 = common dso_local global i64 0, align 8
@LINK_RATE_HIGH3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link_settings*, %struct.dc_link*)* @get_max_link_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_max_link_cap(%struct.dc_link_settings* noalias sret %0, %struct.dc_link* %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  store %struct.dc_link* %1, %struct.dc_link** %3, align 8
  %4 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 0
  %5 = load i32, i32* @LANE_COUNT_FOUR, align 4
  store i32 %5, i32* %4, align 8
  %6 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %7 = load i32, i32* @LINK_RATE_HIGH, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 2
  %10 = load i32, i32* @LINK_SPREAD_05_DOWNSPREAD_30KHZ, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %9, align 8
  %12 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 4
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 5
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 6
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 7
  store i32 0, i32* %16, align 4
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i64, i64* @LINK_RATE_HIGH2, align 8
  %28 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i64, i64* @LINK_RATE_HIGH3, align 8
  %41 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %44 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %52 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 2
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %58 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %66 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %56
  %71 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %72 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %80 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
