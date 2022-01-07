; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v1_5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.command_table_helper* }
%struct.command_table_helper = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.bp_transmitter_control = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i8*, i32, %struct.TYPE_7__, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_transmitter_control*)* @transmitter_control_v1_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmitter_control_v1_5(%struct.bios_parser* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_transmitter_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.command_table_helper*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %4, align 8
  %8 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %10 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %9, i32 0, i32 0
  %11 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  store %struct.command_table_helper* %11, %struct.command_table_helper** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 72)
  %13 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %14 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %13, i32 0, i32 4
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %17 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 8
  store i32 %19, i32* %20, align 8
  %21 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %22 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  store i8* %24, i8** %25, align 8
  %26 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %27 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  store i8* %29, i8** %30, align 8
  %31 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %32 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %38 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %37, i32 0, i32 3
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %41 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %46 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %45, i32 0, i32 2
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %49 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %55 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %60 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %59, i32 0, i32 1
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %63 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %61(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %69 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %72 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %70(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %77 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %82 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 10
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %88 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %2
  %93 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %94 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %120 [
    i32 130, label %96
    i32 129, label %104
    i32 128, label %112
  ]

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @le16_to_cpu(i8* %98)
  %100 = mul nsw i32 %99, 30
  %101 = sdiv i32 %100, 24
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  br label %121

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @le16_to_cpu(i8* %106)
  %108 = mul nsw i32 %107, 36
  %109 = sdiv i32 %108, 24
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  br label %121

112:                                              ; preds = %92
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @le16_to_cpu(i8* %114)
  %116 = mul nsw i32 %115, 48
  %117 = sdiv i32 %116, 24
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %118, i8** %119, align 8
  br label %121

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %120, %112, %104, %96
  br label %122

122:                                              ; preds = %121, %2
  %123 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %124 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %123, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
