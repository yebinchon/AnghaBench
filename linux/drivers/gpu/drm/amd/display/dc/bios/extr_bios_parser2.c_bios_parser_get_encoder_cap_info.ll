; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_encoder_cap_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_encoder_cap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.bp_encoder_cap_info = type { i32, i32, i32, i32, i32 }
%struct.graphics_object_id = type { i32 }
%struct.bios_parser = type { i32 }
%struct.atom_display_object_path_v2 = type { i32 }
%struct.atom_encoder_caps_record = type { i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_NORECORD = common dso_local global i32 0, align 4
@ATOM_ENCODER_CAP_RECORD_HBR2 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CAP_RECORD_HBR2_EN = common dso_local global i32 0, align 4
@ATOM_ENCODER_CAP_RECORD_HBR3_EN = common dso_local global i32 0, align 4
@ATOM_ENCODER_CAP_RECORD_HDMI6Gbps_EN = common dso_local global i32 0, align 4
@ATOM_ENCODER_CAP_RECORD_USB_C_TYPE = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, %struct.bp_encoder_cap_info*)* @bios_parser_get_encoder_cap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_encoder_cap_info(%struct.dc_bios* %0, i32 %1, %struct.bp_encoder_cap_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.graphics_object_id, align 4
  %6 = alloca %struct.dc_bios*, align 8
  %7 = alloca %struct.bp_encoder_cap_info*, align 8
  %8 = alloca %struct.bios_parser*, align 8
  %9 = alloca %struct.atom_display_object_path_v2*, align 8
  %10 = alloca %struct.atom_encoder_caps_record*, align 8
  %11 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %6, align 8
  store %struct.bp_encoder_cap_info* %2, %struct.bp_encoder_cap_info** %7, align 8
  %12 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %13 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %12)
  store %struct.bios_parser* %13, %struct.bios_parser** %8, align 8
  store %struct.atom_encoder_caps_record* null, %struct.atom_encoder_caps_record** %10, align 8
  %14 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %15 = icmp ne %struct.bp_encoder_cap_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %17, i32* %4, align 4
  br label %87

18:                                               ; preds = %3
  %19 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %20 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.atom_display_object_path_v2* @get_bios_object(%struct.bios_parser* %19, i32 %21)
  store %struct.atom_display_object_path_v2* %22, %struct.atom_display_object_path_v2** %9, align 8
  %23 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %9, align 8
  %24 = icmp ne %struct.atom_display_object_path_v2* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %26, i32* %4, align 4
  br label %87

27:                                               ; preds = %18
  %28 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %29 = load %struct.atom_display_object_path_v2*, %struct.atom_display_object_path_v2** %9, align 8
  %30 = call %struct.atom_encoder_caps_record* @get_encoder_cap_record(%struct.bios_parser* %28, %struct.atom_display_object_path_v2* %29)
  store %struct.atom_encoder_caps_record* %30, %struct.atom_encoder_caps_record** %10, align 8
  %31 = load %struct.atom_encoder_caps_record*, %struct.atom_encoder_caps_record** %10, align 8
  %32 = icmp ne %struct.atom_encoder_caps_record* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @BP_RESULT_NORECORD, align 4
  store i32 %34, i32* %4, align 4
  br label %87

35:                                               ; preds = %27
  %36 = load %struct.atom_encoder_caps_record*, %struct.atom_encoder_caps_record** %10, align 8
  %37 = getelementptr inbounds %struct.atom_encoder_caps_record, %struct.atom_encoder_caps_record* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATOM_ENCODER_CAP_RECORD_HBR2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %45 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.atom_encoder_caps_record*, %struct.atom_encoder_caps_record** %10, align 8
  %47 = getelementptr inbounds %struct.atom_encoder_caps_record, %struct.atom_encoder_caps_record* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATOM_ENCODER_CAP_RECORD_HBR2_EN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %55 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.atom_encoder_caps_record*, %struct.atom_encoder_caps_record** %10, align 8
  %57 = getelementptr inbounds %struct.atom_encoder_caps_record, %struct.atom_encoder_caps_record* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATOM_ENCODER_CAP_RECORD_HBR3_EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %65 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.atom_encoder_caps_record*, %struct.atom_encoder_caps_record** %10, align 8
  %67 = getelementptr inbounds %struct.atom_encoder_caps_record, %struct.atom_encoder_caps_record* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATOM_ENCODER_CAP_RECORD_HDMI6Gbps_EN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %75 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.atom_encoder_caps_record*, %struct.atom_encoder_caps_record** %10, align 8
  %77 = getelementptr inbounds %struct.atom_encoder_caps_record, %struct.atom_encoder_caps_record* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATOM_ENCODER_CAP_RECORD_USB_C_TYPE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %85 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %35, %33, %25, %16
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local %struct.atom_display_object_path_v2* @get_bios_object(%struct.bios_parser*, i32) #1

declare dso_local %struct.atom_encoder_caps_record* @get_encoder_cap_record(%struct.bios_parser*, %struct.atom_display_object_path_v2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
