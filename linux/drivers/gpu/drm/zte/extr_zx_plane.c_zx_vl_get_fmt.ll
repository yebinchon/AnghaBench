; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_vl_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_vl_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VL_FMT_YUV420 = common dso_local global i32 0, align 4
@VL_YUV420_PLANAR = common dso_local global i32 0, align 4
@VL_YUV422_YUYV = common dso_local global i32 0, align 4
@VL_FMT_YUV422 = common dso_local global i32 0, align 4
@VL_YUV422_YVYU = common dso_local global i32 0, align 4
@VL_YUV422_UYVY = common dso_local global i32 0, align 4
@VL_YUV422_VYUY = common dso_local global i32 0, align 4
@VL_FMT_YUV444_8BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid pixel format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zx_vl_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vl_get_fmt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 134, label %5
    i32 131, label %7
    i32 129, label %11
    i32 128, label %15
    i32 133, label %19
    i32 132, label %23
    i32 130, label %27
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @VL_FMT_YUV420, align 4
  store i32 %6, i32* %2, align 4
  br label %34

7:                                                ; preds = %1
  %8 = load i32, i32* @VL_YUV420_PLANAR, align 4
  %9 = load i32, i32* @VL_FMT_YUV420, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load i32, i32* @VL_YUV422_YUYV, align 4
  %13 = load i32, i32* @VL_FMT_YUV422, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* @VL_YUV422_YVYU, align 4
  %17 = load i32, i32* @VL_FMT_YUV422, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* @VL_YUV422_UYVY, align 4
  %21 = load i32, i32* @VL_FMT_YUV422, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load i32, i32* @VL_YUV422_VYUY, align 4
  %25 = load i32, i32* @VL_FMT_YUV422, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @VL_FMT_YUV444_8BIT, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %27, %23, %19, %15, %11, %7, %5
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
