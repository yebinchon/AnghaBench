; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls037v7dw01.c_ls037v7dw01_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls037v7dw01.c_ls037v7dw01_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ls037v7dw01_panel = type { %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i8*, %struct.platform_device* }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"envdd\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get enable gpio\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get reset gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get mode[0] gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to get mode[1] gpio\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to get mode[2] gpio\0A\00", align 1
@ls037v7dw01_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ls037v7dw01_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls037v7dw01_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ls037v7dw01_panel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ls037v7dw01_panel* @devm_kzalloc(i32* %6, i32 72, i32 %7)
  store %struct.ls037v7dw01_panel* %8, %struct.ls037v7dw01_panel** %4, align 8
  %9 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %10 = icmp ne %struct.ls037v7dw01_panel* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %154

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.ls037v7dw01_panel* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %20 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %19, i32 0, i32 7
  store %struct.platform_device* %18, %struct.platform_device** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i8* @devm_regulator_get(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %25 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %27 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %26, i32 0, i32 6
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %14
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %36 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %2, align 4
  br label %154

39:                                               ; preds = %14
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %43 = call i8* @devm_gpiod_get(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %45 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %47 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %56 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %154

59:                                               ; preds = %39
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %63 = call i8* @devm_gpiod_get(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %65 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %67 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %76 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %2, align 4
  br label %154

79:                                               ; preds = %59
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %83 = call i8* @devm_gpiod_get_index(i32* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %82)
  %84 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %85 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %87 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %79
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %95 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %96 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %2, align 4
  br label %154

99:                                               ; preds = %79
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %103 = call i8* @devm_gpiod_get_index(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 1, i32 %102)
  %104 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %105 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %107 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %115 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %116 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %2, align 4
  br label %154

119:                                              ; preds = %99
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %123 = call i8* @devm_gpiod_get_index(i32* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 2, i32 %122)
  %124 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %125 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %127 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %135 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %136 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @PTR_ERR(i8* %137)
  store i32 %138, i32* %2, align 4
  br label %154

139:                                              ; preds = %119
  %140 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %141 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %140, i32 0, i32 0
  %142 = call i32 @drm_panel_init(%struct.TYPE_3__* %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %146 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32* %144, i32** %147, align 8
  %148 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %149 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32* @ls037v7dw01_funcs, i32** %150, align 8
  %151 = load %struct.ls037v7dw01_panel*, %struct.ls037v7dw01_panel** %4, align 8
  %152 = getelementptr inbounds %struct.ls037v7dw01_panel, %struct.ls037v7dw01_panel* %151, i32 0, i32 0
  %153 = call i32 @drm_panel_add(%struct.TYPE_3__* %152)
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %139, %131, %111, %91, %71, %51, %31, %11
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.ls037v7dw01_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ls037v7dw01_panel*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get_index(i32*, i8*, i32, i32) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
