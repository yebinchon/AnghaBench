; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_scl_ratios_inits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_scl_ratios_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.sclv_ratios_inits = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@mmSCLV_HORZ_FILTER_SCALE_RATIO = common dso_local global i64 0, align 8
@SCLV_HORZ_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_H_SCALE_RATIO = common dso_local global i32 0, align 4
@mmSCLV_VERT_FILTER_SCALE_RATIO = common dso_local global i64 0, align 8
@SCLV_VERT_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_V_SCALE_RATIO = common dso_local global i32 0, align 4
@mmSCLV_HORZ_FILTER_SCALE_RATIO_C = common dso_local global i64 0, align 8
@SCLV_HORZ_FILTER_SCALE_RATIO_C = common dso_local global i32 0, align 4
@SCL_H_SCALE_RATIO_C = common dso_local global i32 0, align 4
@mmSCLV_VERT_FILTER_SCALE_RATIO_C = common dso_local global i64 0, align 8
@SCLV_VERT_FILTER_SCALE_RATIO_C = common dso_local global i32 0, align 4
@SCL_V_SCALE_RATIO_C = common dso_local global i32 0, align 4
@mmSCLV_HORZ_FILTER_INIT = common dso_local global i64 0, align 8
@SCLV_HORZ_FILTER_INIT = common dso_local global i32 0, align 4
@SCL_H_INIT_FRAC = common dso_local global i32 0, align 4
@SCL_H_INIT_INT = common dso_local global i32 0, align 4
@mmSCLV_VERT_FILTER_INIT = common dso_local global i64 0, align 8
@SCLV_VERT_FILTER_INIT = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC = common dso_local global i32 0, align 4
@SCL_V_INIT_INT = common dso_local global i32 0, align 4
@mmSCLV_HORZ_FILTER_INIT_C = common dso_local global i64 0, align 8
@SCLV_HORZ_FILTER_INIT_C = common dso_local global i32 0, align 4
@SCL_H_INIT_FRAC_C = common dso_local global i32 0, align 4
@SCL_H_INIT_INT_C = common dso_local global i32 0, align 4
@mmSCLV_VERT_FILTER_INIT_C = common dso_local global i64 0, align 8
@SCLV_VERT_FILTER_INIT_C = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC_C = common dso_local global i32 0, align 4
@SCL_V_INIT_INT_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.sclv_ratios_inits*)* @program_scl_ratios_inits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_scl_ratios_inits(%struct.dce_transform* %0, %struct.sclv_ratios_inits* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.sclv_ratios_inits*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.sclv_ratios_inits* %1, %struct.sclv_ratios_inits** %4, align 8
  %8 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %9 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %5, align 8
  %12 = load i64, i64* @mmSCLV_HORZ_FILTER_SCALE_RATIO, align 8
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %15 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SCLV_HORZ_FILTER_SCALE_RATIO, align 4
  %18 = load i32, i32* @SCL_H_SCALE_RATIO, align 4
  %19 = call i32 @set_reg_field_value(i64 %13, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @dm_write_reg(%struct.dc_context* %20, i64 %21, i64 %22)
  %24 = load i64, i64* @mmSCLV_VERT_FILTER_SCALE_RATIO, align 8
  store i64 %24, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %27 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SCLV_VERT_FILTER_SCALE_RATIO, align 4
  %30 = load i32, i32* @SCL_V_SCALE_RATIO, align 4
  %31 = call i32 @set_reg_field_value(i64 %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @dm_write_reg(%struct.dc_context* %32, i64 %33, i64 %34)
  %36 = load i64, i64* @mmSCLV_HORZ_FILTER_SCALE_RATIO_C, align 8
  store i64 %36, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %39 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SCLV_HORZ_FILTER_SCALE_RATIO_C, align 4
  %42 = load i32, i32* @SCL_H_SCALE_RATIO_C, align 4
  %43 = call i32 @set_reg_field_value(i64 %37, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @dm_write_reg(%struct.dc_context* %44, i64 %45, i64 %46)
  %48 = load i64, i64* @mmSCLV_VERT_FILTER_SCALE_RATIO_C, align 8
  store i64 %48, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %51 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCLV_VERT_FILTER_SCALE_RATIO_C, align 4
  %54 = load i32, i32* @SCL_V_SCALE_RATIO_C, align 4
  %55 = call i32 @set_reg_field_value(i64 %49, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @dm_write_reg(%struct.dc_context* %56, i64 %57, i64 %58)
  %60 = load i64, i64* @mmSCLV_HORZ_FILTER_INIT, align 8
  store i64 %60, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %63 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SCLV_HORZ_FILTER_INIT, align 4
  %67 = load i32, i32* @SCL_H_INIT_FRAC, align 4
  %68 = call i32 @set_reg_field_value(i64 %61, i32 %65, i32 %66, i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %71 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SCLV_HORZ_FILTER_INIT, align 4
  %75 = load i32, i32* @SCL_H_INIT_INT, align 4
  %76 = call i32 @set_reg_field_value(i64 %69, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @dm_write_reg(%struct.dc_context* %77, i64 %78, i64 %79)
  %81 = load i64, i64* @mmSCLV_VERT_FILTER_INIT, align 8
  store i64 %81, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %84 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SCLV_VERT_FILTER_INIT, align 4
  %88 = load i32, i32* @SCL_V_INIT_FRAC, align 4
  %89 = call i32 @set_reg_field_value(i64 %82, i32 %86, i32 %87, i32 %88)
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %92 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SCLV_VERT_FILTER_INIT, align 4
  %96 = load i32, i32* @SCL_V_INIT_INT, align 4
  %97 = call i32 @set_reg_field_value(i64 %90, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @dm_write_reg(%struct.dc_context* %98, i64 %99, i64 %100)
  %102 = load i64, i64* @mmSCLV_HORZ_FILTER_INIT_C, align 8
  store i64 %102, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %105 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SCLV_HORZ_FILTER_INIT_C, align 4
  %109 = load i32, i32* @SCL_H_INIT_FRAC_C, align 4
  %110 = call i32 @set_reg_field_value(i64 %103, i32 %107, i32 %108, i32 %109)
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %113 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SCLV_HORZ_FILTER_INIT_C, align 4
  %117 = load i32, i32* @SCL_H_INIT_INT_C, align 4
  %118 = call i32 @set_reg_field_value(i64 %111, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @dm_write_reg(%struct.dc_context* %119, i64 %120, i64 %121)
  %123 = load i64, i64* @mmSCLV_VERT_FILTER_INIT_C, align 8
  store i64 %123, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %126 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SCLV_VERT_FILTER_INIT_C, align 4
  %130 = load i32, i32* @SCL_V_INIT_FRAC_C, align 4
  %131 = call i32 @set_reg_field_value(i64 %124, i32 %128, i32 %129, i32 %130)
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %4, align 8
  %134 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SCLV_VERT_FILTER_INIT_C, align 4
  %138 = load i32, i32* @SCL_V_INIT_INT_C, align 4
  %139 = call i32 @set_reg_field_value(i64 %132, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @dm_write_reg(%struct.dc_context* %140, i64 %141, i64 %142)
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
