; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_crtc_timing_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_crtc_timing_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (i32, i8**)* }
%struct.bp_hw_crtc_timing_parameters = type { %struct.TYPE_7__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DOUBLE_CLOCK_MODE = common dso_local global i32 0, align 4
@SetCRTC_Timing = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_hw_crtc_timing_parameters*)* @set_crtc_timing_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_crtc_timing_v1(%struct.bios_parser* %0, %struct.bp_hw_crtc_timing_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_hw_crtc_timing_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i8*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_hw_crtc_timing_parameters* %1, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %8 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 120, i1 false)
  %10 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %11 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64 (i32, i8**)*, i64 (i32, i8**)** %13, align 8
  %15 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %16 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 8
  %18 = call i64 %14(i32 %17, i8** %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 13
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %25 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %24, i32 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 12
  store i8* %28, i8** %29, align 8
  %30 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 11
  store i8* %34, i8** %35, align 8
  %36 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %37 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 10
  store i8* %40, i8** %41, align 8
  %42 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 9
  store i8* %46, i8** %47, align 8
  %48 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %49 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 8
  store i8* %52, i8** %53, align 8
  %54 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 7
  store i8* %58, i8** %59, align 8
  %60 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %67 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 6
  store i8* %70, i8** %71, align 8
  %72 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %73 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  store i8* %75, i8** %76, align 8
  %77 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %78 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store i8* %80, i8** %81, align 8
  %82 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i8* %85, i8** %86, align 8
  %87 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %88 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %93 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 0, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %23
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @le16_to_cpu(i8* %100)
  %102 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %97, %23
  %108 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %109 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 0, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @le16_to_cpu(i8* %116)
  %118 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %119 = or i32 %117, %118
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %113, %107
  %124 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %125 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @le16_to_cpu(i8* %132)
  %134 = load i32, i32* @ATOM_INTERLACE, align 4
  %135 = or i32 %133, %134
  %136 = call i8* @cpu_to_le16(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %140 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  %143 = trunc i64 %142 to i32
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %129, %123
  %147 = load %struct.bp_hw_crtc_timing_parameters*, %struct.bp_hw_crtc_timing_parameters** %4, align 8
  %148 = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, %struct.bp_hw_crtc_timing_parameters* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @le16_to_cpu(i8* %155)
  %157 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %158 = or i32 %156, %157
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %152, %146
  %163 = load i32, i32* @SetCRTC_Timing, align 4
  %164 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %163, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %162
  %169 = load i32, i32* %5, align 4
  ret i32 %169
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
