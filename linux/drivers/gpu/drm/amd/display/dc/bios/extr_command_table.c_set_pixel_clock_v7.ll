; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_pixel_clock_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (i32)*, i64 (i64, i32)*, i32 (i32)*, i64 (i32, i8**)*, i64 (i32, i64*)* }
%struct.bp_pixel_clock_parameters = type { i64, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i32, i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_FORCE_PROG_PPLL = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_PROG_PHYPLL = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_YUV420_MODE = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_XTALIN = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_GENLK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i64 0, align 8
@PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_pixel_clock_parameters*)* @set_pixel_clock_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pixel_clock_v7(%struct.bios_parser* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_pixel_clock_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_pixel_clock_parameters* %1, %struct.bp_pixel_clock_parameters** %4, align 8
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 56)
  %11 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i64 (i32, i64*)*, i64 (i32, i64*)** %14, align 8
  %16 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %17 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i64 %15(i32 %18, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %159

21:                                               ; preds = %2
  %22 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %23 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64 (i32, i8**)*, i64 (i32, i8**)** %25, align 8
  %27 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i64 %26(i32 %29, i8** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %159

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  store i8* %33, i8** %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %39 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %44 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dal_graphics_object_id_get_encoder_id(i32 %45)
  %47 = call i32 %42(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %50 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64 (i64, i32)*, i64 (i64, i32)** %52, align 8
  %54 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 %53(i64 %56, i32 0)
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %66 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64 (i32)*, i64 (i32)** %68, align 8
  %70 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %71 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 %69(i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %77 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %32
  %82 = load i32, i32* @PIXEL_CLOCK_V7_MISC_FORCE_PROG_PPLL, align 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %32
  %87 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %88 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32, i32* @PIXEL_CLOCK_V7_MISC_REF_DIV_SRC, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %86
  %98 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %99 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @PIXEL_CLOCK_V7_MISC_PROG_PHYPLL, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %103, %97
  %109 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %110 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32, i32* @PIXEL_CLOCK_V7_MISC_YUV420_MODE, align 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %108
  %120 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %121 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_XTALIN, align 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %125, %119
  %131 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %132 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* @PIXEL_CLOCK_V7_MISC_REF_DIV_SRC_GENLK, align 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %136, %130
  %142 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %4, align 8
  %143 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SIGNAL_TYPE_DVI_DUAL_LINK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* @PIXEL_CLOCK_V7_MISC_DVI_DUALLINK_EN, align 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %147, %141
  %153 = load i32, i32* @SetPixelClock, align 4
  %154 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %153, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %6)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %152
  br label %159

159:                                              ; preds = %158, %21, %2
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dal_graphics_object_id_get_encoder_id(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
