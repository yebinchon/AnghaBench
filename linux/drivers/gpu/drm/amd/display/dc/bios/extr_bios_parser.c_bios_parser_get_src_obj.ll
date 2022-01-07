; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_src_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_src_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.graphics_object_id = type { i32 }
%struct.bios_parser = type { i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, i64, %struct.graphics_object_id*)* @bios_parser_get_src_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_src_obj(%struct.dc_bios* %0, i32 %1, i64 %2, %struct.graphics_object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.graphics_object_id, align 4
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.graphics_object_id*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bios_parser*, align 8
  %14 = alloca %struct.graphics_object_id, align 4
  %15 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 0
  store i32 %1, i32* %15, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.graphics_object_id* %3, %struct.graphics_object_id** %9, align 8
  %16 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %17 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %16)
  store %struct.bios_parser* %17, %struct.bios_parser** %13, align 8
  %18 = load %struct.graphics_object_id*, %struct.graphics_object_id** %9, align 8
  %19 = icmp ne %struct.graphics_object_id* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.bios_parser*, %struct.bios_parser** %13, align 8
  %24 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @get_bios_object(%struct.bios_parser* %23, i32 %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = call i32 (...) @BREAK_TO_DEBUGGER()
  %31 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %22
  %33 = load %struct.bios_parser*, %struct.bios_parser** %13, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i64 @get_src_obj_list(%struct.bios_parser* %33, i32* %34, i32** %11)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.graphics_object_id*, %struct.graphics_object_id** %9, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @object_id_from_bios_object_id(i32 %46)
  %48 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %14, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.graphics_object_id* %42 to i8*
  %50 = bitcast %struct.graphics_object_id* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %41, %39, %29, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32* @get_bios_object(%struct.bios_parser*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @get_src_obj_list(%struct.bios_parser*, i32*, i32**) #1

declare dso_local i32 @object_id_from_bios_object_id(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
