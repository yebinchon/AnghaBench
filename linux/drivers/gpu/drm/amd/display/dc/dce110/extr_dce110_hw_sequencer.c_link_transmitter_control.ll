; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_link_transmitter_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_link_transmitter_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)* }
%struct.bp_transmitter_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)* @link_transmitter_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_transmitter_control(%struct.dc_bios* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca %struct.dc_bios*, align 8
  %4 = alloca %struct.bp_transmitter_control*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %3, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %4, align 8
  %6 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %7 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)*, i32 (%struct.dc_bios*, %struct.bp_transmitter_control*)** %9, align 8
  %11 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %12 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %13 = call i32 %10(%struct.dc_bios* %11, %struct.bp_transmitter_control* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
