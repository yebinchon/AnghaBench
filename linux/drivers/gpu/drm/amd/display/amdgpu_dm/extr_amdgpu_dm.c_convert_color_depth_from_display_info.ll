; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_convert_color_depth_from_display_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_convert_color_depth_from_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_connector_state*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector_state = type { i32 }

@COLOR_DEPTH_888 = common dso_local global i32 0, align 4
@COLOR_DEPTH_666 = common dso_local global i32 0, align 4
@COLOR_DEPTH_101010 = common dso_local global i32 0, align 4
@COLOR_DEPTH_121212 = common dso_local global i32 0, align 4
@COLOR_DEPTH_141414 = common dso_local global i32 0, align 4
@COLOR_DEPTH_161616 = common dso_local global i32 0, align 4
@COLOR_DEPTH_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_connector_state*)* @convert_color_depth_from_display_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_color_depth_from_display_info(%struct.drm_connector* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 8, %15 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %19 = icmp ne %struct.drm_connector_state* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %22, align 8
  store %struct.drm_connector_state* %23, %struct.drm_connector_state** %5, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %26 = icmp ne %struct.drm_connector_state* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @min(i32 %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %53 [
    i32 0, label %39
    i32 6, label %41
    i32 8, label %43
    i32 10, label %45
    i32 12, label %47
    i32 14, label %49
    i32 16, label %51
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @COLOR_DEPTH_888, align 4
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %37
  %42 = load i32, i32* @COLOR_DEPTH_666, align 4
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* @COLOR_DEPTH_888, align 4
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %37
  %46 = load i32, i32* @COLOR_DEPTH_101010, align 4
  store i32 %46, i32* %3, align 4
  br label %55

47:                                               ; preds = %37
  %48 = load i32, i32* @COLOR_DEPTH_121212, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* @COLOR_DEPTH_141414, align 4
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %37
  %52 = load i32, i32* @COLOR_DEPTH_161616, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @COLOR_DEPTH_UNDEFINED, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %51, %49, %47, %45, %43, %41, %39
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
