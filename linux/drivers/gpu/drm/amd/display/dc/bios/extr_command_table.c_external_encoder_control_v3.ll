; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_external_encoder_control_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_external_encoder_control_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32, i32)* }
%struct.bp_external_encoder_control = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_7__, %struct.graphics_object_id }
%struct.TYPE_7__ = type { i32 }
%struct.graphics_object_id = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@LINK_RATE_HIGH = common dso_local global i32 0, align 4
@ExternalEncoderControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_external_encoder_control*)* @external_encoder_control_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @external_encoder_control_v3(%struct.bios_parser* %0, %struct.bp_external_encoder_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_external_encoder_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.graphics_object_id, align 4
  %10 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_external_encoder_control* %1, %struct.bp_external_encoder_control** %5, align 8
  %11 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 56)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %15 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %14, i32 0, i32 7
  %16 = bitcast %struct.graphics_object_id* %9 to i8*
  %17 = bitcast %struct.graphics_object_id* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 8 %17, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dal_graphics_object_id_get_encoder_id(i32 %19)
  switch i32 %20, label %22 [
    i32 132, label %21
    i32 131, label %21
  ]

21:                                               ; preds = %2, %2
  store i32 1, i32* %10, align 4
  br label %25

22:                                               ; preds = %2
  %23 = call i32 (...) @BREAK_TO_DEBUGGER()
  %24 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %24, i32* %3, align 4
  br label %135

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %36 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %119 [
    i32 129, label %38
    i32 128, label %46
    i32 130, label %93
  ]

38:                                               ; preds = %25
  %39 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %40 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  br label %120

46:                                               ; preds = %25
  %47 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %48 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 10
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %55 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64 (i32, i32)*, i64 (i32, i32)** %57, align 8
  %59 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %60 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 %58(i32 %61, i32 0)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %46
  %69 = load i32, i32* @LINK_RATE_HIGH, align 4
  %70 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %71 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %81 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %79, %46
  %87 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %88 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %120

93:                                               ; preds = %25
  %94 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %95 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 10
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %102 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64 (i32, i32)*, i64 (i32, i32)** %104, align 8
  %106 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %107 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i64 %105(i32 %108, i32 0)
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %114 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %120

119:                                              ; preds = %25
  br label %120

120:                                              ; preds = %119, %93, %86, %38
  %121 = load %struct.bp_external_encoder_control*, %struct.bp_external_encoder_control** %5, align 8
  %122 = getelementptr inbounds %struct.bp_external_encoder_control, %struct.bp_external_encoder_control* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @ExternalEncoderControl, align 4
  %129 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %128, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %120
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dal_graphics_object_id_get_encoder_id(i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
