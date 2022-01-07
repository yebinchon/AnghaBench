; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_enable_disp_power_gating_v2_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_enable_disp_power_gating_v2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)*, i64 (i32, i32*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@EnableDispPowerGating = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, i32, i32)* @enable_disp_power_gating_v2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_disp_power_gating_v2_1(%struct.bios_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bios_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %12, i32* %8, align 4
  %13 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %15 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64 (i32, i32*)*, i64 (i32, i32*)** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 %18(i32 %19, i32* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %22
  %28 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %29 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %32(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @EnableDispPowerGating, align 4
  %37 = bitcast { i64, i32 }* %11 to i8*
  %38 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %36, i64 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %27
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
