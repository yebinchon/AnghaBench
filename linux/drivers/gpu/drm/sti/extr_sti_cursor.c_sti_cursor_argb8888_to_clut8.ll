; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_argb8888_to_clut8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_argb8888_to_clut8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_cursor = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_cursor*, i32*)* @sti_cursor_argb8888_to_clut8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_cursor_argb8888_to_clut8(%struct.sti_cursor* %0, i32* %1) #0 {
  %3 = alloca %struct.sti_cursor*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sti_cursor* %0, %struct.sti_cursor** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.sti_cursor*, %struct.sti_cursor** %3, align 8
  %13 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %65, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sti_cursor*, %struct.sti_cursor** %3, align 8
  %19 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %61, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.sti_cursor*, %struct.sti_cursor** %3, align 8
  %26 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 30
  %33 = and i32 %32, 3
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 22
  %37 = and i32 %36, 3
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 14
  %41 = and i32 %40, 3
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 6
  %45 = and i32 %44, 3
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 6
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 4
  %50 = or i32 %47, %49
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 2
  %53 = or i32 %50, %52
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  br label %61

61:                                               ; preds = %29
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %23

64:                                               ; preds = %23
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %16

68:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
