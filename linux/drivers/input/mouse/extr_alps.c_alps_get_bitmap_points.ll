; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_bitmap_points.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_bitmap_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_bitmap_point = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.alps_bitmap_point*, %struct.alps_bitmap_point*, i32*)* @alps_get_bitmap_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_get_bitmap_points(i32 %0, %struct.alps_bitmap_point* %1, %struct.alps_bitmap_point* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.alps_bitmap_point*, align 8
  %7 = alloca %struct.alps_bitmap_point*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.alps_bitmap_point*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.alps_bitmap_point* %1, %struct.alps_bitmap_point** %6, align 8
  store %struct.alps_bitmap_point* %2, %struct.alps_bitmap_point** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.alps_bitmap_point*, %struct.alps_bitmap_point** %6, align 8
  store %struct.alps_bitmap_point* %13, %struct.alps_bitmap_point** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.alps_bitmap_point*, %struct.alps_bitmap_point** %9, align 8
  %28 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.alps_bitmap_point*, %struct.alps_bitmap_point** %9, align 8
  %30 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %22
  %35 = load %struct.alps_bitmap_point*, %struct.alps_bitmap_point** %9, align 8
  %36 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %45

39:                                               ; preds = %17
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load %struct.alps_bitmap_point*, %struct.alps_bitmap_point** %7, align 8
  store %struct.alps_bitmap_point* %43, %struct.alps_bitmap_point** %9, align 8
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = lshr i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

52:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
