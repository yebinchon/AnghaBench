; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jdi_panel = type { %struct.TYPE_6__, %struct.TYPE_7__*, i8*, i8*, i8*, i8*, %struct.TYPE_8__*, i32* }
%struct.TYPE_6__ = type { %struct.device*, i32* }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { %struct.device }
%struct.TYPE_8__ = type { i32 }

@default_mode = common dso_local global i32 0, align 4
@regulator_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to init regulator, ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot get enable-gpio %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot get reset-gpios %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dcdc-en\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot get dcdc-en-gpio %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register backlight %d\0A\00", align 1
@jdi_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jdi_panel*)* @jdi_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdi_panel_add(%struct.jdi_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jdi_panel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jdi_panel* %0, %struct.jdi_panel** %3, align 8
  %7 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %8 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %12 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %11, i32 0, i32 7
  store i32* @default_mode, i32** %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %16 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %15, i32 0, i32 6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %17)
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load i32*, i32** @regulator_names, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %27 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %26, i32 0, i32 6
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %25, i32* %32, align 4
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %39 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %38, i32 0, i32 6
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %40)
  %42 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %43 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %42, i32 0, i32 6
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @devm_regulator_bulk_get(%struct.device* %37, i32 %41, %struct.TYPE_8__* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %152

53:                                               ; preds = %36
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %56 = call i8* @devm_gpiod_get(%struct.device* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %58 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %60 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %66 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %152

73:                                               ; preds = %53
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %76 = call i8* @devm_gpiod_get(%struct.device* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %78 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %80 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %86 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %152

93:                                               ; preds = %73
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %96 = call i8* @devm_gpiod_get(%struct.device* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %98 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %100 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %106 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %5, align 4
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %152

113:                                              ; preds = %93
  %114 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %115 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = call i8* @drm_panel_create_dsi_backlight(%struct.TYPE_7__* %116)
  %118 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %119 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %121 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %113
  %126 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %127 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %5, align 4
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %152

134:                                              ; preds = %113
  %135 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %136 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %135, i32 0, i32 0
  %137 = call i32 @drm_panel_init(%struct.TYPE_6__* %136)
  %138 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %139 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i32* @jdi_panel_funcs, i32** %140, align 8
  %141 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %142 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %146 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store %struct.device* %144, %struct.device** %147, align 8
  %148 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %149 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %148, i32 0, i32 0
  %150 = call i32 @drm_panel_add(%struct.TYPE_6__* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %134, %125, %104, %84, %64, %48
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @drm_panel_create_dsi_backlight(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
