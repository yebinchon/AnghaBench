; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_program_blanking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_program_blanking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_H_TOTAL = common dso_local global i32 0, align 4
@CRTC_H_TOTAL = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL = common dso_local global i32 0, align 4
@CRTC_V_TOTAL = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@mmCRTC_H_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_H_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_H_BLANK_END = common dso_local global i32 0, align 4
@CRTC_H_BLANK_START = common dso_local global i32 0, align 4
@mmCRTC_V_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_program_blanking(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dce110_timing_generator*, align 8
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  %14 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %15 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %18 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %22 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %6, align 8
  %26 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %27 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %30 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %7, align 8
  %33 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %34 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %39 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %38)
  store %struct.dce110_timing_generator* %39, %struct.dce110_timing_generator** %9, align 8
  %40 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %41 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %40, i32 0, i32 0
  %42 = load %struct.dc_context*, %struct.dc_context** %41, align 8
  store %struct.dc_context* %42, %struct.dc_context** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %43 = load i32, i32* @mmCRTC_H_TOTAL, align 4
  %44 = call i64 @CRTC_REG(i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @dm_read_reg(%struct.dc_context* %45, i64 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %50 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = load i32, i32* @CRTC_H_TOTAL, align 4
  %54 = load i32, i32* @CRTC_H_TOTAL, align 4
  %55 = call i32 @set_reg_field_value(i64 %48, i64 %52, i32 %53, i32 %54)
  %56 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @dm_write_reg(%struct.dc_context* %56, i64 %57, i64 %58)
  %60 = load i32, i32* @mmCRTC_V_TOTAL, align 4
  %61 = call i64 @CRTC_REG(i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @dm_read_reg(%struct.dc_context* %62, i64 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %67 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = load i32, i32* @CRTC_V_TOTAL, align 4
  %71 = load i32, i32* @CRTC_V_TOTAL, align 4
  %72 = call i32 @set_reg_field_value(i64 %65, i64 %69, i32 %70, i32 %71)
  %73 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @dm_write_reg(%struct.dc_context* %73, i64 %74, i64 %75)
  %77 = load i32, i32* @mmCRTC_V_TOTAL_MAX, align 4
  %78 = call i64 @CRTC_REG(i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i64 @dm_read_reg(%struct.dc_context* %79, i64 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %84 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %88 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %89 = call i32 @set_reg_field_value(i64 %82, i64 %86, i32 %87, i32 %88)
  %90 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @dm_write_reg(%struct.dc_context* %90, i64 %91, i64 %92)
  %94 = load i32, i32* @mmCRTC_V_TOTAL_MIN, align 4
  %95 = call i64 @CRTC_REG(i32 %94)
  store i64 %95, i64* %12, align 8
  %96 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @dm_read_reg(%struct.dc_context* %96, i64 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %101 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 1
  %104 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %105 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %106 = call i32 @set_reg_field_value(i64 %99, i64 %103, i32 %104, i32 %105)
  %107 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @dm_write_reg(%struct.dc_context* %107, i64 %108, i64 %109)
  %111 = load i32, i32* @mmCRTC_H_BLANK_START_END, align 4
  %112 = call i64 @CRTC_REG(i32 %111)
  store i64 %112, i64* %12, align 8
  %113 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @dm_read_reg(%struct.dc_context* %113, i64 %114)
  store i64 %115, i64* %11, align 8
  %116 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %117 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %121 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = sub nsw i64 %118, %123
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* @CRTC_H_BLANK_START_END, align 4
  %128 = load i32, i32* @CRTC_H_BLANK_END, align 4
  %129 = call i32 @set_reg_field_value(i64 %125, i64 %126, i32 %127, i32 %128)
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %132 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %136 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %140 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  store i64 %142, i64* %13, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i32, i32* @CRTC_H_BLANK_START_END, align 4
  %146 = load i32, i32* @CRTC_H_BLANK_START, align 4
  %147 = call i32 @set_reg_field_value(i64 %143, i64 %144, i32 %145, i32 %146)
  %148 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @dm_write_reg(%struct.dc_context* %148, i64 %149, i64 %150)
  %152 = load i32, i32* @mmCRTC_V_BLANK_START_END, align 4
  %153 = call i64 @CRTC_REG(i32 %152)
  store i64 %153, i64* %12, align 8
  %154 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %155 = load i64, i64* %12, align 8
  %156 = call i64 @dm_read_reg(%struct.dc_context* %154, i64 %155)
  store i64 %156, i64* %11, align 8
  %157 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %158 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %162 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %160, %163
  %165 = sub nsw i64 %159, %164
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load i32, i32* @CRTC_V_BLANK_START_END, align 4
  %169 = load i32, i32* @CRTC_V_BLANK_END, align 4
  %170 = call i32 @set_reg_field_value(i64 %166, i64 %167, i32 %168, i32 %169)
  %171 = load i64, i64* %13, align 8
  %172 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %173 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %177 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  %180 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %181 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %179, %182
  store i64 %183, i64* %13, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* %13, align 8
  %186 = load i32, i32* @CRTC_V_BLANK_START_END, align 4
  %187 = load i32, i32* @CRTC_V_BLANK_START, align 4
  %188 = call i32 @set_reg_field_value(i64 %184, i64 %185, i32 %186, i32 %187)
  %189 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @dm_write_reg(%struct.dc_context* %189, i64 %190, i64 %191)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @CRTC_REG(i32) #1

declare dso_local i64 @dm_read_reg(%struct.dc_context*, i64) #1

declare dso_local i32 @set_reg_field_value(i64, i64, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
