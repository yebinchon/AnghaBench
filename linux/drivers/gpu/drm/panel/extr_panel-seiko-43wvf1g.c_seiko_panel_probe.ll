; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seiko_panel_desc = type { i32 }
%struct.device_node = type { i32 }
%struct.seiko_panel = type { i32, i32, %struct.TYPE_3__, i32, i8*, i8*, %struct.seiko_panel_desc* }
%struct.TYPE_3__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dvdd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@seiko_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seiko_panel_desc*)* @seiko_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seiko_panel_probe(%struct.device* %0, %struct.seiko_panel_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.seiko_panel_desc*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.seiko_panel*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.seiko_panel_desc* %1, %struct.seiko_panel_desc** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.seiko_panel* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.seiko_panel* %11, %struct.seiko_panel** %7, align 8
  %12 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %13 = icmp ne %struct.seiko_panel* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %19 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %21 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.seiko_panel_desc*, %struct.seiko_panel_desc** %5, align 8
  %23 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %24 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %23, i32 0, i32 6
  store %struct.seiko_panel_desc* %22, %struct.seiko_panel_desc** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i8* @devm_regulator_get(%struct.device* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %28 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %30 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %36 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %3, align 4
  br label %98

39:                                               ; preds = %17
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i8* @devm_regulator_get(%struct.device* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %43 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %45 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %51 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %3, align 4
  br label %98

54:                                               ; preds = %39
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.device_node* @of_parse_phandle(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %58, %struct.device_node** %6, align 8
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = icmp ne %struct.device_node* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i32 @of_find_backlight_by_node(%struct.device_node* %62)
  %64 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %65 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %69 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %98

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %54
  %77 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %78 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %77, i32 0, i32 2
  %79 = call i32 @drm_panel_init(%struct.TYPE_3__* %78)
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %82 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store %struct.device* %80, %struct.device** %83, align 8
  %84 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %85 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32* @seiko_panel_funcs, i32** %86, align 8
  %87 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %88 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %87, i32 0, i32 2
  %89 = call i32 @drm_panel_add(%struct.TYPE_3__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %98

94:                                               ; preds = %76
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %97 = call i32 @dev_set_drvdata(%struct.device* %95, %struct.seiko_panel* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %92, %72, %49, %34, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.seiko_panel* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.seiko_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
