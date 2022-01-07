; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_digx_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_digx_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (i32, i32)*, i32 (i32)* }
%struct.bp_encoder_control = type { i64, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i64 0, align 8
@DIGxEncoderControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_encoder_control*)* @encoder_control_digx_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encoder_control_digx_v4(%struct.bios_parser* %0, %struct.bp_encoder_control* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_encoder_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_encoder_control* %1, %struct.bp_encoder_control** %4, align 8
  %7 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  %8 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 48, i1 false)
  %9 = load i64, i64* @LANE_COUNT_FOUR, align 8
  %10 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %11 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %22 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %28 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %33 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %31(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %38 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 10
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %44 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64 (i32, i32)*, i64 (i32, i32)** %46, align 8
  %48 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %49 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %52 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 %47(i32 %50, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %58 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @DIGxEncoderControl, align 4
  %63 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %62, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %6)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %20
  %66 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
