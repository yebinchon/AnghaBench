; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_sideport_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_sideport_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%union.igp_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported IGP table: %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_sideport_present(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.igp_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  store %struct.radeon_mode_info* %11, %struct.radeon_mode_info** %4, align 8
  %12 = load i32, i32* @DATA, align 4
  %13 = load i32, i32* @IntegratedSystemInfo, align 4
  %14 = call i32 @GetIndexIntoMasterTable(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_RS600, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @atom_parse_data_header(%struct.TYPE_6__* %24, i32 %25, i32* null, i32* %7, i32* %8, i64* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %21
  %29 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to %union.igp_info*
  store %union.igp_info* %36, %union.igp_info** %6, align 8
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %56 [
    i32 1, label %38
    i32 2, label %47
  ]

38:                                               ; preds = %28
  %39 = load %union.igp_info*, %union.igp_info** %6, align 8
  %40 = bitcast %union.igp_info* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %62

46:                                               ; preds = %38
  br label %60

47:                                               ; preds = %28
  %48 = load %union.igp_info*, %union.igp_info** %6, align 8
  %49 = bitcast %union.igp_info* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %62

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %28
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %55, %46
  br label %61

61:                                               ; preds = %60, %21
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %45, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_6__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
