; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_bw_calcs_data_update_from_pplib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_bw_calcs_data_update_from_pplib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_2__*, i32, %struct.dm_pp_clock_levels }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dm_pp_clock_levels = type { i32*, i32, i32 }

@DM_PP_CLOCK_TYPE_ENGINE_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_DISPLAY_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_MEMORY_CLK = common dso_local global i32 0, align 4
@MEMORY_TYPE_MULTIPLIER_CZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @bw_calcs_data_update_from_pplib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bw_calcs_data_update_from_pplib(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dm_pp_clock_levels, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %4 = bitcast %struct.dm_pp_clock_levels* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = load %struct.dc*, %struct.dc** %2, align 8
  %6 = getelementptr inbounds %struct.dc, %struct.dc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DM_PP_CLOCK_TYPE_ENGINE_CLK, align 4
  %9 = call i32 @dm_pp_get_clock_levels_by_type(i32 %7, i32 %8, %struct.dm_pp_clock_levels* %3)
  %10 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @bw_frc_to_fixed(i32 %17, i32 1000)
  %19 = load %struct.dc*, %struct.dc** %2, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 13
  store i8* %18, i8** %22, align 8
  %23 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @bw_frc_to_fixed(i32 %30, i32 1000)
  %32 = load %struct.dc*, %struct.dc** %2, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 12
  store i8* %31, i8** %35, align 8
  %36 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  %41 = sdiv i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @bw_frc_to_fixed(i32 %44, i32 1000)
  %46 = load %struct.dc*, %struct.dc** %2, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 11
  store i8* %45, i8** %49, align 8
  %50 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 3
  %55 = sdiv i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @bw_frc_to_fixed(i32 %58, i32 1000)
  %60 = load %struct.dc*, %struct.dc** %2, align 8
  %61 = getelementptr inbounds %struct.dc, %struct.dc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 10
  store i8* %59, i8** %63, align 8
  %64 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 4
  %69 = sdiv i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @bw_frc_to_fixed(i32 %72, i32 1000)
  %74 = load %struct.dc*, %struct.dc** %2, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 9
  store i8* %73, i8** %77, align 8
  %78 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 5
  %83 = sdiv i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @bw_frc_to_fixed(i32 %86, i32 1000)
  %88 = load %struct.dc*, %struct.dc** %2, align 8
  %89 = getelementptr inbounds %struct.dc, %struct.dc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 8
  store i8* %87, i8** %91, align 8
  %92 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 6
  %97 = sdiv i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @bw_frc_to_fixed(i32 %100, i32 1000)
  %102 = load %struct.dc*, %struct.dc** %2, align 8
  %103 = getelementptr inbounds %struct.dc, %struct.dc* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 7
  store i8* %101, i8** %105, align 8
  %106 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @bw_frc_to_fixed(i32 %109, i32 1000)
  %111 = load %struct.dc*, %struct.dc** %2, align 8
  %112 = getelementptr inbounds %struct.dc, %struct.dc* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 6
  store i8* %110, i8** %114, align 8
  %115 = load %struct.dc*, %struct.dc** %2, align 8
  %116 = getelementptr inbounds %struct.dc, %struct.dc* %115, i32 0, i32 2
  %117 = bitcast %struct.dm_pp_clock_levels* %116 to i8*
  %118 = bitcast %struct.dm_pp_clock_levels* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 16, i1 false)
  %119 = load %struct.dc*, %struct.dc** %2, align 8
  %120 = getelementptr inbounds %struct.dc, %struct.dc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DM_PP_CLOCK_TYPE_DISPLAY_CLK, align 4
  %123 = call i32 @dm_pp_get_clock_levels_by_type(i32 %121, i32 %122, %struct.dm_pp_clock_levels* %3)
  %124 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @bw_frc_to_fixed(i32 %131, i32 1000)
  %133 = load %struct.dc*, %struct.dc** %2, align 8
  %134 = getelementptr inbounds %struct.dc, %struct.dc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  store i8* %132, i8** %136, align 8
  %137 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = ashr i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @bw_frc_to_fixed(i32 %144, i32 1000)
  %146 = load %struct.dc*, %struct.dc** %2, align 8
  %147 = getelementptr inbounds %struct.dc, %struct.dc* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  store i8* %145, i8** %149, align 8
  %150 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @bw_frc_to_fixed(i32 %153, i32 1000)
  %155 = load %struct.dc*, %struct.dc** %2, align 8
  %156 = getelementptr inbounds %struct.dc, %struct.dc* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  store i8* %154, i8** %158, align 8
  %159 = load %struct.dc*, %struct.dc** %2, align 8
  %160 = getelementptr inbounds %struct.dc, %struct.dc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DM_PP_CLOCK_TYPE_MEMORY_CLK, align 4
  %163 = call i32 @dm_pp_get_clock_levels_by_type(i32 %161, i32 %162, %struct.dm_pp_clock_levels* %3)
  %164 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  %169 = mul nsw i32 %167, %168
  %170 = call i8* @bw_frc_to_fixed(i32 %169, i32 1000)
  %171 = load %struct.dc*, %struct.dc** %2, align 8
  %172 = getelementptr inbounds %struct.dc, %struct.dc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  store i8* %170, i8** %174, align 8
  %175 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = ashr i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  %184 = mul nsw i32 %182, %183
  %185 = call i8* @bw_frc_to_fixed(i32 %184, i32 1000)
  %186 = load %struct.dc*, %struct.dc** %2, align 8
  %187 = getelementptr inbounds %struct.dc, %struct.dc* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i8* %185, i8** %189, align 8
  %190 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %3, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  %199 = mul nsw i32 %197, %198
  %200 = call i8* @bw_frc_to_fixed(i32 %199, i32 1000)
  %201 = load %struct.dc*, %struct.dc** %2, align 8
  %202 = getelementptr inbounds %struct.dc, %struct.dc* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  store i8* %200, i8** %204, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dm_pp_get_clock_levels_by_type(i32, i32, %struct.dm_pp_clock_levels*) #2

declare dso_local i8* @bw_frc_to_fixed(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
