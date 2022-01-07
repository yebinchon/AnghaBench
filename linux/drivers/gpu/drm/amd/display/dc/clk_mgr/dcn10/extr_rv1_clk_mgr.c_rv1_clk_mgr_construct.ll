; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_rv1_clk_mgr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_rv1_clk_mgr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.dc_bios*, %struct.TYPE_5__* }
%struct.dc_bios = type { %struct.TYPE_8__*, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.dc_debug_options }
%struct.dc_debug_options = type { i32 }
%struct.clk_mgr_internal = type { i32, i32, i32, i32, %struct.TYPE_6__, i64, i64, i32*, %struct.pp_smu_funcs* }
%struct.TYPE_6__ = type { i32, i32*, %struct.dc_context* }
%struct.pp_smu_funcs = type { i32 }

@rv1_clk_funcs = common dso_local global i32 0, align 4
@rv1_clk_internal_funcs = common dso_local global i32 0, align 4
@DFS_BYPASS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv1_clk_mgr_construct(%struct.dc_context* %0, %struct.clk_mgr_internal* %1, %struct.pp_smu_funcs* %2) #0 {
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.clk_mgr_internal*, align 8
  %6 = alloca %struct.pp_smu_funcs*, align 8
  %7 = alloca %struct.dc_debug_options*, align 8
  %8 = alloca %struct.dc_bios*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.clk_mgr_internal* %1, %struct.clk_mgr_internal** %5, align 8
  store %struct.pp_smu_funcs* %2, %struct.pp_smu_funcs** %6, align 8
  %9 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %10 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.dc_debug_options* %12, %struct.dc_debug_options** %7, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %14 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %13, i32 0, i32 0
  %15 = load %struct.dc_bios*, %struct.dc_bios** %14, align 8
  store %struct.dc_bios* %15, %struct.dc_bios** %8, align 8
  %16 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %17 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %18 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store %struct.dc_context* %16, %struct.dc_context** %19, align 8
  %20 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %6, align 8
  %21 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %22 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %21, i32 0, i32 8
  store %struct.pp_smu_funcs* %20, %struct.pp_smu_funcs** %22, align 8
  %23 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %24 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32* @rv1_clk_funcs, i32** %25, align 8
  %26 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %27 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %26, i32 0, i32 7
  store i32* @rv1_clk_internal_funcs, i32** %27, align 8
  %28 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %29 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %31 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %33 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %32, i32 0, i32 0
  store i32 1000, i32* %33, align 8
  %34 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %35 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %37 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 600000, i32* %38, align 8
  %39 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %40 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %3
  %44 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %45 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %50 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %43, %3
  %52 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %53 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %58 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %63 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %67 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %69 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %74 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %73, i32 0, i32 2
  store i32 3600000, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %61
  br label %76

76:                                               ; preds = %75, %56, %51
  %77 = load %struct.dc_debug_options*, %struct.dc_debug_options** %7, align 8
  %78 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %76
  %82 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %83 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %88 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DFS_BYPASS_ENABLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %97 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %98, %81, %76
  %100 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %101 = call i32 @dce_clock_read_ss_info(%struct.clk_mgr_internal* %100)
  ret void
}

declare dso_local i32 @dce_clock_read_ss_info(%struct.clk_mgr_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
