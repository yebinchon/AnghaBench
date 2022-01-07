; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_set_crtc_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_set_crtc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SetCRTC_UsingDTDTiming = common dso_local global i32 0, align 4
@set_crtc_using_dtd_timing_v3 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Don't have set_crtc_timing for dtd v%d\0A\00", align 1
@SetCRTC_Timing = common dso_local global i32 0, align 4
@set_crtc_timing_v1 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Don't have set_crtc_timing for v%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_parser*)* @init_set_crtc_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_set_crtc_timing(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  %3 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %4 = load i32, i32* @SetCRTC_UsingDTDTiming, align 4
  %5 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %15 [
    i32 3, label %10
  ]

10:                                               ; preds = %8
  %11 = load i32*, i32** @set_crtc_using_dtd_timing_v3, align 8
  %12 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %13 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  br label %21

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dm_output_to_console(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %19 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %15, %10
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @SetCRTC_Timing, align 4
  %24 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %23)
  switch i32 %24, label %30 [
    i32 1, label %25
  ]

25:                                               ; preds = %22
  %26 = load i32*, i32** @set_crtc_timing_v1, align 8
  %27 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %28 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* %26, i32** %29, align 8
  br label %37

30:                                               ; preds = %22
  %31 = load i32, i32* @SetCRTC_Timing, align 4
  %32 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %31)
  %33 = call i32 @dm_output_to_console(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %35 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %21
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
