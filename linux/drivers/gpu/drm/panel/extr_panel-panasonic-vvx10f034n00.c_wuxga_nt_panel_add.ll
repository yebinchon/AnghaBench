; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wuxga_nt_panel = type { %struct.TYPE_6__*, %struct.TYPE_7__, %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.device*, i32* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device_node = type { i32 }

@default_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@wuxga_nt_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wuxga_nt_panel*)* @wuxga_nt_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wuxga_nt_panel_add(%struct.wuxga_nt_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wuxga_nt_panel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.wuxga_nt_panel* %0, %struct.wuxga_nt_panel** %3, align 8
  %7 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %8 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %12 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %11, i32 0, i32 4
  store i32* @default_mode, i32** %12, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @devm_regulator_get(%struct.device* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %16 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %18 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %24 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @PTR_ERR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.device_node* @of_parse_phandle(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %31, %struct.device_node** %5, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = call %struct.TYPE_6__* @of_find_backlight_by_node(%struct.device_node* %35)
  %37 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %38 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %37, i32 0, i32 0
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %42 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @EPROBE_DEFER, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %51 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %50, i32 0, i32 1
  %52 = call i32 @drm_panel_init(%struct.TYPE_7__* %51)
  %53 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %54 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32* @wuxga_nt_panel_funcs, i32** %55, align 8
  %56 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %57 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %61 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store %struct.device* %59, %struct.device** %62, align 8
  %63 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %64 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %63, i32 0, i32 1
  %65 = call i32 @drm_panel_add(%struct.TYPE_7__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %70

69:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %83

70:                                               ; preds = %68
  %71 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %72 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %3, align 8
  %77 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @put_device(i32* %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %69, %45, %22
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
