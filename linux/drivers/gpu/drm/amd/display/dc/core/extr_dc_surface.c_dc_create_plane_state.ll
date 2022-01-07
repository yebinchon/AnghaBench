; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_surface.c_dc_create_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_surface.c_dc_create_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_plane_state = type { i32 }
%struct.dc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_plane_state* @dc_create_plane_state(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc_plane_state*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  %6 = load %struct.dc*, %struct.dc** %3, align 8
  store %struct.dc* %6, %struct.dc** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dc_plane_state* @kvzalloc(i32 4, i32 %7)
  store %struct.dc_plane_state* %8, %struct.dc_plane_state** %5, align 8
  %9 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %10 = icmp eq %struct.dc_plane_state* null, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.dc_plane_state* null, %struct.dc_plane_state** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %13, i32 0, i32 0
  %15 = call i32 @kref_init(i32* %14)
  %16 = load %struct.dc*, %struct.dc** %4, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %20 = call i32 @construct(i32 %18, %struct.dc_plane_state* %19)
  %21 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  store %struct.dc_plane_state* %21, %struct.dc_plane_state** %2, align 8
  br label %22

22:                                               ; preds = %12, %11
  %23 = load %struct.dc_plane_state*, %struct.dc_plane_state** %2, align 8
  ret %struct.dc_plane_state* %23
}

declare dso_local %struct.dc_plane_state* @kvzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @construct(i32, %struct.dc_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
