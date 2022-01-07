; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32, i32)*, i32 (i32)*, i64 (i32, i8**)*, i64 (i32, i64*)* }
%struct.bp_pixel_clock_parameters = type { i32, i32, %struct.TYPE_10__, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i8*, i32, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_FORCE_PROG_PPLL = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_pixel_clock_parameters*)* @set_pixel_clock_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pixel_clock_v6(%struct.bios_parser* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_pixel_clock_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_pixel_clock_parameters* %1, %struct.bp_pixel_clock_parameters** %4, align 8
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @memset(%struct.TYPE_12__* %6, i32 0, i32 80)
  %11 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i64 (i32, i64*)*, i64 (i32, i64*)** %14, align 8
  %16 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %17 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i64 %15(i32 %18, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %2
  %22 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %23 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i64 (i32, i8**)*, i64 (i32, i8**)** %25, align 8
  %27 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i64 %26(i32 %29, i8** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %128

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %42 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %48 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %67 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %72 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dal_graphics_object_id_get_encoder_id(i32 %73)
  %75 = call i32 %70(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %79 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64 (i32, i32)*, i64 (i32, i32)** %81, align 8
  %83 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %84 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 %82(i32 %85, i32 0)
  %87 = inttoptr i64 %86 to i8*
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %91 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 100
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %99 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %32
  %104 = load i32, i32* @PIXEL_CLOCK_V6_MISC_FORCE_PROG_PPLL, align 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %32
  %110 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %111 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* @PIXEL_CLOCK_V6_MISC_REF_DIV_SRC, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %109
  %122 = load i32, i32* @SetPixelClock, align 4
  %123 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %122, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %6)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %121
  br label %128

128:                                              ; preds = %127, %21, %2
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dal_graphics_object_id_get_encoder_id(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
