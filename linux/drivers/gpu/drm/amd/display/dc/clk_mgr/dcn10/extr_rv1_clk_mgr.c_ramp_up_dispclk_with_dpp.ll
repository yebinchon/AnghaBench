; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_ramp_up_dispclk_with_dpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn10/extr_rv1_clk_mgr.c_ramp_up_dispclk_with_dpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.clk_mgr_internal*)*, i32 (%struct.clk_mgr_internal*, i32)* }
%struct.dc = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_18__*, i32, i32)* }
%struct.TYPE_10__ = type { i32 }
%struct.dc_clocks = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr_internal*, %struct.dc*, %struct.dc_clocks*)* @ramp_up_dispclk_with_dpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ramp_up_dispclk_with_dpp(%struct.clk_mgr_internal* %0, %struct.dc* %1, %struct.dc_clocks* %2) #0 {
  %4 = alloca %struct.clk_mgr_internal*, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_clocks*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %4, align 8
  store %struct.dc* %1, %struct.dc** %5, align 8
  store %struct.dc_clocks* %2, %struct.dc_clocks** %6, align 8
  %11 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %12 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %13 = call i32 @rv1_determine_dppclk_threshold(%struct.clk_mgr_internal* %11, %struct.dc_clocks* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %15 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %18 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %23 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32 (%struct.clk_mgr_internal*, i32)*, i32 (%struct.clk_mgr_internal*, i32)** %25, align 8
  %27 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 %26(%struct.clk_mgr_internal* %27, i32 %28)
  %30 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %31 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32 (%struct.clk_mgr_internal*)*, i32 (%struct.clk_mgr_internal*)** %33, align 8
  %35 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %36 = call i32 %34(%struct.clk_mgr_internal* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %75, %3
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dc*, %struct.dc** %5, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %37
  %46 = load %struct.dc*, %struct.dc** %5, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i64 %53
  store %struct.pipe_ctx* %54, %struct.pipe_ctx** %10, align 8
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %75

60:                                               ; preds = %45
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_18__*, i32, i32)*, i32 (%struct.TYPE_18__*, i32, i32)** %67, align 8
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 %68(%struct.TYPE_18__* %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %60, %59
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %37

78:                                               ; preds = %37
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %81 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  %85 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %86 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32 (%struct.clk_mgr_internal*, i32)*, i32 (%struct.clk_mgr_internal*, i32)** %88, align 8
  %90 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %91 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %92 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %89(%struct.clk_mgr_internal* %90, i32 %93)
  %95 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %96 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32 (%struct.clk_mgr_internal*)*, i32 (%struct.clk_mgr_internal*)** %98, align 8
  %100 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %101 = call i32 %99(%struct.clk_mgr_internal* %100)
  br label %102

102:                                              ; preds = %84, %78
  %103 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %104 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %107 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %111 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %114 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.dc_clocks*, %struct.dc_clocks** %6, align 8
  %118 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %4, align 8
  %121 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 8
  ret void
}

declare dso_local i32 @rv1_determine_dppclk_threshold(%struct.clk_mgr_internal*, %struct.dc_clocks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
