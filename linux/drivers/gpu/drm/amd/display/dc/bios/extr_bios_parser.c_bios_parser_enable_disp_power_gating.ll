; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_enable_disp_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_enable_disp_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.bios_parser.0*, i32, i32)* }
%struct.bios_parser.0 = type opaque

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, i32)* @bios_parser_enable_disp_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_enable_disp_power_gating(%struct.dc_bios* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bios_parser*, align 8
  store %struct.dc_bios* %0, %struct.dc_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %10 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %9)
  store %struct.bios_parser* %10, %struct.bios_parser** %8, align 8
  %11 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.bios_parser.0*, i32, i32)*, i32 (%struct.bios_parser.0*, i32, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.bios_parser.0*, i32, i32)* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %20 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.bios_parser.0*, i32, i32)*, i32 (%struct.bios_parser.0*, i32, i32)** %21, align 8
  %23 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %24 = bitcast %struct.bios_parser* %23 to %struct.bios_parser.0*
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %22(%struct.bios_parser.0* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
