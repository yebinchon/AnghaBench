; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_bandwidth_kbps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_bandwidth_kbps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dc_link_settings = type { i32, i32 }

@LINK_RATE_REF_FREQ_IN_KHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_bandwidth_kbps(%struct.dc_link* %0, %struct.dc_link_settings* %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %struct.dc_link_settings*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %4, align 8
  %6 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %7 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LINK_RATE_REF_FREQ_IN_KHZ, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %14 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
