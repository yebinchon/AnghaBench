; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v1_6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_transmitter_control_v1_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.command_table_helper* }
%struct.command_table_helper = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.bp_transmitter_control = type { i64, i32, i32, i32, %struct.TYPE_5__, i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS = common dso_local global i64 0, align 8
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_transmitter_control*)* @transmitter_control_v1_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmitter_control_v1_6(%struct.bios_parser* %0, %struct.bp_transmitter_control* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_transmitter_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.command_table_helper*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_transmitter_control* %1, %struct.bp_transmitter_control** %4, align 8
  %8 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %10 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %9, i32 0, i32 0
  %11 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  store %struct.command_table_helper* %11, %struct.command_table_helper** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 64)
  %13 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %14 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %13, i32 0, i32 3
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %17 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  store i32 %19, i32* %20, align 8
  %21 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %22 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  store i8* %24, i8** %25, align 8
  %26 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %27 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %33 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  store i8* %35, i8** %36, align 8
  br label %46

37:                                               ; preds = %2
  %38 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %39 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %38, i32 0, i32 2
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %42 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %37, %31
  %47 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %48 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i8* %50, i8** %51, align 8
  %52 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %53 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %52, i32 0, i32 1
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %56 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.command_table_helper*, %struct.command_table_helper** %6, align 8
  %61 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %60, i32 0, i32 0
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %64 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %62(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %69 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %75 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 10
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %80 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %115 [
    i32 128, label %82
  ]

82:                                               ; preds = %46
  %83 = load %struct.bp_transmitter_control*, %struct.bp_transmitter_control** %4, align 8
  %84 = getelementptr inbounds %struct.bp_transmitter_control, %struct.bp_transmitter_control* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %113 [
    i32 131, label %86
    i32 130, label %95
    i32 129, label %104
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = mul nsw i32 %89, 30
  %91 = sdiv i32 %90, 24
  %92 = call i8* @cpu_to_le16(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  br label %114

95:                                               ; preds = %82
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = mul nsw i32 %98, 36
  %100 = sdiv i32 %99, 24
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  br label %114

104:                                              ; preds = %82
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = mul nsw i32 %107, 48
  %109 = sdiv i32 %108, 24
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  br label %114

113:                                              ; preds = %82
  br label %114

114:                                              ; preds = %113, %104, %95, %86
  br label %116

115:                                              ; preds = %46
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %118 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %117, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %7)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
