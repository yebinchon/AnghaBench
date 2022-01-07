; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_set_hw_lane_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_set_hw_lane_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.link_encoder* }
%struct.link_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.link_encoder*, %struct.link_training_settings*)* }
%struct.link_training_settings = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_set_hw_lane_settings(%struct.dc_link* %0, %struct.link_training_settings* %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %struct.link_training_settings*, align 8
  %5 = alloca %struct.link_encoder*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store %struct.link_training_settings* %1, %struct.link_training_settings** %4, align 8
  %6 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load %struct.link_encoder*, %struct.link_encoder** %7, align 8
  store %struct.link_encoder* %8, %struct.link_encoder** %5, align 8
  %9 = load %struct.link_encoder*, %struct.link_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.link_encoder*, %struct.link_training_settings*)*, i32 (%struct.link_encoder*, %struct.link_training_settings*)** %12, align 8
  %14 = load %struct.link_encoder*, %struct.link_encoder** %5, align 8
  %15 = load %struct.link_training_settings*, %struct.link_training_settings** %4, align 8
  %16 = call i32 %13(%struct.link_encoder* %14, %struct.link_training_settings* %15)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
