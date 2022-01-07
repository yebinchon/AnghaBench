; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.command_table_helper* }
%struct.command_table_helper = type { i64 (i32)*, i32 (i32, i64*)* }
%struct.bp_transmitter_control = type { i32, i32, i32, i64, i64, i32, i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@CONNECTOR_ID_DUAL_LINK_DVII = common dso_local global i32 0, align 4
@CONNECTOR_ID_DUAL_LINK_DVID = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i64 0, align 8
@ENGINE_ID_DIGB = common dso_local global i64 0, align 8
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_transmitter_control*)* @transmitter_control_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmitter_control_v4(%struct.bios_parser* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_transmitter_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.command_table_helper*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %5, align 8
  %11 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %13 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dal_graphics_object_id_get_connector_id(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %18 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %17, i32 0, i32 0
  %19 = load %struct.command_table_helper*, %struct.command_table_helper** %18, align 8
  store %struct.command_table_helper* %19, %struct.command_table_helper** %10, align 8
  %20 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 88)
  %21 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %22 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %25 [
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
    i32 130, label %24
    i32 129, label %24
    i32 128, label %24
    i32 134, label %24
  ]

24:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %26, i32* %3, align 4
  br label %175

27:                                               ; preds = %24
  %28 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  %29 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %28, i32 0, i32 1
  %30 = load i32 (i32, i64*)*, i32 (i32, i64*)** %29, align 8
  %31 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %32 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %30(i32 %33, i64* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %37, i32* %3, align 4
  br label %175

38:                                               ; preds = %27
  %39 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %40 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %74 [
    i32 136, label %42
    i32 135, label %61
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVII, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVID, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %55 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i8* @cpu_to_le16(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  br label %110

61:                                               ; preds = %38
  %62 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %63 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %69 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %110

74:                                               ; preds = %38
  %75 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVII, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @CONNECTOR_ID_DUAL_LINK_DVID, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i64, i64* @LANE_COUNT_FOUR, align 8
  %87 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %88 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %93 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 20
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i8* @cpu_to_le16(i8* %97)
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  br label %109

100:                                              ; preds = %85
  %101 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %102 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %103, 10
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i8* @cpu_to_le16(i8* %106)
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %100, %91
  br label %110

110:                                              ; preds = %109, %61, %53
  %111 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %112 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  %116 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %117 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 132, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %110
  %121 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %122 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 130, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %127 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 128, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120, %110
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i64, i64* @ENGINE_ID_DIGB, align 8
  %135 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %136 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  %144 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %143, i32 0, i32 0
  %145 = load i64 (i32)*, i64 (i32)** %144, align 8
  %146 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %147 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i64 %145(i32 %148)
  %150 = inttoptr i64 %149 to i8*
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %154 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i8* %156, i8** %157, align 8
  %158 = load i64, i64* %8, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %5, align 8
  %163 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* %166, i8** %167, align 8
  %168 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %169 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %168, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %142
  %172 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %171, %142
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %36, %25
  %176 = load i32, i32* %3, align 4
  ret i32 %176
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
