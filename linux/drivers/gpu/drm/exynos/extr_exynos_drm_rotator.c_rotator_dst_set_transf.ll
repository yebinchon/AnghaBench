; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_dst_set_transf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_dst_set_transf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rot_context = type { i32 }

@ROT_CONTROL = common dso_local global i32 0, align 4
@ROT_CONTROL_FLIP_MASK = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@ROT_CONTROL_FLIP_VERTICAL = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@ROT_CONTROL_FLIP_HORIZONTAL = common dso_local global i32 0, align 4
@ROT_CONTROL_ROT_MASK = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@ROT_CONTROL_ROT_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@ROT_CONTROL_ROT_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@ROT_CONTROL_ROT_270 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rot_context*, i32)* @rotator_dst_set_transf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotator_dst_set_transf(%struct.rot_context* %0, i32 %1) #0 {
  %3 = alloca %struct.rot_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rot_context* %0, %struct.rot_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ROT_CONTROL, align 4
  %7 = call i32 @rot_read(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @ROT_CONTROL_FLIP_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ROT_CONTROL_FLIP_VERTICAL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @ROT_CONTROL_FLIP_HORIZONTAL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @ROT_CONTROL_ROT_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @ROT_CONTROL_ROT_90, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %62

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @ROT_CONTROL_ROT_180, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @ROT_CONTROL_ROT_270, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ROT_CONTROL, align 4
  %65 = call i32 @rot_write(i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @rot_read(i32) #1

declare dso_local i32 @rot_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
