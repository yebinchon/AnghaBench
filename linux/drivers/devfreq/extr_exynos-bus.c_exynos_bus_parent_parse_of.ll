; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_parent_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_parent_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.exynos_bus = type { i32, %struct.opp_table*, i32, %struct.opp_table**, %struct.device* }
%struct.opp_table = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set regulators %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to get the count of devfreq-event dev\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"exynos,saturation-ratio\00", align 1
@DEFAULT_SATURATION_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.exynos_bus*)* @exynos_bus_parent_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_bus_parent_parse_of(%struct.device_node* %0, %struct.exynos_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.exynos_bus*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.opp_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.exynos_bus* %1, %struct.exynos_bus** %5, align 8
  %13 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %13, i32 0, i32 4
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.opp_table* @dev_pm_opp_set_regulators(%struct.device* %16, i8** %8, i32 1)
  store %struct.opp_table* %17, %struct.opp_table** %7, align 8
  %18 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %19 = call i64 @IS_ERR(%struct.opp_table* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.opp_table* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %111

28:                                               ; preds = %2
  %29 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %30 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %31 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %30, i32 0, i32 1
  store %struct.opp_table* %29, %struct.opp_table** %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @devfreq_event_get_edev_count(%struct.device* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %10, align 4
  br label %103

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %43 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.opp_table** @devm_kzalloc(%struct.device* %48, i32 %49, i32 %50)
  %52 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %53 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %52, i32 0, i32 3
  store %struct.opp_table** %51, %struct.opp_table*** %53, align 8
  %54 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %55 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %54, i32 0, i32 3
  %56 = load %struct.opp_table**, %struct.opp_table*** %55, align 8
  %57 = icmp ne %struct.opp_table** %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %40
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %103

61:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %89, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.opp_table* @devfreq_event_get_edev_by_phandle(%struct.device* %67, i32 %68)
  %70 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %71 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %70, i32 0, i32 3
  %72 = load %struct.opp_table**, %struct.opp_table*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %72, i64 %74
  store %struct.opp_table* %69, %struct.opp_table** %75, align 8
  %76 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %77 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %76, i32 0, i32 3
  %78 = load %struct.opp_table**, %struct.opp_table*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %78, i64 %80
  %82 = load %struct.opp_table*, %struct.opp_table** %81, align 8
  %83 = call i64 @IS_ERR(%struct.opp_table* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %66
  %86 = load i32, i32* @EPROBE_DEFER, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %103

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %62

92:                                               ; preds = %62
  %93 = load %struct.device_node*, %struct.device_node** %4, align 8
  %94 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %95 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %94, i32 0, i32 2
  %96 = call i64 @of_property_read_u32(%struct.device_node* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* @DEFAULT_SATURATION_RATIO, align 4
  %100 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %101 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  store i32 0, i32* %3, align 4
  br label %111

103:                                              ; preds = %85, %58, %36
  %104 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %105 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %104, i32 0, i32 1
  %106 = load %struct.opp_table*, %struct.opp_table** %105, align 8
  %107 = call i32 @dev_pm_opp_put_regulators(%struct.opp_table* %106)
  %108 = load %struct.exynos_bus*, %struct.exynos_bus** %5, align 8
  %109 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %108, i32 0, i32 1
  store %struct.opp_table* null, %struct.opp_table** %109, align 8
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %102, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.opp_table* @dev_pm_opp_set_regulators(%struct.device*, i8**, i32) #1

declare dso_local i64 @IS_ERR(%struct.opp_table*) #1

declare dso_local i32 @PTR_ERR(%struct.opp_table*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devfreq_event_get_edev_count(%struct.device*) #1

declare dso_local %struct.opp_table** @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.opp_table* @devfreq_event_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_pm_opp_put_regulators(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
