; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_even_pixels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_even_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repaper_epd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repaper_epd*, i32**, i32*, i32, i32*, i32)* @repaper_even_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_even_pixels(%struct.repaper_epd* %0, i32** %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.repaper_epd*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.repaper_epd* %0, %struct.repaper_epd** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %113, %6
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %23 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 8
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %116

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %107

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 170
  store i32 %36, i32* %14, align 4
  store i32 255, i32* %15, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %14, align 4
  %46 = xor i32 %44, %45
  %47 = and i32 %46, 170
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %39, %30
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %72 [
    i32 131, label %54
    i32 128, label %59
    i32 130, label %64
    i32 129, label %68
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %14, align 4
  %56 = xor i32 %55, 170
  %57 = ashr i32 %56, 1
  %58 = or i32 170, %57
  store i32 %58, i32* %14, align 4
  br label %72

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  %61 = xor i32 %60, 170
  %62 = ashr i32 %61, 1
  %63 = add nsw i32 85, %62
  store i32 %63, i32* %14, align 4
  br label %72

64:                                               ; preds = %52
  %65 = load i32, i32* %14, align 4
  %66 = xor i32 %65, 170
  %67 = or i32 85, %66
  store i32 %67, i32* %14, align 4
  br label %72

68:                                               ; preds = %52
  %69 = load i32, i32* %14, align 4
  %70 = ashr i32 %69, 1
  %71 = or i32 170, %70
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %52, %68, %64, %59, %54
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %77, 85
  %79 = or i32 %75, %78
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = ashr i32 %80, 6
  %82 = and i32 %81, 3
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %14, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 3
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %14, align 4
  %87 = ashr i32 %86, 2
  %88 = and i32 %87, 3
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %14, align 4
  %90 = ashr i32 %89, 0
  %91 = and i32 %90, 3
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %16, align 4
  %93 = shl i32 %92, 0
  %94 = load i32, i32* %17, align 4
  %95 = shl i32 %94, 2
  %96 = or i32 %93, %95
  %97 = load i32, i32* %18, align 4
  %98 = shl i32 %97, 4
  %99 = or i32 %96, %98
  %100 = load i32, i32* %19, align 4
  %101 = shl i32 %100, 6
  %102 = or i32 %99, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32**, i32*** %8, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %104, align 8
  store i32 %103, i32* %105, align 4
  br label %112

107:                                              ; preds = %27
  %108 = load i32, i32* %10, align 4
  %109 = load i32**, i32*** %8, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %109, align 8
  store i32 %108, i32* %110, align 4
  br label %112

112:                                              ; preds = %107, %72
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %20

116:                                              ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
