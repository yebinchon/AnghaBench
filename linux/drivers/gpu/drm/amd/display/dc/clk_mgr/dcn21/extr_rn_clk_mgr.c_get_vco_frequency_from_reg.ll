; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_get_vco_frequency_from_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_get_vco_frequency_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32 }
%struct.fixed31_32 = type { i32 }

@CLK1_CLK_PLL_REQ = common dso_local global i32 0, align 4
@FbMult_frac = common dso_local global i32 0, align 4
@FbMult_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_mgr_internal*)* @get_vco_frequency_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vco_frequency_from_reg(%struct.clk_mgr_internal* %0) #0 {
  %2 = alloca %struct.clk_mgr_internal*, align 8
  %3 = alloca %struct.fixed31_32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fixed31_32, align 4
  %7 = alloca %struct.fixed31_32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @CLK1_CLK_PLL_REQ, align 4
  %9 = load i32, i32* @FbMult_frac, align 4
  %10 = call i32 @REG_GET(i32 %8, i32 %9, i32* %4)
  %11 = load i32, i32* @CLK1_CLK_PLL_REQ, align 4
  %12 = load i32, i32* @FbMult_int, align 4
  %13 = call i32 @REG_GET(i32 %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dc_fixpt_from_int(i32 %14)
  %16 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.fixed31_32* %3 to i8*
  %18 = bitcast %struct.fixed31_32* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 16
  %21 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %25 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dc_fixpt_mul_int(i32 %28, i32 %26)
  %30 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.fixed31_32* %3 to i8*
  %32 = bitcast %struct.fixed31_32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dc_fixpt_floor(i32 %34)
  ret i32 %35
}

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
