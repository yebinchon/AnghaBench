; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { %struct.tegra_display_hub* }
%struct.tegra_display_hub = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.tegra_display_hub_state = type { i64, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to set rate of %pC to %lu Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to set parent of %pC to %pC: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_display_hub_atomic_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.tegra_drm*, align 8
  %6 = alloca %struct.tegra_display_hub*, align 8
  %7 = alloca %struct.tegra_display_hub_state*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.tegra_drm*, %struct.tegra_drm** %11, align 8
  store %struct.tegra_drm* %12, %struct.tegra_drm** %5, align 8
  %13 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %13, i32 0, i32 0
  %15 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %14, align 8
  store %struct.tegra_display_hub* %15, %struct.tegra_display_hub** %6, align 8
  %16 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.tegra_display_hub_state* @to_tegra_display_hub_state(i32 %23)
  store %struct.tegra_display_hub_state* %24, %struct.tegra_display_hub_state** %7, align 8
  %25 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %26 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %2
  %30 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %31 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %34 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_set_rate(i64 %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %42 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %46 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %48)
  br label %50

50:                                               ; preds = %39, %29
  %51 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %6, align 8
  %52 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %55 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @clk_set_parent(i32 %53, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %8, align 8
  %62 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %66 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %50
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %73 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.tegra_display_hub_state*, %struct.tegra_display_hub_state** %7, align 8
  %78 = getelementptr inbounds %struct.tegra_display_hub_state, %struct.tegra_display_hub_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @tegra_display_hub_update(i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  ret void
}

declare dso_local %struct.tegra_display_hub_state* @to_tegra_display_hub_state(i32) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i32 @clk_set_parent(i32, i64) #1

declare dso_local i32 @tegra_display_hub_update(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
