; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.thc63_dev = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32*, i32*, i32, %struct.thc63_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to get \22vcc\22 supply: %ld\0A\00", align 1
@thc63_bridge_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @thc63_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thc63_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thc63_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.thc63_dev* @devm_kzalloc(%struct.TYPE_6__* %7, i32 48, i32 %8)
  store %struct.thc63_dev* %9, %struct.thc63_dev** %4, align 8
  %10 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %11 = icmp ne %struct.thc63_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %19 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %18, i32 0, i32 3
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.thc63_dev* %21)
  %23 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %24 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @devm_regulator_get_optional(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %28 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %30 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %15
  %35 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %36 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %95

45:                                               ; preds = %34
  %46 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %47 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %50 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  %53 = call i32 @dev_err(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %55 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %95

58:                                               ; preds = %15
  %59 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %60 = call i32 @thc63_gpio_init(%struct.thc63_dev* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %95

65:                                               ; preds = %58
  %66 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %67 = call i32 @thc63_parse_dt(%struct.thc63_dev* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %95

72:                                               ; preds = %65
  %73 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %74 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %75 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store %struct.thc63_dev* %73, %struct.thc63_dev** %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %82 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %85 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32* @thc63_bridge_func, i32** %86, align 8
  %87 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %88 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %87, i32 0, i32 1
  %89 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %90 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32* %88, i32** %91, align 8
  %92 = load %struct.thc63_dev*, %struct.thc63_dev** %4, align 8
  %93 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %92, i32 0, i32 0
  %94 = call i32 @drm_bridge_add(%struct.TYPE_5__* %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %72, %70, %63, %45, %42, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.thc63_dev* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.thc63_dev*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @thc63_gpio_init(%struct.thc63_dev*) #1

declare dso_local i32 @thc63_parse_dt(%struct.thc63_dev*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
