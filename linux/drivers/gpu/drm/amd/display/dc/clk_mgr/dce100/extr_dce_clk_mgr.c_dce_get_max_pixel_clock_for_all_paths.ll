; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_get_max_pixel_clock_for_all_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_get_max_pixel_clock_for_all_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_8__, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_get_max_pixel_clock_for_all_paths(%struct.dc_state* %0) #0 {
  %2 = alloca %struct.dc_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %68, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_PIPES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  %11 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %12 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i64 %16
  store %struct.pipe_ctx* %17, %struct.pipe_ctx** %5, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %68

23:                                               ; preds = %10
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %68

29:                                               ; preds = %23
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 10
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dc_is_dp_signal(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %53, %45
  br label %68

68:                                               ; preds = %67, %28, %22
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %6

71:                                               ; preds = %6
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
