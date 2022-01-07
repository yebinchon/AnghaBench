; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.js_corr = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.js_corr*)* @joydev_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joydev_correct(i32 %0, %struct.js_corr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.js_corr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.js_corr* %1, %struct.js_corr** %5, align 8
  %6 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %7 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %61 [
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %2
  br label %62

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %13 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %11, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %21 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %42

27:                                               ; preds = %18
  %28 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %29 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %35 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %33, %38
  %40 = mul nsw i32 %32, %39
  %41 = ashr i32 %40, 14
  br label %42

42:                                               ; preds = %27, %26
  %43 = phi i32 [ 0, %26 ], [ %41, %27 ]
  br label %59

44:                                               ; preds = %10
  %45 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %46 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.js_corr*, %struct.js_corr** %5, align 8
  %52 = getelementptr inbounds %struct.js_corr, %struct.js_corr* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %50, %55
  %57 = mul nsw i32 %49, %56
  %58 = ashr i32 %57, 14
  br label %59

59:                                               ; preds = %44, %42
  %60 = phi i32 [ %43, %42 ], [ %58, %44 ]
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

62:                                               ; preds = %59, %9
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @clamp(i32 %63, i32 -32767, i32 32767)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %61
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
