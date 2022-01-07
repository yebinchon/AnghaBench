; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_device_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_device_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.connector_device_tag_info = type { i32, i64 }
%struct.graphics_object_id = type { i32 }
%struct.bios_parser = type { i32 }
%struct.atom_display_object_path_v2 = type { i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, i32, %struct.connector_device_tag_info*)* @bios_parser_get_device_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_device_tag(%struct.dc_bios* %0, i32 %1, i32 %2, %struct.connector_device_tag_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.graphics_object_id, align 4
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.connector_device_tag_info*, align 8
  %10 = alloca %struct.bios_parser*, align 8
  %11 = alloca %struct.atom_display_object_path_v2*, align 8
  %12 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.connector_device_tag_info* %3, %struct.connector_device_tag_info** %9, align 8
  %13 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %14 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %13)
  store %struct.bios_parser* %14, %struct.bios_parser** %10, align 8
  %15 = load %struct.connector_device_tag_info*, %struct.connector_device_tag_info** %9, align 8
  %16 = icmp ne %struct.connector_device_tag_info* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %18, i32* %5, align 4
  br label %39

19:                                               ; preds = %4
  %20 = load %struct.bios_parser*, %struct.bios_parser** %10, align 8
  %21 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.atom_display_object_path_v2* @get_bios_object(%struct.bios_parser* %20, i32 %22)
  store %struct.atom_display_object_path_v2* %23, %struct.atom_display_object_path_v2** %11, align 8
  %24 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %11, align 8
  %25 = icmp ne %struct.atom_display_object_path_v2* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = call i32 (...) @BREAK_TO_DEBUGGER()
  %28 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %19
  %30 = load %struct.connector_device_tag_info*, %struct.connector_device_tag_info** %9, align 8
  %31 = getelementptr inbounds %struct.connector_device_tag_info, %struct.connector_device_tag_info* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %11, align 8
  %33 = getelementptr inbounds %struct.atom_display_object_path_v2, %struct.atom_display_object_path_v2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_type_from_device_id(i32 %34)
  %36 = load %struct.connector_device_tag_info*, %struct.connector_device_tag_info** %9, align 8
  %37 = getelementptr inbounds %struct.connector_device_tag_info, %struct.connector_device_tag_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %29, %26, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local %struct.atom_display_object_path_v2* @get_bios_object(%struct.bios_parser*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @device_type_from_device_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
