; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_digx_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_digx_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i64, i32)*, i32 (i32)* }
%struct.bp_encoder_control = type { i32, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i32, i8*, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@PANEL_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_10BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_12BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_16BIT_PER_COLOR = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i64 0, align 8
@DIGxEncoderControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_encoder_control*)* @encoder_control_digx_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encoder_control_digx_v5(%struct.bios_parser* %0, %struct.bp_encoder_control* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_encoder_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_encoder_control* %1, %struct.bp_encoder_control** %4, align 8
  %7 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  %8 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 48, i1 false)
  %9 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %10 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i8* %12, i8** %13, align 8
  %14 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %15 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %20 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %25 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %26, 10
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %30 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64 (i64, i32)*, i64 (i64, i32)** %32, align 8
  %34 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %35 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %38 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 %33(i64 %36, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %44 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %49 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %63 [
    i32 128, label %51
    i32 131, label %54
    i32 130, label %57
    i32 129, label %60
  ]

51:                                               ; preds = %2
  %52 = load i32, i32* @PANEL_8BIT_PER_COLOR, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  br label %64

54:                                               ; preds = %2
  %55 = load i32, i32* @PANEL_10BIT_PER_COLOR, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  br label %64

57:                                               ; preds = %2
  %58 = load i32, i32* @PANEL_12BIT_PER_COLOR, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  br label %64

60:                                               ; preds = %2
  %61 = load i32, i32* @PANEL_16BIT_PER_COLOR, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %64

63:                                               ; preds = %2
  br label %64

64:                                               ; preds = %63, %60, %57, %54, %51
  %65 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %66 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SIGNAL_TYPE_HDMI_TYPE_A, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %72 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %92 [
    i32 131, label %74
    i32 130, label %80
    i32 129, label %86
  ]

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 30
  %78 = sdiv i32 %77, 24
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  br label %93

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 36
  %84 = sdiv i32 %83, 24
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  br label %93

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 48
  %90 = sdiv i32 %89, 24
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  br label %93

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92, %86, %80, %74
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i32, i32* @DIGxEncoderControl, align 4
  %96 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %95, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %6)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
