; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_surface.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_surface.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_9__*, %struct.dc_context* }
%struct.TYPE_8__ = type { %struct.dc_context*, i8* }
%struct.TYPE_10__ = type { %struct.dc_context* }
%struct.TYPE_7__ = type { %struct.dc_context*, i8* }
%struct.TYPE_6__ = type { %struct.dc_context*, i8* }
%struct.TYPE_9__ = type { i32 }

@TF_TYPE_BYPASS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, %struct.dc_plane_state*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct(%struct.dc_context* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %4, align 8
  %5 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %6 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %6, i32 0, i32 5
  store %struct.dc_context* %5, %struct.dc_context** %7, align 8
  %8 = call %struct.TYPE_9__* (...) @dc_create_gamma()
  %9 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %9, i32 0, i32 4
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %10, align 8
  %11 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %12 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %11, i32 0, i32 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %16, i32 0, i32 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = call i8* (...) @dc_create_transfer_func()
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  %23 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %24 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %23, i32 0, i32 3
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load i8*, i8** @TF_TYPE_BYPASS, align 8
  %31 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %32 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i8* %30, i8** %34, align 8
  %35 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %36 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %37 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.dc_context* %35, %struct.dc_context** %39, align 8
  br label %40

40:                                               ; preds = %29, %20
  ret void
}

declare dso_local %struct.TYPE_9__* @dc_create_gamma(...) #1

declare dso_local i8* @dc_create_transfer_func(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
