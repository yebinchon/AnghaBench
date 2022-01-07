; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_crtc_using_dtd_timing_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_crtc_using_dtd_timing_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (i32, i32*)* }
%struct.bp_hw_crtc_timing_parameters = type { %struct.TYPE_7__, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DOUBLE_CLOCK_MODE = common dso_local global i32 0, align 4
@SetCRTC_UsingDTDTiming = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_hw_crtc_timing_parameters*)* @set_crtc_using_dtd_timing_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_crtc_using_dtd_timing_v3(%struct.bios_parser* %0, %struct.bp_hw_crtc_timing_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_hw_crtc_timing_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_hw_crtc_timing_parameters* %1, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %8 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 80, i1 false)
  %10 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %11 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64 (i32, i32*)*, i64 (i32, i32*)** %13, align 8
  %15 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %16 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = call i64 %14(i32 %17, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 9
  store i32 %21, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %25 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %34 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 7
  store i8* %38, i8** %39, align 8
  %40 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %41 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 6
  store i8* %44, i8** %45, align 8
  %46 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %47 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %50 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %57 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %60 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %67 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %73 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %76 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i8* %86, i8** %87, align 8
  %88 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %89 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 0, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %23
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @le16_to_cpu(i8* %96)
  %98 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %99 = or i32 %97, %98
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %93, %23
  %104 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %105 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 0, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @le16_to_cpu(i8* %112)
  %114 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %115 = or i32 %113, %114
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %109, %103
  %120 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %121 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @le16_to_cpu(i8* %128)
  %130 = load i32, i32* @ATOM_INTERLACE, align 4
  %131 = or i32 %129, %130
  %132 = call i8* @cpu_to_le16(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @le16_to_cpu(i8* %136)
  %138 = add nsw i32 %137, 1
  %139 = call i8* @cpu_to_le16(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %125, %119
  %142 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %143 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @le16_to_cpu(i8* %150)
  %152 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %153 = or i32 %151, %152
  %154 = call i8* @cpu_to_le16(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %147, %141
  %158 = load i32, i32* @SetCRTC_UsingDTDTiming, align 4
  %159 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %158, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i8*) #2

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
