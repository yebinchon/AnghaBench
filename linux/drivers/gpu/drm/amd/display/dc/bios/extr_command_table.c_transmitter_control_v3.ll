; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.command_table_helper* }
%struct.command_table_helper = type { i64 (i32)*, i32 (i32, i64*)* }
%struct.bp_transmitter_control = type { i32, i32, i32, i64, i64, i32, i32, i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@CONNECTOR_ID_DUAL_LINK_DVII = common dso_local global i32 0, align 4
@CONNECTOR_ID_DUAL_LINK_DVID = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i64 0, align 8
@ENGINE_ID_DIGB = common dso_local global i64 0, align 8
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_transmitter_control*)* @transmitter_control_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmitter_control_v3(%struct.bios_parser* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_transmitter_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.command_table_helper*, align 8
  %11 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %5, align 8
  %12 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %14 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dal_graphics_object_id_get_connector_id(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %19 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %18, i32 0, i32 0
  %20 = load %struct.command_table_helper*, %struct.command_table_helper** %19, align 8
  store %struct.command_table_helper* %20, %struct.command_table_helper** %10, align 8
  %21 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVII, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVID, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i1 [ true, %2 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 88)
  %32 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %33 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %36 [
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
    i32 134, label %35
  ]

35:                                               ; preds = %28, %28, %28, %28, %28, %28, %28
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %37, i32* %3, align 4
  br label %183

38:                                               ; preds = %35
  %39 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  %40 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %39, i32 0, i32 1
  %41 = load i32 (i32, i64*)*, i32 (i32, i64*)** %40, align 8
  %42 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %43 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44, i64* %8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %48, i32* %3, align 4
  br label %183

49:                                               ; preds = %38
  %50 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %51 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %80 [
    i32 136, label %53
    i32 135, label %67
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %61 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i8* @cpu_to_le16(i8* %64)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  store i8* %65, i8** %66, align 8
  br label %118

67:                                               ; preds = %49
  %68 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %69 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %75 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %118

80:                                               ; preds = %49
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %85 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %83, %80
  %92 = load i64, i64* @LANE_COUNT_FOUR, align 8
  %93 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %94 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %101 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %102, 20
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i8* @cpu_to_le16(i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i8* %106, i8** %107, align 8
  br label %117

108:                                              ; preds = %91
  %109 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %110 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 10
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i8* @cpu_to_le16(i8* %114)
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %108, %97
  br label %118

118:                                              ; preds = %117, %67, %59
  %119 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %120 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %125 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 132, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %118
  %129 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %130 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %135 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 128, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133, %128, %118
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i64, i64* @ENGINE_ID_DIGB, align 8
  %143 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %144 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  %152 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %151, i32 0, i32 0
  %153 = load i64 (i32)*, i64 (i32)** %152, align 8
  %154 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %155 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 %153(i32 %156)
  %158 = inttoptr i64 %157 to i8*
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  %161 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %162 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i8* %164, i8** %165, align 8
  %166 = load i64, i64* %8, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %171 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* %174, i8** %175, align 8
  %176 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %177 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %176, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %150
  %180 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %179, %150
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %47, %36
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @dal_graphics_object_id_get_connector_id(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
