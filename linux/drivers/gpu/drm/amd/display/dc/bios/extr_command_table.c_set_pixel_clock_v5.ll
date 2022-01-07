; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (i32, i32)*, i32 (i32)*, i64 (i32, i8**)*, i64 (i32, i64*)* }
%struct.bp_pixel_clock_parameters = type { i32, %struct.TYPE_8__, i32, i32, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_FORCE_PROG_PPLL = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_pixel_clock_parameters*)* @set_pixel_clock_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pixel_clock_v5(%struct.bios_parser* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_pixel_clock_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_pixel_clock_parameters* %1, %struct.bp_pixel_clock_parameters** %4, align 8
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @memset(%struct.TYPE_10__* %6, i32 0, i32 80)
  %11 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i64 (i32, i64*)*, i64 (i32, i64*)** %14, align 8
  %16 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %17 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i64 %15(i32 %18, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %126

21:                                               ; preds = %2
  %22 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %23 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i64 (i32, i8**)*, i64 (i32, i8**)** %25, align 8
  %27 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i64 %26(i32 %29, i8** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %126

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %41 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %47 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %54 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %60 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %66 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %71 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dal_graphics_object_id_get_encoder_id(i32 %72)
  %74 = call i32 %69(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %78 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64 (i32, i32)*, i64 (i32, i32)** %80, align 8
  %82 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 %81(i32 %84, i32 0)
  %86 = inttoptr i64 %85 to i8*
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %90 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 100
  %93 = call i8* @cpu_to_le16(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %97 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %32
  %102 = load i32, i32* @PIXEL_CLOCK_MISC_FORCE_PROG_PPLL, align 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %32
  %108 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %109 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @PIXEL_CLOCK_MISC_REF_DIV_SRC, align 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %107
  %120 = load i32, i32* @SetPixelClock, align 4
  %121 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %120, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %6)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %119
  br label %126

126:                                              ; preds = %125, %21, %2
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dal_graphics_object_id_get_encoder_id(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
