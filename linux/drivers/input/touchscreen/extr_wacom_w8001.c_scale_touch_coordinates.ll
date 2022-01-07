; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_scale_touch_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_scale_touch_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w8001*, i32*, i32*)* @scale_touch_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_touch_coordinates(%struct.w8001* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.w8001*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.w8001* %0, %struct.w8001** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.w8001*, %struct.w8001** %4, align 8
  %8 = getelementptr inbounds %struct.w8001, %struct.w8001* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.w8001*, %struct.w8001** %4, align 8
  %13 = getelementptr inbounds %struct.w8001, %struct.w8001* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.w8001*, %struct.w8001** %4, align 8
  %20 = getelementptr inbounds %struct.w8001, %struct.w8001* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  %23 = load %struct.w8001*, %struct.w8001** %4, align 8
  %24 = getelementptr inbounds %struct.w8001, %struct.w8001* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %22, %25
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %11, %3
  %29 = load %struct.w8001*, %struct.w8001** %4, align 8
  %30 = getelementptr inbounds %struct.w8001, %struct.w8001* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.w8001*, %struct.w8001** %4, align 8
  %35 = getelementptr inbounds %struct.w8001, %struct.w8001* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.w8001*, %struct.w8001** %4, align 8
  %42 = getelementptr inbounds %struct.w8001, %struct.w8001* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %40, %43
  %45 = load %struct.w8001*, %struct.w8001** %4, align 8
  %46 = getelementptr inbounds %struct.w8001, %struct.w8001* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = udiv i32 %44, %47
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %38, %33, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
