; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_cursor_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_cursor_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32 }
%struct.tegra_plane = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_cursor_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cursor_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.tegra_plane*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %9 = call %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane* %8)
  store %struct.tegra_plane* %9, %struct.tegra_plane** %6, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

15:                                               ; preds = %2
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 16
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24, %15
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %24
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %79

47:                                               ; preds = %36
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %49 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 32
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 64
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %59 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 128
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 256
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %79

70:                                               ; preds = %62, %57, %52, %47
  %71 = load %struct.tegra_plane*, %struct.tegra_plane** %6, align 8
  %72 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %73 = call i32 @tegra_plane_state_add(%struct.tegra_plane* %71, %struct.drm_plane_state* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %76, %67, %44, %33, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane*) #1

declare dso_local i32 @tegra_plane_state_add(%struct.tegra_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
