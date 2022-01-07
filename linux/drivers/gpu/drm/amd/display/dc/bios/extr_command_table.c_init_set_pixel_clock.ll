; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_set_pixel_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_set_pixel_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SetPixelClock = common dso_local global i32 0, align 4
@set_pixel_clock_v3 = common dso_local global i32* null, align 8
@set_pixel_clock_v5 = common dso_local global i32* null, align 8
@set_pixel_clock_v6 = common dso_local global i32* null, align 8
@set_pixel_clock_v7 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Don't have set_pixel_clock for v%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_parser*)* @init_set_pixel_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_set_pixel_clock(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %3 = load i32, i32* @SetPixelClock, align 4
  %4 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %3)
  switch i32 %4, label %25 [
    i32 3, label %5
    i32 5, label %10
    i32 6, label %15
    i32 7, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32*, i32** @set_pixel_clock_v3, align 8
  %7 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %8 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* %6, i32** %9, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load i32*, i32** @set_pixel_clock_v5, align 8
  %12 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %13 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load i32*, i32** @set_pixel_clock_v6, align 8
  %17 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %18 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  br label %32

20:                                               ; preds = %1
  %21 = load i32*, i32** @set_pixel_clock_v7, align 8
  %22 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %23 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* %21, i32** %24, align 8
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* @SetPixelClock, align 4
  %27 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %26)
  %28 = call i32 @dm_output_to_console(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %30 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20, %15, %10, %5
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
