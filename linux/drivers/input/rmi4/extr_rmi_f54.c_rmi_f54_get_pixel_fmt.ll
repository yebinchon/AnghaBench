; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_get_pixel_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_get_pixel_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_TCH_FMT_DELTA_TD08 = common dso_local global i32 0, align 4
@V4L2_TCH_FMT_DELTA_TD16 = common dso_local global i32 0, align 4
@V4L2_TCH_FMT_TU16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @rmi_f54_get_pixel_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_get_pixel_fmt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %19 [
    i32 134, label %7
    i32 135, label %10
    i32 130, label %13
    i32 128, label %13
    i32 133, label %13
    i32 132, label %13
    i32 129, label %16
    i32 131, label %16
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @V4L2_TCH_FMT_DELTA_TD08, align 4
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @V4L2_TCH_FMT_DELTA_TD16, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  br label %19

13:                                               ; preds = %2, %2, %2, %2
  %14 = load i32, i32* @V4L2_TCH_FMT_TU16, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %19

16:                                               ; preds = %2, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %2, %16, %13, %10, %7
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
