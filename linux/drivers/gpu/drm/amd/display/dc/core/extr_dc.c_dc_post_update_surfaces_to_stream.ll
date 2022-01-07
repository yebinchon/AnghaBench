; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_post_update_surfaces_to_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_post_update_surfaces_to_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_7__, %struct.TYPE_5__*, i64, %struct.dc_state* }
%struct.TYPE_7__ = type { i32 (%struct.dc.0*, %struct.dc_state*)*, i32 (%struct.dc.1*, %struct.TYPE_8__*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_post_update_surfaces_to_stream(%struct.dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_state*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  %6 = load %struct.dc*, %struct.dc** %3, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 4
  %8 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  store %struct.dc_state* %8, %struct.dc_state** %5, align 8
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.dc*, %struct.dc** %3, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i32 1, i32* %2, align 4
  br label %91

19:                                               ; preds = %13
  %20 = load %struct.dc*, %struct.dc** %3, align 8
  %21 = call i32 @post_surface_trace(%struct.dc* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %77, %19
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.dc*, %struct.dc** %3, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %22
  %31 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %32 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %30
  %42 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %43 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %76

52:                                               ; preds = %41, %30
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %55 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %53, i32* %61, align 8
  %62 = load %struct.dc*, %struct.dc** %3, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32 (%struct.dc.1*, %struct.TYPE_8__*)*, i32 (%struct.dc.1*, %struct.TYPE_8__*)** %64, align 8
  %66 = load %struct.dc*, %struct.dc** %3, align 8
  %67 = bitcast %struct.dc* %66 to %struct.dc.1*
  %68 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %69 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = call i32 %65(%struct.dc.1* %67, %struct.TYPE_8__* %74)
  br label %76

76:                                               ; preds = %52, %41
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %22

80:                                               ; preds = %22
  %81 = load %struct.dc*, %struct.dc** %3, align 8
  %82 = getelementptr inbounds %struct.dc, %struct.dc* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.dc*, %struct.dc** %3, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dc.0*, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_state*)** %85, align 8
  %87 = load %struct.dc*, %struct.dc** %3, align 8
  %88 = bitcast %struct.dc* %87 to %struct.dc.0*
  %89 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %90 = call i32 %86(%struct.dc.0* %88, %struct.dc_state* %89)
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %80, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @post_surface_trace(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
