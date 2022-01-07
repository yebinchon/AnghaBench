; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce110/extr_dce110_clk_mgr.c_dce110_fill_display_configs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce110/extr_dce110_clk_mgr.c_dce110_fill_display_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32, %struct.TYPE_12__, %struct.dc_stream_state** }
%struct.TYPE_12__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_14__, %struct.dc_stream_state* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_11__, i32, %struct.TYPE_20__*, %struct.TYPE_15__, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.dm_pp_display_configuration = type { i32, %struct.dm_pp_single_disp_config* }
%struct.dm_pp_single_disp_config = type { i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_fill_display_configs(%struct.dc_state* %0, %struct.dm_pp_display_configuration* %1) #0 {
  %3 = alloca %struct.dc_state*, align 8
  %4 = alloca %struct.dm_pp_display_configuration*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca %struct.dm_pp_single_disp_config*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %3, align 8
  store %struct.dm_pp_display_configuration* %1, %struct.dm_pp_display_configuration** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %179, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %14 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %182

17:                                               ; preds = %11
  %18 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %19 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %18, i32 0, i32 2
  %20 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %20, i64 %22
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %23, align 8
  store %struct.dc_stream_state* %24, %struct.dc_stream_state** %8, align 8
  %25 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %26 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %25, i32 0, i32 1
  %27 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %27, i64 %29
  store %struct.dm_pp_single_disp_config* %30, %struct.dm_pp_single_disp_config** %9, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %10, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %56, %17
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MAX_PIPES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %37 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %38 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i64 %42
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 1
  %45 = load %struct.dc_stream_state*, %struct.dc_stream_state** %44, align 8
  %46 = icmp eq %struct.dc_stream_state* %36, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %49 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i64 %53
  store %struct.pipe_ctx* %54, %struct.pipe_ctx** %10, align 8
  br label %59

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %31

59:                                               ; preds = %47, %31
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %61 = icmp ne %struct.pipe_ctx* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %65 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %179

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 1
  %74 = load %struct.dc_stream_state*, %struct.dc_stream_state** %73, align 8
  %75 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %78 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %80 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %86 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  %87 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %88 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %92 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %94 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %98 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %100 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %99, i32 0, i32 2
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %106 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %108 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %107, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %115 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %117 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %123 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 4
  %125 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %126 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %125, i32 0, i32 2
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %132 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %135 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %134, i32 0, i32 2
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %141 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  %143 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %144 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %147 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %149 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %151, 100
  %153 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %154 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %156 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %160 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %164 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %167 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sdiv i32 %169, 2
  %171 = add nsw i32 %165, %170
  %172 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %173 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sdiv i32 %171, %175
  %177 = load %struct.dm_pp_single_disp_config*, %struct.dm_pp_single_disp_config** %9, align 8
  %178 = getelementptr inbounds %struct.dm_pp_single_disp_config, %struct.dm_pp_single_disp_config* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %69, %68
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %11

182:                                              ; preds = %11
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %4, align 8
  %185 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
