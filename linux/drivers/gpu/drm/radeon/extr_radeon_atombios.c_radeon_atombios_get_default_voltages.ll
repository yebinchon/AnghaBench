; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_default_voltages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_default_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%union.firmware_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_get_default_voltages(%struct.radeon_device* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.radeon_mode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %union.firmware_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  store %struct.radeon_mode_info* %16, %struct.radeon_mode_info** %9, align 8
  %17 = load i32, i32* @DATA, align 4
  %18 = load i32, i32* @FirmwareInfo, align 4
  %19 = call i32 @GetIndexIntoMasterTable(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i64*, i64** %6, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %8, align 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %9, align 8
  %24 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @atom_parse_data_header(%struct.TYPE_6__* %25, i32 %26, i32* null, i32* %11, i32* %12, i64* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %4
  %30 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add nsw i64 %34, %35
  %37 = inttoptr i64 %36 to %union.firmware_info*
  store %union.firmware_info* %37, %union.firmware_info** %14, align 8
  %38 = load %union.firmware_info*, %union.firmware_info** %14, align 8
  %39 = bitcast %union.firmware_info* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %62

46:                                               ; preds = %29
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %union.firmware_info*, %union.firmware_info** %14, align 8
  %51 = bitcast %union.firmware_info* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le16_to_cpu(i32 %53)
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %union.firmware_info*, %union.firmware_info** %14, align 8
  %57 = bitcast %union.firmware_info* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_cpu(i32 %59)
  %61 = load i64*, i64** %8, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %49, %46, %29
  br label %63

63:                                               ; preds = %62, %4
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_6__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
