; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.ps8622_bridge = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to unprepare panel\0A\00", align 1
@PS8622_POWER_FALL_T16_MAX_US = common dso_local global i32 0, align 4
@PS8622_POWER_OFF_T17_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @ps8622_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps8622_post_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.ps8622_bridge*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.ps8622_bridge* @bridge_to_ps8622(%struct.drm_bridge* %4)
  store %struct.ps8622_bridge* %5, %struct.ps8622_bridge** %3, align 8
  %6 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %15 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpiod_set_value(i32 %16, i32 0)
  %18 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %19 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @drm_panel_unprepare(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

25:                                               ; preds = %11
  %26 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %27 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %32 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @regulator_disable(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @PS8622_POWER_FALL_T16_MAX_US, align 4
  %37 = load i32, i32* @PS8622_POWER_FALL_T16_MAX_US, align 4
  %38 = mul nsw i32 2, %37
  %39 = call i32 @usleep_range(i32 %36, i32 %38)
  %40 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %41 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gpiod_set_value(i32 %42, i32 0)
  %44 = load i32, i32* @PS8622_POWER_OFF_T17_MS, align 4
  %45 = call i32 @msleep(i32 %44)
  br label %46

46:                                               ; preds = %35, %23, %10
  ret void
}

declare dso_local %struct.ps8622_bridge* @bridge_to_ps8622(%struct.drm_bridge*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i64 @drm_panel_unprepare(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
