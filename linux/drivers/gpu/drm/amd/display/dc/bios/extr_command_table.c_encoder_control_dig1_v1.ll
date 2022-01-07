; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_dig1_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_dig1_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.bp_encoder_control*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32 }
%struct.bp_encoder_control = type { i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@DIG1EncoderControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_encoder_control*)* @encoder_control_dig1_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encoder_control_dig1_v1(%struct.bios_parser* %0, %struct.bp_encoder_control* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_encoder_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_encoder_control* %1, %struct.bp_encoder_control** %4, align 8
  %7 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  %8 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %10 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_6__*, %struct.bp_encoder_control*, %struct.TYPE_5__*)*, i32 (%struct.TYPE_6__*, %struct.bp_encoder_control*, %struct.TYPE_5__*)** %12, align 8
  %14 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %15 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %4, align 8
  %18 = call i32 %13(%struct.TYPE_6__* %16, %struct.bp_encoder_control* %17, %struct.TYPE_5__* %6)
  %19 = load i32, i32* @DIG1EncoderControl, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
