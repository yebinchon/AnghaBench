; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_bracket_layout_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_bracket_layout_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.slot_layout_info = type { i32 }
%struct.bios_parser = type { %struct.object_info_table }
%struct.object_info_table = type { %struct.display_object_info_table_v1_4* }
%struct.display_object_info_table_v1_4 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid slot_layout_info\0A\00", align 1
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_NORECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, %struct.slot_layout_info*)* @get_bracket_layout_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bracket_layout_record(%struct.dc_bios* %0, i32 %1, %struct.slot_layout_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.slot_layout_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bios_parser*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_info_table*, align 8
  %12 = alloca %struct.display_object_info_table_v1_4*, align 8
  store %struct.dc_bios* %0, %struct.dc_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.slot_layout_info* %2, %struct.slot_layout_info** %7, align 8
  %13 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %14 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %13)
  store %struct.bios_parser* %14, %struct.bios_parser** %9, align 8
  %15 = load %struct.slot_layout_info*, %struct.slot_layout_info** %7, align 8
  %16 = icmp eq %struct.slot_layout_info* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @DC_LOG_DETECTION_EDID_PARSER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.bios_parser*, %struct.bios_parser** %9, align 8
  %22 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %21, i32 0, i32 0
  store %struct.object_info_table* %22, %struct.object_info_table** %11, align 8
  %23 = load %struct.object_info_table*, %struct.object_info_table** %11, align 8
  %24 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %23, i32 0, i32 0
  %25 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %24, align 8
  store %struct.display_object_info_table_v1_4* %25, %struct.display_object_info_table_v1_4** %12, align 8
  %26 = load i32, i32* @BP_RESULT_NORECORD, align 4
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %50, %20
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %12, align 8
  %30 = getelementptr inbounds %struct.display_object_info_table_v1_4, %struct.display_object_info_table_v1_4* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %12, align 8
  %36 = getelementptr inbounds %struct.display_object_info_table_v1_4, %struct.display_object_info_table_v1_4* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %34, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.slot_layout_info*, %struct.slot_layout_info** %7, align 8
  %48 = call i32 @update_slot_layout_info(%struct.dc_bios* %45, i32 %46, %struct.slot_layout_info* %47)
  store i32 %48, i32* %10, align 4
  br label %53

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %27

53:                                               ; preds = %44, %27
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32 @DC_LOG_DETECTION_EDID_PARSER(i8*) #1

declare dso_local i32 @update_slot_layout_info(%struct.dc_bios*, i32, %struct.slot_layout_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
