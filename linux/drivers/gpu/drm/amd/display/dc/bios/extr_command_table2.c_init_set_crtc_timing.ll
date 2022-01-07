; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_init_set_crtc_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_init_set_crtc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@setcrtc_usingdtdtiming = common dso_local global i32 0, align 4
@set_crtc_using_dtd_timing_v3 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Don't have set_crtc_timing for v%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_parser*)* @init_set_crtc_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_set_crtc_timing(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  %3 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %4 = load i32, i32* @setcrtc_usingdtdtiming, align 4
  %5 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %12 [
    i32 3, label %7
  ]

7:                                                ; preds = %1
  %8 = load i32*, i32** @set_crtc_using_dtd_timing_v3, align 8
  %9 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %10 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* %8, i32** %11, align 8
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @dm_output_to_console(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %16 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @BIOS_CMD_TABLE_PARA_REVISION(i32) #1

declare dso_local i32 @dm_output_to_console(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
