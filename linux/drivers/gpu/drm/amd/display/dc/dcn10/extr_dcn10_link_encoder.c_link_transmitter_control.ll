; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_link_transmitter_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_link_transmitter_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)* }
%struct.bp_transmitter_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcn10_link_encoder*, %struct.bp_transmitter_control*)* @link_transmitter_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_transmitter_control(%struct.dcn10_link_encoder* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca %struct.dcn10_link_encoder*, align 8
  %4 = alloca %struct.bp_transmitter_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_bios*, align 8
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %3, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %4, align 8
  %7 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  store %struct.dc_bios* %12, %struct.dc_bios** %6, align 8
  %13 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %14 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)*, i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)** %16, align 8
  %18 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %19 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %20 = call i32 %17(%struct.dc_bios* %18, %struct.bp_transmitter_control* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
