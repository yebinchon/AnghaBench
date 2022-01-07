; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.truly_nt35597 = type { %struct.TYPE_5__, i8*, i8*, %struct.TYPE_6__*, %struct.nt35597_config*, %struct.device* }
%struct.TYPE_5__ = type { i32*, %struct.device* }
%struct.TYPE_6__ = type { i32 }
%struct.nt35597_config = type { i32 }
%struct.device = type { i32 }

@regulator_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot get reset gpio %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot get mode gpio %ld\0A\00", align 1
@truly_nt35597_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.truly_nt35597*)* @truly_nt35597_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_panel_add(%struct.truly_nt35597* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.truly_nt35597*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nt35597_config*, align 8
  store %struct.truly_nt35597* %0, %struct.truly_nt35597** %3, align 8
  %8 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %9 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %8, i32 0, i32 5
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %12 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %11, i32 0, i32 4
  %13 = load %struct.nt35597_config*, %struct.nt35597_config** %12, align 8
  store %struct.nt35597_config* %13, %struct.nt35597_config** %7, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %34, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %17 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load i32*, i32** @regulator_names, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %28 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %40 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %41)
  %43 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %44 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @devm_regulator_bulk_get(%struct.device* %38, i32 %42, %struct.TYPE_6__* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %113

51:                                               ; preds = %37
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %54 = call i8* @devm_gpiod_get(%struct.device* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %56 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %58 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %65 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  %68 = call i32 @DRM_DEV_ERROR(%struct.device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %70 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %2, align 4
  br label %113

73:                                               ; preds = %51
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %76 = call i8* @devm_gpiod_get(%struct.device* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %78 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %80 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %87 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  %90 = call i32 @DRM_DEV_ERROR(%struct.device* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %92 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %113

95:                                               ; preds = %73
  %96 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %97 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @gpiod_set_value(i8* %98, i32 0)
  %100 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %101 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %100, i32 0, i32 0
  %102 = call i32 @drm_panel_init(%struct.TYPE_5__* %101)
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %105 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store %struct.device* %103, %struct.device** %106, align 8
  %107 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %108 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32* @truly_nt35597_drm_funcs, i32** %109, align 8
  %110 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %111 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %110, i32 0, i32 0
  %112 = call i32 @drm_panel_add(%struct.TYPE_5__* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %95, %84, %62, %49
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpiod_set_value(i8*, i32) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
