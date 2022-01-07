; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.drm_plane* }
%struct.tegra_plane = type { i32 }
%struct.tegra_plane_state = type { %struct.TYPE_3__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @tegra_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.tegra_plane*, align 8
  %4 = alloca %struct.tegra_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = call %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane* %5)
  store %struct.tegra_plane* %6, %struct.tegra_plane** %3, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_3__* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @kfree(%struct.TYPE_3__* %19)
  %21 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.tegra_plane_state* @kzalloc(i32 16, i32 %23)
  store %struct.tegra_plane_state* %24, %struct.tegra_plane_state** %4, align 8
  %25 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %4, align 8
  %26 = icmp ne %struct.tegra_plane_state* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %16
  %28 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %28, i32 0, i32 0
  %30 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %30, i32 0, i32 0
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %33 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store %struct.drm_plane* %32, %struct.drm_plane** %36, align 8
  %37 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %48 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %51

51:                                               ; preds = %27, %16
  ret void
}

declare dso_local %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane*) #1

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local %struct.tegra_plane_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
