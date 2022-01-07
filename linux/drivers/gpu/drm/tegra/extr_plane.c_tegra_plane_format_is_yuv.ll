; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_format_is_yuv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_format_is_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_plane_format_is_yuv(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 136, label %7
    i32 131, label %7
    i32 137, label %13
    i32 132, label %13
    i32 135, label %13
    i32 130, label %13
    i32 134, label %13
    i32 129, label %13
    i32 133, label %13
    i32 128, label %13
  ]

7:                                                ; preds = %2, %2
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  store i32 1, i32* %3, align 4
  br label %25

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %13
  store i32 1, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %18, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
