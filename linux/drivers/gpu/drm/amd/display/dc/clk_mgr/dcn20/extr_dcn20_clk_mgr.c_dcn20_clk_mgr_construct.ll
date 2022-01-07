; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn20_clk_mgr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn20_clk_mgr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dc_context = type { i32 }
%struct.clk_mgr_internal = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_6__*, i64, i64, %struct.dccg*, i32*, i32*, %struct.pp_smu_funcs* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, %struct.dc_context* }
%struct.pp_smu_funcs = type { i32 }
%struct.dccg = type { i32 }
%struct.fixed31_32 = type { i32 }

@dcn2_funcs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@clk_mgr_regs = common dso_local global i32 0, align 4
@clk_mgr_shift = common dso_local global i32 0, align 4
@clk_mgr_mask = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@dcn2_update_clocks_fpga = common dso_local global i32 0, align 4
@CLK3_CLK2_DFS_CNTL = common dso_local global i32 0, align 4
@CLK3_CLK_PLL_REQ = common dso_local global i32 0, align 4
@DENTIST_DIVIDER_RANGE_SCALE_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_clk_mgr_construct(%struct.dc_context* %0, %struct.clk_mgr_internal* %1, %struct.pp_smu_funcs* %2, %struct.dccg* %3) #0 {
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.clk_mgr_internal*, align 8
  %7 = alloca %struct.pp_smu_funcs*, align 8
  %8 = alloca %struct.dccg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fixed31_32, align 4
  %13 = alloca %struct.fixed31_32, align 4
  %14 = alloca %struct.fixed31_32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.clk_mgr_internal* %1, %struct.clk_mgr_internal** %6, align 8
  store %struct.pp_smu_funcs* %2, %struct.pp_smu_funcs** %7, align 8
  store %struct.dccg* %3, %struct.dccg** %8, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %16 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %17 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store %struct.dc_context* %15, %struct.dc_context** %18, align 8
  %19 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %7, align 8
  %20 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %21 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %20, i32 0, i32 11
  store %struct.pp_smu_funcs* %19, %struct.pp_smu_funcs** %21, align 8
  %22 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %23 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store %struct.TYPE_5__* @dcn2_funcs, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %26 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %25, i32 0, i32 10
  store i32* @clk_mgr_regs, i32** %26, align 8
  %27 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %28 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %27, i32 0, i32 9
  store i32* @clk_mgr_shift, i32** %28, align 8
  %29 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %30 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %29, i32 0, i32 5
  store %struct.TYPE_6__* @clk_mgr_mask, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.dccg*, %struct.dccg** %8, align 8
  %32 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %33 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %32, i32 0, i32 8
  store %struct.dccg* %31, %struct.dccg** %33, align 8
  %34 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %35 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %37 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %39 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %38, i32 0, i32 0
  store i32 1000, i32* %39, align 8
  %40 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %41 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %43 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 700000, i32* %44, align 8
  %45 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %46 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %4
  %51 = load i32, i32* @dcn2_update_clocks_fpga, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dcn2_funcs, i32 0, i32 0), align 4
  %52 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %53 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %52, i32 0, i32 2
  store i32 3850000, i32* %53, align 8
  br label %113

54:                                               ; preds = %4
  %55 = load i32, i32* @CLK3_CLK2_DFS_CNTL, align 4
  %56 = call i8* @REG_READ(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dentist_get_divider_from_did(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @CLK3_CLK_PLL_REQ, align 4
  %61 = call i8* @REG_READ(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %65 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %63, %68
  %70 = call i32 @dc_fixpt_from_int(i32 %69)
  %71 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = bitcast %struct.fixed31_32* %12 to i8*
  %73 = bitcast %struct.fixed31_32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %76 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %75, i32 0, i32 5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %74, %79
  %81 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dc_fixpt_mul_int(i32 %85, i32 100000)
  %87 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = bitcast %struct.fixed31_32* %12 to i8*
  %89 = bitcast %struct.fixed31_32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  %90 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dc_fixpt_floor(i32 %91)
  %93 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %94 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %96 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %54
  %100 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %101 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %100, i32 0, i32 2
  store i32 3850000, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %54
  %103 = load i32, i32* @DENTIST_DIVIDER_RANGE_SCALE_FACTOR, align 4
  %104 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %105 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %107, %108
  %110 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %111 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %102, %50
  %114 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %115 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %114, i32 0, i32 3
  store i32 0, i32* %115, align 4
  %116 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %6, align 8
  %117 = call i32 @dce_clock_read_ss_info(%struct.clk_mgr_internal* %116)
  ret void
}

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i8* @REG_READ(i32) #1

declare dso_local i32 @dentist_get_divider_from_did(i32) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dce_clock_read_ss_info(%struct.clk_mgr_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
