; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_needs_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_needs_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_plane_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_du_plane_state*, %struct.rcar_du_plane_state*)* @rcar_du_plane_needs_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_plane_needs_realloc(%struct.rcar_du_plane_state* %0, %struct.rcar_du_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_du_plane_state*, align 8
  %5 = alloca %struct.rcar_du_plane_state*, align 8
  store %struct.rcar_du_plane_state* %0, %struct.rcar_du_plane_state** %4, align 8
  store %struct.rcar_du_plane_state* %1, %struct.rcar_du_plane_state** %5, align 8
  %6 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %33

23:                                               ; preds = %10
  %24 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
