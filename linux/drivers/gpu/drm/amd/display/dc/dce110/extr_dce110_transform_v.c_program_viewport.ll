; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_viewport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.rect = type { i32, i32, i32, i32 }

@mmSCLV_VIEWPORT_START = common dso_local global i64 0, align 8
@SCLV_VIEWPORT_START = common dso_local global i32 0, align 4
@VIEWPORT_X_START = common dso_local global i32 0, align 4
@VIEWPORT_Y_START = common dso_local global i32 0, align 4
@mmSCLV_VIEWPORT_SIZE = common dso_local global i64 0, align 8
@SCLV_VIEWPORT_SIZE = common dso_local global i32 0, align 4
@VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@mmSCLV_VIEWPORT_START_C = common dso_local global i64 0, align 8
@SCLV_VIEWPORT_START_C = common dso_local global i32 0, align 4
@VIEWPORT_X_START_C = common dso_local global i32 0, align 4
@VIEWPORT_Y_START_C = common dso_local global i32 0, align 4
@mmSCLV_VIEWPORT_SIZE_C = common dso_local global i64 0, align 8
@SCLV_VIEWPORT_SIZE_C = common dso_local global i32 0, align 4
@VIEWPORT_HEIGHT_C = common dso_local global i32 0, align 4
@VIEWPORT_WIDTH_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.rect*, %struct.rect*)* @program_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_viewport(%struct.dce_transform* %0, %struct.rect* %1, %struct.rect* %2) #0 {
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca %struct.rect*, align 8
  %6 = alloca %struct.rect*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store %struct.rect* %1, %struct.rect** %5, align 8
  store %struct.rect* %2, %struct.rect** %6, align 8
  %10 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %11 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  store %struct.dc_context* %13, %struct.dc_context** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.rect*, %struct.rect** %5, align 8
  %15 = getelementptr inbounds %struct.rect, %struct.rect* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %3
  %19 = load %struct.rect*, %struct.rect** %5, align 8
  %20 = getelementptr inbounds %struct.rect, %struct.rect* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i64, i64* @mmSCLV_VIEWPORT_START, align 8
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.rect*, %struct.rect** %5, align 8
  %27 = getelementptr inbounds %struct.rect, %struct.rect* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SCLV_VIEWPORT_START, align 4
  %30 = load i32, i32* @VIEWPORT_X_START, align 4
  %31 = call i32 @set_reg_field_value(i64 %25, i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.rect*, %struct.rect** %5, align 8
  %34 = getelementptr inbounds %struct.rect, %struct.rect* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SCLV_VIEWPORT_START, align 4
  %37 = load i32, i32* @VIEWPORT_Y_START, align 4
  %38 = call i32 @set_reg_field_value(i64 %32, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @dm_write_reg(%struct.dc_context* %39, i64 %40, i64 %41)
  %43 = load i64, i64* @mmSCLV_VIEWPORT_SIZE, align 8
  store i64 %43, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.rect*, %struct.rect** %5, align 8
  %46 = getelementptr inbounds %struct.rect, %struct.rect* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SCLV_VIEWPORT_SIZE, align 4
  %49 = load i32, i32* @VIEWPORT_HEIGHT, align 4
  %50 = call i32 @set_reg_field_value(i64 %44, i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.rect*, %struct.rect** %5, align 8
  %53 = getelementptr inbounds %struct.rect, %struct.rect* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SCLV_VIEWPORT_SIZE, align 4
  %56 = load i32, i32* @VIEWPORT_WIDTH, align 4
  %57 = call i32 @set_reg_field_value(i64 %51, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @dm_write_reg(%struct.dc_context* %58, i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %23, %18, %3
  %63 = load %struct.rect*, %struct.rect** %6, align 8
  %64 = getelementptr inbounds %struct.rect, %struct.rect* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %62
  %68 = load %struct.rect*, %struct.rect** %6, align 8
  %69 = getelementptr inbounds %struct.rect, %struct.rect* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %67
  %73 = load i64, i64* @mmSCLV_VIEWPORT_START_C, align 8
  store i64 %73, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.rect*, %struct.rect** %6, align 8
  %76 = getelementptr inbounds %struct.rect, %struct.rect* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SCLV_VIEWPORT_START_C, align 4
  %79 = load i32, i32* @VIEWPORT_X_START_C, align 4
  %80 = call i32 @set_reg_field_value(i64 %74, i32 %77, i32 %78, i32 %79)
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.rect*, %struct.rect** %6, align 8
  %83 = getelementptr inbounds %struct.rect, %struct.rect* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SCLV_VIEWPORT_START_C, align 4
  %86 = load i32, i32* @VIEWPORT_Y_START_C, align 4
  %87 = call i32 @set_reg_field_value(i64 %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @dm_write_reg(%struct.dc_context* %88, i64 %89, i64 %90)
  %92 = load i64, i64* @mmSCLV_VIEWPORT_SIZE_C, align 8
  store i64 %92, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.rect*, %struct.rect** %6, align 8
  %95 = getelementptr inbounds %struct.rect, %struct.rect* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SCLV_VIEWPORT_SIZE_C, align 4
  %98 = load i32, i32* @VIEWPORT_HEIGHT_C, align 4
  %99 = call i32 @set_reg_field_value(i64 %93, i32 %96, i32 %97, i32 %98)
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.rect*, %struct.rect** %6, align 8
  %102 = getelementptr inbounds %struct.rect, %struct.rect* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SCLV_VIEWPORT_SIZE_C, align 4
  %105 = load i32, i32* @VIEWPORT_WIDTH_C, align 4
  %106 = call i32 @set_reg_field_value(i64 %100, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @dm_write_reg(%struct.dc_context* %107, i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %72, %67, %62
  ret void
}

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
