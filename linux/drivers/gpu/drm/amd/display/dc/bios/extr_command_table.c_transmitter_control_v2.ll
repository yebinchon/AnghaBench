; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (i32)* }
%struct.bp_transmitter_control = type { i32, i32, i32, i64, i32, i32, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__, i8*, %struct.TYPE_8__, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@CONNECTOR_ID_DUAL_LINK_DVII = common dso_local global i32 0, align 4
@CONNECTOR_ID_DUAL_LINK_DVID = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@ENGINE_ID_DIGB = common dso_local global i64 0, align 8
@CONNECTOR_ID_DISPLAY_PORT = common dso_local global i32 0, align 4
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_transmitter_control*)* @transmitter_control_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmitter_control_v2(%struct.bios_parser* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_transmitter_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %5, align 8
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %11 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dal_graphics_object_id_get_connector_id(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @memset(%struct.TYPE_11__* %7, i32 0, i32 72)
  %16 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %17 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %20 [
    i32 133, label %19
    i32 132, label %19
    i32 131, label %19
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
    i32 134, label %19
  ]

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %21, i32* %3, align 4
  br label %150

22:                                               ; preds = %19
  %23 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %24 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %58 [
    i32 136, label %26
    i32 135, label %45
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVII, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVID, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %39 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i8* @cpu_to_le16(i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  br label %85

45:                                               ; preds = %22
  %46 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %47 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %53 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %85

58:                                               ; preds = %22
  %59 = load i32, i32* @LANE_COUNT_FOUR, align 4
  %60 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %61 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %68 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 20
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i8* @cpu_to_le16(i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  br label %84

75:                                               ; preds = %58
  %76 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %77 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 10
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i8* @cpu_to_le16(i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %75, %64
  br label %85

85:                                               ; preds = %84, %45, %37
  %86 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %87 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %92 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 132, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %85
  %96 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %97 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 130, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %102 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 128, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %95, %85
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i64, i64* @ENGINE_ID_DIGB, align 8
  %110 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %111 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  %118 = load i32, i32* @CONNECTOR_ID_DISPLAY_PORT, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %117
  %125 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %126 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64 (i32)*, i64 (i32)** %128, align 8
  %130 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %131 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 %129(i32 %132)
  %134 = inttoptr i64 %133 to i8*
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %138 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %144 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %143, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %7)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %124
  %147 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %124
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %20
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @dal_graphics_object_id_get_connector_id(i64) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
