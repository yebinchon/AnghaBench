; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_hwmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_hwmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_plane_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_du_plane_state*)* @rcar_du_plane_hwmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_plane_hwmask(%struct.rcar_du_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_du_plane_state*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_du_plane_state* %0, %struct.rcar_du_plane_state** %3, align 8
  %5 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %6 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %12 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = srem i32 %25, 8
  %27 = shl i32 1, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %10
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
