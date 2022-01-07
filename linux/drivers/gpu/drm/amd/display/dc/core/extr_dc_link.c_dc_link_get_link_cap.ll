; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_get_link_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_get_link_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link_settings = type { i64, i64 }
%struct.dc_link = type { %struct.dc_link_settings, %struct.dc_link_settings }

@LANE_COUNT_UNKNOWN = common dso_local global i64 0, align 8
@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_link_settings* @dc_link_get_link_cap(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link_settings*, align 8
  %3 = alloca %struct.dc_link*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  %4 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %5 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %19 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %18, i32 0, i32 1
  store %struct.dc_link_settings* %19, %struct.dc_link_settings** %2, align 8
  br label %23

20:                                               ; preds = %10, %1
  %21 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %22 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %21, i32 0, i32 0
  store %struct.dc_link_settings* %22, %struct.dc_link_settings** %2, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.dc_link_settings*, %struct.dc_link_settings** %2, align 8
  ret %struct.dc_link_settings* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
