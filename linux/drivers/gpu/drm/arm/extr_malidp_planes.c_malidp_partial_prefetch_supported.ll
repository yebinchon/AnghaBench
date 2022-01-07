; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_partial_prefetch_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_partial_prefetch_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_SPARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @malidp_partial_prefetch_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_partial_prefetch_supported(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %12 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %10, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DRM_FORMAT_MOD_ARM_AFBC(i32 0)
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AFBC_FORMAT_MOD_SPARSE, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %50 [
    i32 146, label %29
    i32 136, label %29
    i32 142, label %29
    i32 145, label %29
    i32 134, label %29
    i32 141, label %29
    i32 130, label %29
    i32 131, label %29
    i32 133, label %29
    i32 140, label %29
    i32 137, label %29
    i32 135, label %29
    i32 138, label %29
    i32 148, label %30
    i32 147, label %30
    i32 149, label %30
    i32 144, label %30
    i32 143, label %44
    i32 128, label %49
    i32 132, label %49
    i32 139, label %49
    i32 129, label %49
  ]

29:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  store i32 1, i32* %4, align 4
  br label %51

30:                                               ; preds = %21, %21, %21, %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i1 [ true, %30 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %21
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %21, %21, %21, %21
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %44, %41, %29, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @DRM_FORMAT_MOD_ARM_AFBC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
