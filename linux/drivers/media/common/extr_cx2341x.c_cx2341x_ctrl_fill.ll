; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_SLIDER = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*)* @cx2341x_ctrl_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx2341x_ctrl_fill(i32 %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @cx2341x_get_name(i32 %17)
  %19 = load i8**, i8*** %10, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %33 [
    i32 131, label %22
    i32 134, label %22
    i32 137, label %22
    i32 129, label %22
    i32 133, label %22
    i32 140, label %27
  ]

22:                                               ; preds = %8, %8, %8, %8, %8
  %23 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %14, align 8
  store i32 0, i32* %26, align 4
  br label %36

27:                                               ; preds = %8
  %28 = load i32, i32* @V4L2_CTRL_TYPE_BOOLEAN, align 4
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %12, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %14, align 8
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 1, i32* %32, align 4
  br label %36

33:                                               ; preds = %8
  %34 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %27, %22
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %53 [
    i32 131, label %38
    i32 129, label %38
    i32 133, label %38
    i32 132, label %43
    i32 130, label %43
    i32 135, label %43
    i32 136, label %43
    i32 138, label %43
    i32 139, label %43
    i32 128, label %48
  ]

38:                                               ; preds = %36, %36, %36
  %39 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %40 = load i32*, i32** %16, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %53

43:                                               ; preds = %36, %36, %36, %36, %36, %36
  %44 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %36, %48, %43, %38
  ret void
}

declare dso_local i8* @cx2341x_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
