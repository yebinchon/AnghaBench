; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_create_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_create_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_display = type { i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NV50_DISP = common dso_local global i64 0, align 8
@GF110_DISP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"dithering mode\00", align 1
@dither_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"dithering depth\00", align 1
@dither_depth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"underscan\00", align 1
@underscan = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"underscan hborder\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"underscan vborder\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"vibrant hue\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"color vibrance\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nouveau_display_create_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_display_create_properties(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_display*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %5)
  store %struct.nouveau_display* %6, %struct.nouveau_display** %3, align 8
  %7 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NV50_DISP, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GF110_DISP, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %25

24:                                               ; preds = %15
  store i32 2, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %28 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @dither_mode, align 4
  %32 = call i32 @PROP_ENUM(i32 %29, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @dither_depth, align 4
  %38 = call i32 @PROP_ENUM(i32 %35, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %40 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @underscan, align 4
  %44 = call i32 @PROP_ENUM(i32 %41, i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = call i8* @drm_property_create_range(%struct.drm_device* %45, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 128)
  %47 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = call i8* @drm_property_create_range(%struct.drm_device* %49, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 128)
  %51 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %26
  br label %65

56:                                               ; preds = %26
  %57 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %58 = call i8* @drm_property_create_range(%struct.drm_device* %57, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 180)
  %59 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %60 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %62 = call i8* @drm_property_create_range(%struct.drm_device* %61, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 200)
  %63 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %64 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %56, %55
  ret void
}

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

declare dso_local i32 @PROP_ENUM(i32, i32, i8*, i32) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
