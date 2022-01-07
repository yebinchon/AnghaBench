; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-arm-versatile.c_versatile_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-arm-versatile.c_versatile_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.versatile_panel_type = type { i64, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device* }
%struct.versatile_panel = type { %struct.TYPE_3__, %struct.regmap*, %struct.versatile_panel_type*, %struct.regmap*, %struct.device* }
%struct.TYPE_3__ = type { i32*, %struct.device* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"no parent for versatile panel\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"no regmap for versatile panel parent\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_CLCD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot access syscon regs\0A\00", align 1
@SYS_CLCD_CLCDID_MASK = common dso_local global i32 0, align 4
@versatile_panels = common dso_local global %struct.versatile_panel_type* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"no panel detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"detected: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"arm,versatile-ib2-syscon\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"panel mounted on IB2 daughterboard\0A\00", align 1
@versatile_panel_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @versatile_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_panel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.versatile_panel*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.versatile_panel_type*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %143

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.regmap* @syscon_node_to_regmap(i32 %27)
  store %struct.regmap* %28, %struct.regmap** %7, align 8
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = call i64 @IS_ERR(%struct.regmap* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.regmap* %35)
  store i32 %36, i32* %2, align 4
  br label %143

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.versatile_panel* @devm_kzalloc(%struct.device* %38, i32 48, i32 %39)
  store %struct.versatile_panel* %40, %struct.versatile_panel** %5, align 8
  %41 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %42 = icmp ne %struct.versatile_panel* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %143

46:                                               ; preds = %37
  %47 = load %struct.regmap*, %struct.regmap** %7, align 8
  %48 = load i32, i32* @SYS_CLCD, align 4
  %49 = call i32 @regmap_read(%struct.regmap* %47, i32 %48, i32* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %143

56:                                               ; preds = %46
  %57 = load i32, i32* @SYS_CLCD_CLCDID_MASK, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %80, %56
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** @versatile_panels, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.versatile_panel_type* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** @versatile_panels, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.versatile_panel_type, %struct.versatile_panel_type* %66, i64 %68
  store %struct.versatile_panel_type* %69, %struct.versatile_panel_type** %11, align 8
  %70 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** %11, align 8
  %71 = getelementptr inbounds %struct.versatile_panel_type, %struct.versatile_panel_type* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** %11, align 8
  %77 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %78 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %77, i32 0, i32 2
  store %struct.versatile_panel_type* %76, %struct.versatile_panel_type** %78, align 8
  br label %83

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %60

83:                                               ; preds = %75, %60
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** @versatile_panels, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.versatile_panel_type* %85)
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %143

93:                                               ; preds = %83
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %96 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %95, i32 0, i32 2
  %97 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** %96, align 8
  %98 = getelementptr inbounds %struct.versatile_panel_type, %struct.versatile_panel_type* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %103 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %102, i32 0, i32 4
  store %struct.device* %101, %struct.device** %103, align 8
  %104 = load %struct.regmap*, %struct.regmap** %7, align 8
  %105 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %106 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %105, i32 0, i32 3
  store %struct.regmap* %104, %struct.regmap** %106, align 8
  %107 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %108 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %107, i32 0, i32 2
  %109 = load %struct.versatile_panel_type*, %struct.versatile_panel_type** %108, align 8
  %110 = getelementptr inbounds %struct.versatile_panel_type, %struct.versatile_panel_type* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %93
  %114 = call %struct.regmap* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %115 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %116 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %115, i32 0, i32 1
  store %struct.regmap* %114, %struct.regmap** %116, align 8
  %117 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %118 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %117, i32 0, i32 1
  %119 = load %struct.regmap*, %struct.regmap** %118, align 8
  %120 = call i64 @IS_ERR(%struct.regmap* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %124 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %123, i32 0, i32 1
  store %struct.regmap* null, %struct.regmap** %124, align 8
  br label %128

125:                                              ; preds = %113
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %93
  %130 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %131 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %130, i32 0, i32 0
  %132 = call i32 @drm_panel_init(%struct.TYPE_3__* %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %135 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store %struct.device* %133, %struct.device** %136, align 8
  %137 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %138 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32* @versatile_panel_drm_funcs, i32** %139, align 8
  %140 = load %struct.versatile_panel*, %struct.versatile_panel** %5, align 8
  %141 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %140, i32 0, i32 0
  %142 = call i32 @drm_panel_add(%struct.TYPE_3__* %141)
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %129, %88, %52, %43, %32, %19
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.versatile_panel* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.versatile_panel_type*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
