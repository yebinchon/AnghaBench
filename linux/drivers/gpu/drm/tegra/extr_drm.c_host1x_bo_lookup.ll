; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_host1x_bo_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_host1x_bo_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_bo = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.tegra_bo = type { %struct.host1x_bo }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.host1x_bo* (%struct.drm_file*, i32)* @host1x_bo_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.host1x_bo* @host1x_bo_lookup(%struct.drm_file* %0, i32 %1) #0 {
  %3 = alloca %struct.host1x_bo*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.tegra_bo*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %8, i32 %9)
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** %6, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %12 = icmp ne %struct.drm_gem_object* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.host1x_bo* null, %struct.host1x_bo** %3, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %16 = call %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object* %15)
  store %struct.tegra_bo* %16, %struct.tegra_bo** %7, align 8
  %17 = load %struct.tegra_bo*, %struct.tegra_bo** %7, align 8
  %18 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %17, i32 0, i32 0
  store %struct.host1x_bo* %18, %struct.host1x_bo** %3, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.host1x_bo*, %struct.host1x_bo** %3, align 8
  ret %struct.host1x_bo* %20
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
