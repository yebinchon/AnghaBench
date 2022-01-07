; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, i32)*, i32 (i32)* }
%struct.bp_pixel_clock_parameters = type { i64, i32, i64, %struct.TYPE_10__, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL1 = common dso_local global i64 0, align 8
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL2 = common dso_local global i64 0, align 8
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_FORCE_PROG_PPLL = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_USE_ENGINE_FOR_DISPCLK = common dso_local global i32 0, align 4
@CONTROLLER_ID_D1 = common dso_local global i64 0, align 8
@PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2 = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_pixel_clock_parameters*)* @set_pixel_clock_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pixel_clock_v3(%struct.bios_parser* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_pixel_clock_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_pixel_clock_parameters* %1, %struct.bp_pixel_clock_parameters** %5, align 8
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 48)
  %11 = load i64, i64* @CLOCK_SOURCE_ID_PLL1, align 8
  %12 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %13 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ATOM_PPLL1, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  br label %33

20:                                               ; preds = %2
  %21 = load i64, i64* @CLOCK_SOURCE_ID_PLL2, align 8
  %22 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @ATOM_PPLL2, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %31, i32* %3, align 4
  br label %136

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %42 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %49 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %55 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %62, 100
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %68 = bitcast %struct.TYPE_8__* %67 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %7, align 8
  %69 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %70 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %75 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dal_graphics_object_id_get_encoder_id(i32 %76)
  %78 = call i32 %73(i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %82 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64 (i32, i32)*, i64 (i32, i32)** %84, align 8
  %86 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %87 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 %85(i32 %88, i32 0)
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %94 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %33
  %99 = load i32, i32* @PIXEL_CLOCK_MISC_FORCE_PROG_PPLL, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %33
  %105 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %106 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* @PIXEL_CLOCK_MISC_USE_ENGINE_FOR_DISPCLK, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i64, i64* @CONTROLLER_ID_D1, align 8
  %118 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %119 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, i32* @PIXEL_CLOCK_MISC_CRTC_SEL_CRTC2, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %116
  %129 = load i32, i32* @SetPixelClock, align 4
  %130 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %129, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %8)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %30
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dal_graphics_object_id_get_encoder_id(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
