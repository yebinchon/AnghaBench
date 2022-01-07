; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_disable_dangling_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_disable_dangling_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_state*, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.dc.0*, %struct.dc_stream_state*, i32, %struct.dc_state*)* }
%struct.dc.0 = type opaque
%struct.dc_stream_state = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dc_state = type { i32, %struct.dc_stream_state**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dc_stream_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @disable_dangling_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_dangling_plane(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_state*, align 8
  %8 = alloca %struct.dc_state*, align 8
  %9 = alloca %struct.dc_stream_state*, align 8
  %10 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %11 = load %struct.dc*, %struct.dc** %3, align 8
  %12 = call %struct.dc_state* @dc_create_state(%struct.dc* %11)
  store %struct.dc_state* %12, %struct.dc_state** %7, align 8
  %13 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %14 = icmp eq %struct.dc_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.dc*, %struct.dc** %3, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 0
  %19 = load %struct.dc_state*, %struct.dc_state** %18, align 8
  %20 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %21 = call i32 @dc_resource_state_copy_construct(%struct.dc_state* %19, %struct.dc_state* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %84, %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.dc*, %struct.dc** %3, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %87

30:                                               ; preds = %22
  %31 = load %struct.dc*, %struct.dc** %3, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load %struct.dc_state*, %struct.dc_state** %32, align 8
  %34 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.dc_stream_state*, %struct.dc_stream_state** %40, align 8
  store %struct.dc_stream_state* %41, %struct.dc_stream_state** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %60, %30
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %45 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %50 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %51 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %50, i32 0, i32 1
  %52 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %52, i64 %54
  %56 = load %struct.dc_stream_state*, %struct.dc_stream_state** %55, align 8
  %57 = icmp eq %struct.dc_stream_state* %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %42

63:                                               ; preds = %58, %42
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %68 = icmp ne %struct.dc_stream_state* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.dc*, %struct.dc** %3, align 8
  %71 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %72 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %73 = call i32 @dc_rem_all_planes_for_stream(%struct.dc* %70, %struct.dc_stream_state* %71, %struct.dc_state* %72)
  %74 = load %struct.dc*, %struct.dc** %3, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (%struct.dc.0*, %struct.dc_stream_state*, i32, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_stream_state*, i32, %struct.dc_state*)** %76, align 8
  %78 = load %struct.dc*, %struct.dc** %3, align 8
  %79 = bitcast %struct.dc* %78 to %struct.dc.0*
  %80 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %81 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %82 = call i32 %77(%struct.dc.0* %79, %struct.dc_stream_state* %80, i32 0, %struct.dc_state* %81)
  br label %83

83:                                               ; preds = %69, %66, %63
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %22

87:                                               ; preds = %22
  %88 = load %struct.dc*, %struct.dc** %3, align 8
  %89 = getelementptr inbounds %struct.dc, %struct.dc* %88, i32 0, i32 0
  %90 = load %struct.dc_state*, %struct.dc_state** %89, align 8
  store %struct.dc_state* %90, %struct.dc_state** %8, align 8
  %91 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %92 = load %struct.dc*, %struct.dc** %3, align 8
  %93 = getelementptr inbounds %struct.dc, %struct.dc* %92, i32 0, i32 0
  store %struct.dc_state* %91, %struct.dc_state** %93, align 8
  %94 = load %struct.dc_state*, %struct.dc_state** %8, align 8
  %95 = call i32 @dc_release_state(%struct.dc_state* %94)
  br label %96

96:                                               ; preds = %87, %15
  ret void
}

declare dso_local %struct.dc_state* @dc_create_state(%struct.dc*) #1

declare dso_local i32 @dc_resource_state_copy_construct(%struct.dc_state*, %struct.dc_state*) #1

declare dso_local i32 @dc_rem_all_planes_for_stream(%struct.dc*, %struct.dc_stream_state*, %struct.dc_state*) #1

declare dso_local i32 @dc_release_state(%struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
