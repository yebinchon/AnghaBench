; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_init_overdrive_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_init_overdrive_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@CHIP_RAVEN = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32*)* @init_overdrive_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_overdrive_limits(%struct.pp_hwmgr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHIP_RAVEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

34:                                               ; preds = %2
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DATA, align 4
  %39 = load i32, i32* @FirmwareInfo, align 4
  %40 = call i32 @GetIndexIntoMasterTable(i32 %38, i32 %39)
  %41 = call %struct.TYPE_7__* @smu_atom_get_data_table(i32 %37, i32 %40, i32* %9, i32* %7, i32* %8)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %10, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %59

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = icmp uge i64 %51, 4
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = bitcast %struct.TYPE_7__* %56 to i32*
  %58 = call i32 @init_overdrive_limits_V1_4(%struct.pp_hwmgr* %54, i32* %55, i32* %57)
  store i32 %58, i32* %6, align 4
  br label %78

59:                                               ; preds = %46, %34
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = bitcast %struct.TYPE_7__* %74 to i32*
  %76 = call i32 @init_overdrive_limits_V2_1(%struct.pp_hwmgr* %72, i32* %73, i32* %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %64, %59
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %33
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_7__* @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @init_overdrive_limits_V1_4(%struct.pp_hwmgr*, i32*, i32*) #1

declare dso_local i32 @init_overdrive_limits_V2_1(%struct.pp_hwmgr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
