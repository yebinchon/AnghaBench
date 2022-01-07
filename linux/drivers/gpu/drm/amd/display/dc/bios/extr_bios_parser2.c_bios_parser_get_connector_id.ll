; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_connector_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_get_connector_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.graphics_object_id = type { i32 }
%struct.bios_parser = type { %struct.object_info_table }
%struct.object_info_table = type { %struct.display_object_info_table_v1_4* }
%struct.display_object_info_table_v1_4 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ENUM_ID_UNKNOWN = common dso_local global i32 0, align 4
@OBJECT_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i64)* @bios_parser_get_connector_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_connector_id(%struct.dc_bios* %0, i64 %1) #0 {
  %3 = alloca %struct.graphics_object_id, align 4
  %4 = alloca %struct.dc_bios*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bios_parser*, align 8
  %7 = alloca %struct.object_info_table*, align 8
  %8 = alloca %struct.display_object_info_table_v1_4*, align 8
  %9 = alloca %struct.graphics_object_id, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %11 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %10)
  store %struct.bios_parser* %11, %struct.bios_parser** %6, align 8
  %12 = load i32, i32* @ENUM_ID_UNKNOWN, align 4
  %13 = load i32, i32* @OBJECT_TYPE_UNKNOWN, align 4
  %14 = call i32 @dal_graphics_object_id_init(i32 0, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %17 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %16, i32 0, i32 0
  store %struct.object_info_table* %17, %struct.object_info_table** %7, align 8
  %18 = load %struct.object_info_table*, %struct.object_info_table** %7, align 8
  %19 = getelementptr inbounds %struct.object_info_table, %struct.object_info_table* %18, i32 0, i32 0
  %20 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %19, align 8
  store %struct.display_object_info_table_v1_4* %20, %struct.display_object_info_table_v1_4** %8, align 8
  %21 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %8, align 8
  %22 = getelementptr inbounds %struct.display_object_info_table_v1_4, %struct.display_object_info_table_v1_4* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %2
  %27 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %8, align 8
  %28 = getelementptr inbounds %struct.display_object_info_table_v1_4, %struct.display_object_info_table_v1_4* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %8, align 8
  %37 = getelementptr inbounds %struct.display_object_info_table_v1_4, %struct.display_object_info_table_v1_4* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load %struct.display_object_info_table_v1_4*, %struct.display_object_info_table_v1_4** %8, align 8
  %46 = getelementptr inbounds %struct.display_object_info_table_v1_4, %struct.display_object_info_table_v1_4* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @object_id_from_bios_object_id(i64 %51)
  %53 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.graphics_object_id* %3 to i8*
  %55 = bitcast %struct.graphics_object_id* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %56

56:                                               ; preds = %44, %35, %26
  br label %57

57:                                               ; preds = %56, %2
  %58 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32 @dal_graphics_object_id_init(i32, i32, i32) #1

declare dso_local i32 @object_id_from_bios_object_id(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
