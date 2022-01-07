; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_get_writeback_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_get_writeback_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_drm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.malidp_hw_regmap }
%struct.malidp_hw_regmap = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SE_MEMWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.malidp_drm*, i32*)* @get_writeback_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_writeback_formats(%struct.malidp_drm* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.malidp_hw_regmap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.malidp_drm* %0, %struct.malidp_drm** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %11 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.malidp_hw_regmap* %15, %struct.malidp_hw_regmap** %6, align 8
  %16 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %17 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kcalloc(i32 %18, i32 4, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %65

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %58, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %28 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %33 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SE_MEMWRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load %struct.malidp_hw_regmap*, %struct.malidp_hw_regmap** %6, align 8
  %45 = getelementptr inbounds %struct.malidp_hw_regmap, %struct.malidp_hw_regmap* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %43, %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %7, align 8
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %61, %23
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
