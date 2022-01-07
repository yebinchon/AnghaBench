; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_rotation_simplify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_rotation_simplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_MASK = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_rotation_simplify(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %12 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = xor i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DRM_MODE_REFLECT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @ffs(i32 %21)
  %23 = add nsw i32 %22, 1
  %24 = srem i32 %23, 4
  %25 = call i32 @BIT(i32 %24)
  %26 = or i32 %18, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %10, %2
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
