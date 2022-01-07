; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_odd_pixels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_odd_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repaper_epd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repaper_epd*, i32**, i32*, i32, i32*, i32)* @repaper_odd_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_odd_pixels(%struct.repaper_epd* %0, i32** %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.repaper_epd*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.repaper_epd* %0, %struct.repaper_epd** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %17 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %86, %6
  %21 = load i32, i32* %13, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %80

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 85
  store i32 %33, i32* %14, align 4
  store i32 255, i32* %15, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sub i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = xor i32 %42, %43
  %45 = and i32 %44, 85
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 %46, 1
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %36, %26
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %68 [
    i32 131, label %52
    i32 128, label %56
    i32 130, label %60
    i32 129, label %65
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %14, align 4
  %54 = xor i32 %53, 85
  %55 = or i32 170, %54
  store i32 %55, i32* %14, align 4
  br label %68

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  %58 = xor i32 %57, 85
  %59 = add nsw i32 85, %58
  store i32 %59, i32* %14, align 4
  br label %68

60:                                               ; preds = %50
  %61 = load i32, i32* %14, align 4
  %62 = xor i32 %61, 85
  %63 = shl i32 %62, 1
  %64 = or i32 85, %63
  store i32 %64, i32* %14, align 4
  br label %68

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  %67 = or i32 170, %66
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %50, %65, %60, %56, %52
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %73, 85
  %75 = or i32 %71, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %77, align 8
  store i32 %76, i32* %78, align 4
  br label %85

80:                                               ; preds = %23
  %81 = load i32, i32* %10, align 4
  %82 = load i32**, i32*** %8, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %82, align 8
  store i32 %81, i32* %83, align 4
  br label %85

85:                                               ; preds = %80, %68
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %13, align 4
  br label %20

89:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
