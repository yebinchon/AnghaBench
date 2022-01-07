; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_versatile.c_pl111_versatile_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_versatile.c_pl111_versatile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.pl111_drm_dev_private = type { i32*, i32, i32, i32, i32 }
%struct.of_device_id = type { i64 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@versatile_clcd_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to initialize muxfpga driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"can't find the sysreg device, deferring\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"sysreg has not yet probed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no Versatile syscon regmap\0A\00", align 1
@versatile_syscon_map = common dso_local global %struct.regmap* null, align 8
@pl110_integrator = common dso_local global i32 0, align 4
@pl111_integrator_enable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"set up callbacks for Integrator PL110\0A\00", align 1
@pl110_versatile = common dso_local global i32 0, align 4
@pl111_versatile_enable = common dso_local global i32 0, align 4
@pl111_versatile_disable = common dso_local global i32 0, align 4
@CLCD_PL111_IENB = common dso_local global i32 0, align 4
@CLCD_PL111_CNTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"set up callbacks for Versatile PL110\0A\00", align 1
@pl111_realview = common dso_local global i32 0, align 4
@pl111_realview_clcd_enable = common dso_local global i32 0, align 4
@pl111_realview_clcd_disable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"set up callbacks for RealView PL111\0A\00", align 1
@pl111_vexpress = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"initializing Versatile Express PL111\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"unknown Versatile system controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pl111_versatile_init(%struct.device* %0, %struct.pl111_drm_dev_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pl111_drm_dev_private*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.platform_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pl111_drm_dev_private* %1, %struct.pl111_drm_dev_private** %5, align 8
  %12 = load i32, i32* @versatile_clcd_of_match, align 4
  %13 = call %struct.device_node* @of_find_matching_node_and_match(i32* null, i32 %12, %struct.of_device_id** %6)
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %8, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

17:                                               ; preds = %2
  %18 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %19 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %62

24:                                               ; preds = %17
  %25 = call i32 (...) @vexpress_muxfpga_init()
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %135

34:                                               ; preds = %24
  %35 = load %struct.device_node*, %struct.device_node** %8, align 8
  %36 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %35)
  store %struct.platform_device* %36, %struct.platform_device** %11, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %38 = icmp ne %struct.platform_device* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  %44 = load i32, i32* @EPROBE_DEFER, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %135

46:                                               ; preds = %34
  %47 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call %struct.regmap* @dev_get_drvdata(i32* %48)
  store %struct.regmap* %49, %struct.regmap** %9, align 8
  %50 = load %struct.regmap*, %struct.regmap** %9, align 8
  %51 = icmp ne %struct.regmap* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %56 = call i32 @platform_device_put(%struct.platform_device* %55)
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load i32, i32* @EPROBE_DEFER, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %135

61:                                               ; preds = %46
  br label %65

62:                                               ; preds = %17
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %63)
  store %struct.regmap* %64, %struct.regmap** %9, align 8
  br label %65

65:                                               ; preds = %62, %61
  %66 = load %struct.device_node*, %struct.device_node** %8, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load %struct.regmap*, %struct.regmap** %9, align 8
  %69 = call i64 @IS_ERR(%struct.regmap* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.regmap*, %struct.regmap** %9, align 8
  %75 = call i32 @PTR_ERR(%struct.regmap* %74)
  store i32 %75, i32* %3, align 4
  br label %135

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %131 [
    i32 135, label %78
    i32 129, label %87
    i32 134, label %105
    i32 133, label %105
    i32 132, label %105
    i32 131, label %105
    i32 130, label %105
    i32 128, label %117
  ]

78:                                               ; preds = %76
  %79 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %79, %struct.regmap** @versatile_syscon_map, align 8
  %80 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %81 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %80, i32 0, i32 0
  store i32* @pl110_integrator, i32** %81, align 8
  %82 = load i32, i32* @pl111_integrator_enable, align 4
  %83 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %84 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_info(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %134

87:                                               ; preds = %76
  %88 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %88, %struct.regmap** @versatile_syscon_map, align 8
  %89 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %90 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %89, i32 0, i32 0
  store i32* @pl110_versatile, i32** %90, align 8
  %91 = load i32, i32* @pl111_versatile_enable, align 4
  %92 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %93 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @pl111_versatile_disable, align 4
  %95 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %96 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @CLCD_PL111_IENB, align 4
  %98 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %99 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @CLCD_PL111_CNTL, align 4
  %101 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %102 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @dev_info(%struct.device* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %134

105:                                              ; preds = %76, %76, %76, %76, %76
  %106 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %106, %struct.regmap** @versatile_syscon_map, align 8
  %107 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %108 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %107, i32 0, i32 0
  store i32* @pl111_realview, i32** %108, align 8
  %109 = load i32, i32* @pl111_realview_clcd_enable, align 4
  %110 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %111 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @pl111_realview_clcd_disable, align 4
  %113 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %114 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_info(%struct.device* %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %134

117:                                              ; preds = %76
  %118 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %119 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %118, i32 0, i32 0
  store i32* @pl111_vexpress, i32** %119, align 8
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_info(%struct.device* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %124 = load %struct.regmap*, %struct.regmap** %9, align 8
  %125 = call i32 @pl111_vexpress_clcd_init(%struct.device* %122, %struct.pl111_drm_dev_private* %123, %struct.regmap* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %135

130:                                              ; preds = %117
  br label %134

131:                                              ; preds = %76
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = call i32 @dev_info(%struct.device* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %130, %105, %87, %78
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %128, %71, %52, %39, %28, %16
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.device_node* @of_find_matching_node_and_match(i32*, i32, %struct.of_device_id**) #1

declare dso_local i32 @vexpress_muxfpga_init(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.regmap* @dev_get_drvdata(i32*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @pl111_vexpress_clcd_init(%struct.device*, %struct.pl111_drm_dev_private*, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
