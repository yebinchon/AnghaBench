; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/extr_clk_mgr.c_dc_clk_mgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/extr_clk_mgr.c_dc_clk_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { i32 }
%struct.dc_context = type { %struct.hw_asic_id }
%struct.hw_asic_id = type { i32, i32 }
%struct.pp_smu_funcs = type { i32 }
%struct.dccg = type { i32 }
%struct.clk_mgr_internal = type { %struct.clk_mgr }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_mgr* @dc_clk_mgr_create(%struct.dc_context* %0, %struct.pp_smu_funcs* %1, %struct.dccg* %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.pp_smu_funcs*, align 8
  %7 = alloca %struct.dccg*, align 8
  %8 = alloca %struct.hw_asic_id, align 4
  %9 = alloca %struct.clk_mgr_internal*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.pp_smu_funcs* %1, %struct.pp_smu_funcs** %6, align 8
  store %struct.dccg* %2, %struct.dccg** %7, align 8
  %10 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %11 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %10, i32 0, i32 0
  %12 = bitcast %struct.hw_asic_id* %8 to i8*
  %13 = bitcast %struct.hw_asic_id* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.clk_mgr_internal* @kzalloc(i32 4, i32 %14)
  store %struct.clk_mgr_internal* %15, %struct.clk_mgr_internal** %9, align 8
  %16 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %17 = icmp eq %struct.clk_mgr_internal* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.clk_mgr* null, %struct.clk_mgr** %4, align 8
  br label %93

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %88 [
    i32 133, label %23
    i32 131, label %23
    i32 132, label %27
    i32 128, label %31
    i32 134, label %74
  ]

23:                                               ; preds = %20, %20
  %24 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %25 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %26 = call i32 @dce_clk_mgr_construct(%struct.dc_context* %24, %struct.clk_mgr_internal* %25)
  br label %90

27:                                               ; preds = %20
  %28 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %29 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %30 = call i32 @dce110_clk_mgr_construct(%struct.dc_context* %28, %struct.clk_mgr_internal* %29)
  br label %90

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ASIC_REV_IS_TONGA_P(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ASIC_REV_IS_FIJI_P(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %31
  %42 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %43 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %44 = call i32 @dce_clk_mgr_construct(%struct.dc_context* %42, %struct.clk_mgr_internal* %43)
  br label %90

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ASIC_REV_IS_POLARIS10_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ASIC_REV_IS_POLARIS11_M(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ASIC_REV_IS_POLARIS12_V(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %50, %45
  %61 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %62 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %63 = call i32 @dce112_clk_mgr_construct(%struct.dc_context* %61, %struct.clk_mgr_internal* %62)
  br label %90

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ASIC_REV_IS_VEGAM(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %71 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %72 = call i32 @dce112_clk_mgr_construct(%struct.dc_context* %70, %struct.clk_mgr_internal* %71)
  br label %90

73:                                               ; preds = %64
  br label %90

74:                                               ; preds = %20
  %75 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ASICREV_IS_VEGA20_P(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %81 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %82 = call i32 @dce121_clk_mgr_construct(%struct.dc_context* %80, %struct.clk_mgr_internal* %81)
  br label %87

83:                                               ; preds = %74
  %84 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %85 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %86 = call i32 @dce120_clk_mgr_construct(%struct.dc_context* %84, %struct.clk_mgr_internal* %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %90

88:                                               ; preds = %20
  %89 = call i32 @ASSERT(i32 0)
  br label %90

90:                                               ; preds = %88, %87, %73, %69, %60, %41, %27, %23
  %91 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %9, align 8
  %92 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %91, i32 0, i32 0
  store %struct.clk_mgr* %92, %struct.clk_mgr** %4, align 8
  br label %93

93:                                               ; preds = %90, %18
  %94 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  ret %struct.clk_mgr* %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.clk_mgr_internal* @kzalloc(i32, i32) #2

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #2

declare dso_local i32 @dce_clk_mgr_construct(%struct.dc_context*, %struct.clk_mgr_internal*) #2

declare dso_local i32 @dce110_clk_mgr_construct(%struct.dc_context*, %struct.clk_mgr_internal*) #2

declare dso_local i32 @ASIC_REV_IS_TONGA_P(i32) #2

declare dso_local i32 @ASIC_REV_IS_FIJI_P(i32) #2

declare dso_local i32 @ASIC_REV_IS_POLARIS10_P(i32) #2

declare dso_local i32 @ASIC_REV_IS_POLARIS11_M(i32) #2

declare dso_local i32 @ASIC_REV_IS_POLARIS12_V(i32) #2

declare dso_local i32 @dce112_clk_mgr_construct(%struct.dc_context*, %struct.clk_mgr_internal*) #2

declare dso_local i32 @ASIC_REV_IS_VEGAM(i32) #2

declare dso_local i32 @ASICREV_IS_VEGA20_P(i32) #2

declare dso_local i32 @dce121_clk_mgr_construct(%struct.dc_context*, %struct.clk_mgr_internal*) #2

declare dso_local i32 @dce120_clk_mgr_construct(%struct.dc_context*, %struct.clk_mgr_internal*) #2

declare dso_local i32 @ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
