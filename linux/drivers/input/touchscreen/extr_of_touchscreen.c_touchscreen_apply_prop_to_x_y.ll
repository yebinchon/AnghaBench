; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_of_touchscreen.c_touchscreen_apply_prop_to_x_y.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_of_touchscreen.c_touchscreen_apply_prop_to_x_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.touchscreen_properties = type { i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.touchscreen_properties*, i32*, i32*)* @touchscreen_apply_prop_to_x_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touchscreen_apply_prop_to_x_y(%struct.touchscreen_properties* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.touchscreen_properties*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.touchscreen_properties* %0, %struct.touchscreen_properties** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %8 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %13 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %14, %16
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %11, %3
  %20 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %21 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %26 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %27, %29
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %4, align 8
  %34 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @swap(i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
