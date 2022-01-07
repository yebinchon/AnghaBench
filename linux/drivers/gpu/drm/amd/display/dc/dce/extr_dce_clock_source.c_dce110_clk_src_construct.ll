; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_clk_src_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_clk_src_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { i32, i32, i32, %struct.TYPE_6__, %struct.dc_bios*, %struct.dce110_clk_src_mask*, i32, %struct.dce110_clk_src_shift*, %struct.dce110_clk_src_regs* }
%struct.TYPE_6__ = type { i32, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dce110_clk_src_regs = type { i32 }
%struct.dce110_clk_src_shift = type { i32 }
%struct.dce110_clk_src_mask = type { i32, i32 }
%struct.calc_pll_clock_source_init_data = type { i32, i32, i32, i32, %struct.dc_context*, i8*, i8*, i32, i32, %struct.dc_bios* }

@dce110_clk_src_funcs = common dso_local global i32 0, align 4
@FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM = common dso_local global i8* null, align 8
@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_clk_src_construct(%struct.dce110_clk_src* %0, %struct.dc_context* %1, %struct.dc_bios* %2, i32 %3, %struct.dce110_clk_src_regs* %4, %struct.dce110_clk_src_shift* %5, %struct.dce110_clk_src_mask* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_clk_src*, align 8
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca %struct.dc_bios*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dce110_clk_src_regs*, align 8
  %14 = alloca %struct.dce110_clk_src_shift*, align 8
  %15 = alloca %struct.dce110_clk_src_mask*, align 8
  %16 = alloca %struct.calc_pll_clock_source_init_data, align 8
  %17 = alloca %struct.calc_pll_clock_source_init_data, align 8
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %9, align 8
  store %struct.dc_context* %1, %struct.dc_context** %10, align 8
  store %struct.dc_bios* %2, %struct.dc_bios** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.dce110_clk_src_regs* %4, %struct.dce110_clk_src_regs** %13, align 8
  store %struct.dce110_clk_src_shift* %5, %struct.dce110_clk_src_shift** %14, align 8
  store %struct.dce110_clk_src_mask* %6, %struct.dce110_clk_src_mask** %15, align 8
  %18 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %19 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %20 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store %struct.dc_context* %18, %struct.dc_context** %21, align 8
  %22 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  %23 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %24 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %23, i32 0, i32 4
  store %struct.dc_bios* %22, %struct.dc_bios** %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %27 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %30 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32* @dce110_clk_src_funcs, i32** %31, align 8
  %32 = load %struct.dce110_clk_src_regs*, %struct.dce110_clk_src_regs** %13, align 8
  %33 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %34 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %33, i32 0, i32 8
  store %struct.dce110_clk_src_regs* %32, %struct.dce110_clk_src_regs** %34, align 8
  %35 = load %struct.dce110_clk_src_shift*, %struct.dce110_clk_src_shift** %14, align 8
  %36 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %37 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %36, i32 0, i32 7
  store %struct.dce110_clk_src_shift* %35, %struct.dce110_clk_src_shift** %37, align 8
  %38 = load %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_mask** %15, align 8
  %39 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %40 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %39, i32 0, i32 5
  store %struct.dce110_clk_src_mask* %38, %struct.dce110_clk_src_mask** %40, align 8
  %41 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %42 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %41, i32 0, i32 4
  %43 = load %struct.dc_bios*, %struct.dc_bios** %42, align 8
  %44 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %7
  %48 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %149

49:                                               ; preds = %7
  %50 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %51 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %50, i32 0, i32 4
  %52 = load %struct.dc_bios*, %struct.dc_bios** %51, align 8
  %53 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %57 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  %59 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 9
  store %struct.dc_bios* %58, %struct.dc_bios** %59, align 8
  %60 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %62 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %61, i32 0, i32 5
  %63 = load %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_mask** %62, align 8
  %64 = getelementptr inbounds %struct.dce110_clk_src_mask, %struct.dce110_clk_src_mask* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 8
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %69 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %68, i32 0, i32 5
  %70 = load %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_mask** %69, align 8
  %71 = getelementptr inbounds %struct.dce110_clk_src_mask, %struct.dce110_clk_src_mask* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 7
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 3
  store i32 0, i32* %75, align 4
  %76 = load i8*, i8** @FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM, align 8
  %77 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 6
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** @FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM, align 8
  %79 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %81 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %17, i32 0, i32 4
  store %struct.dc_context* %80, %struct.dc_context** %81, align 8
  %82 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  %83 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 9
  store %struct.dc_bios* %82, %struct.dc_bios** %83, align 8
  %84 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %86 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %85, i32 0, i32 5
  %87 = load %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_mask** %86, align 8
  %88 = getelementptr inbounds %struct.dce110_clk_src_mask, %struct.dce110_clk_src_mask* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 8
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %93 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %92, i32 0, i32 5
  %94 = load %struct.dce110_clk_src_mask*, %struct.dce110_clk_src_mask** %93, align 8
  %95 = getelementptr inbounds %struct.dce110_clk_src_mask, %struct.dce110_clk_src_mask* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 7
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 2
  store i32 13500, i32* %98, align 8
  %99 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 3
  store i32 27000, i32* %99, align 4
  %100 = load i8*, i8** @FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM, align 8
  %101 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 6
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** @FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM, align 8
  %103 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 5
  store i8* %102, i8** %103, align 8
  %104 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %105 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 4
  store %struct.dc_context* %104, %struct.dc_context** %105, align 8
  %106 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %107 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %106, i32 0, i32 4
  %108 = load %struct.dc_bios*, %struct.dc_bios** %107, align 8
  %109 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %114 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %116 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @CLOCK_SOURCE_ID_EXTERNAL, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %49
  store i32 1, i32* %8, align 4
  br label %150

123:                                              ; preds = %49
  %124 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %125 = call i32 @ss_info_from_atombios_create(%struct.dce110_clk_src* %124)
  %126 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %127 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %126, i32 0, i32 2
  %128 = call i32 @calc_pll_max_vco_construct(i32* %127, %struct.calc_pll_clock_source_init_data* %17)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %123
  %131 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %149

132:                                              ; preds = %123
  %133 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %134 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 2
  %137 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 2
  store i32 %136, i32* %137, align 8
  %138 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %139 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %16, i32 0, i32 3
  store i32 %140, i32* %141, align 4
  %142 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %9, align 8
  %143 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %142, i32 0, i32 1
  %144 = call i32 @calc_pll_max_vco_construct(i32* %143, %struct.calc_pll_clock_source_init_data* %16)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %132
  %147 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %149

148:                                              ; preds = %132
  store i32 1, i32* %8, align 4
  br label %150

149:                                              ; preds = %146, %130, %47
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %149, %148, %122
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @ss_info_from_atombios_create(%struct.dce110_clk_src*) #1

declare dso_local i32 @calc_pll_max_vco_construct(i32*, %struct.calc_pll_clock_source_init_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
