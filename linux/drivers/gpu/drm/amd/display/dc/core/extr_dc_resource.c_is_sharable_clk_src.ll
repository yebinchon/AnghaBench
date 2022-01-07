; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_is_sharable_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_is_sharable_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }

@SIGNAL_TYPE_VIRTUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.pipe_ctx*)* @is_sharable_clk_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sharable_clk_src(%struct.pipe_ctx* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

11:                                               ; preds = %2
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SIGNAL_TYPE_VIRTUAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %91

20:                                               ; preds = %11
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @dc_is_dp_signal(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %20
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @dc_is_dp_signal(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 @is_dp_and_hdmi_sharable(%struct.TYPE_5__* %39, %struct.TYPE_5__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36, %20
  store i32 0, i32* %3, align 4
  br label %91

46:                                               ; preds = %36, %28
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @dc_is_hdmi_signal(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @dc_is_dual_link_signal(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %91

63:                                               ; preds = %54, %46
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @dc_is_hdmi_signal(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @dc_is_dual_link_signal(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %91

80:                                               ; preds = %71, %63
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @resource_are_streams_timing_synchronizable(%struct.TYPE_5__* %83, %struct.TYPE_5__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %91

90:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %79, %62, %45, %19, %10
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @dc_is_dp_signal(i64) #1

declare dso_local i32 @is_dp_and_hdmi_sharable(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i64 @dc_is_hdmi_signal(i64) #1

declare dso_local i64 @dc_is_dual_link_signal(i64) #1

declare dso_local i32 @resource_are_streams_timing_synchronizable(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
