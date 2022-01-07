; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_all_pixels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_all_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repaper_epd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repaper_epd*, i8***, i8**, i8*, i8**, i32)* @repaper_all_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_all_pixels(%struct.repaper_epd* %0, i8*** %1, i8** %2, i8* %3, i8** %4, i32 %5) #0 {
  %7 = alloca %struct.repaper_epd*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.repaper_epd* %0, %struct.repaper_epd** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.repaper_epd*, %struct.repaper_epd** %7, align 8
  %17 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %101, %6
  %21 = load i32, i32* %13, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %20
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %91

26:                                               ; preds = %23
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @repaper_interleave_bits(i8* %32)
  store i32 %33, i32* %14, align 4
  store i32 65535, i32* %15, align 4
  %34 = load i8**, i8*** %11, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %26
  %37 = load i8**, i8*** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sub i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @repaper_interleave_bits(i8* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = xor i32 %44, %45
  %47 = and i32 %46, 21845
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = shl i32 %48, 1
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %36, %26
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %70 [
    i32 131, label %54
    i32 128, label %58
    i32 130, label %62
    i32 129, label %67
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %14, align 4
  %56 = xor i32 %55, 21845
  %57 = or i32 43690, %56
  store i32 %57, i32* %14, align 4
  br label %70

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  %60 = xor i32 %59, 21845
  %61 = add nsw i32 21845, %60
  store i32 %61, i32* %14, align 4
  br label %70

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = xor i32 %63, 21845
  %65 = shl i32 %64, 1
  %66 = or i32 21845, %65
  store i32 %66, i32* %14, align 4
  br label %70

67:                                               ; preds = %52
  %68 = load i32, i32* %14, align 4
  %69 = or i32 43690, %68
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %52, %67, %62, %58, %54
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %15, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %75, 21845
  %77 = or i32 %73, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = ashr i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8***, i8**** %8, align 8
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %82, align 8
  store i8* %81, i8** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8***, i8**** %8, align 8
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %88, align 8
  store i8* %87, i8** %89, align 8
  br label %100

91:                                               ; preds = %23
  %92 = load i8*, i8** %10, align 8
  %93 = load i8***, i8**** %8, align 8
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %93, align 8
  store i8* %92, i8** %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8***, i8**** %8, align 8
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %97, align 8
  store i8* %96, i8** %98, align 8
  br label %100

100:                                              ; preds = %91, %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %13, align 4
  br label %20

104:                                              ; preds = %20
  ret void
}

declare dso_local i32 @repaper_interleave_bits(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
