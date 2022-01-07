; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_device_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_device_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.connector_device_tag_info = type { i32, i32 }
%struct.graphics_object_id = type { i32 }
%struct.bios_parser = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i64 0, align 8
@BP_RESULT_NORECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, i64, %struct.connector_device_tag_info*)* @bios_parser_get_device_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_device_tag(%struct.dc_bios* %0, i32 %1, i64 %2, %struct.connector_device_tag_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.graphics_object_id, align 4
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.connector_device_tag_info*, align 8
  %10 = alloca %struct.bios_parser*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.connector_device_tag_info* %3, %struct.connector_device_tag_info** %9, align 8
  %15 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %16 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %15)
  store %struct.bios_parser* %16, %struct.bios_parser** %10, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  %17 = load %struct.connector_device_tag_info*, %struct.connector_device_tag_info** %9, align 8
  %18 = icmp ne %struct.connector_device_tag_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %20, i32* %5, align 4
  br label %68

21:                                               ; preds = %4
  %22 = load %struct.bios_parser*, %struct.bios_parser** %10, align 8
  %23 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @get_bios_object(%struct.bios_parser* %22, i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  %30 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %30, i32* %5, align 4
  br label %68

31:                                               ; preds = %21
  %32 = load %struct.bios_parser*, %struct.bios_parser** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i64 @bios_parser_get_device_tag_record(%struct.bios_parser* %32, i32* %33, %struct.TYPE_4__** %12)
  %35 = load i64, i64* @BP_RESULT_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @BP_RESULT_NORECORD, align 4
  store i32 %38, i32* %5, align 4
  br label %68

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @BP_RESULT_NORECORD, align 4
  store i32 %46, i32* %5, align 4
  br label %68

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %13, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load %struct.connector_device_tag_info*, %struct.connector_device_tag_info** %9, align 8
  %58 = getelementptr inbounds %struct.connector_device_tag_info, %struct.connector_device_tag_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = call i32 @device_type_from_device_id(i32 %62)
  %64 = load %struct.connector_device_tag_info*, %struct.connector_device_tag_info** %9, align 8
  %65 = getelementptr inbounds %struct.connector_device_tag_info, %struct.connector_device_tag_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* @BP_RESULT_OK, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %47, %45, %37, %28, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32* @get_bios_object(%struct.bios_parser*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @bios_parser_get_device_tag_record(%struct.bios_parser*, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @device_type_from_device_id(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
