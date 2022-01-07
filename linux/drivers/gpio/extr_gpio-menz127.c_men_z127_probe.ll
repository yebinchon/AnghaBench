; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-menz127.c_men_z127_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-menz127.c_men_z127_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mcb_device_id = type { i32 }
%struct.men_z127_gpio = type { %struct.TYPE_8__*, i32*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to request device memory\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MEN_Z127_PSR = common dso_local global i32 0, align 4
@MEN_Z127_CTRL = common dso_local global i32 0, align 4
@MEN_Z127_GPIODR = common dso_local global i32 0, align 4
@men_z127_set_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to register MEN 16Z127 GPIO controller\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"MEN 16Z127 GPIO driver registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcb_device*, %struct.mcb_device_id*)* @men_z127_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z127_probe(%struct.mcb_device* %0, %struct.mcb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcb_device*, align 8
  %5 = alloca %struct.mcb_device_id*, align 8
  %6 = alloca %struct.men_z127_gpio*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.mcb_device* %0, %struct.mcb_device** %4, align 8
  store %struct.mcb_device_id* %1, %struct.mcb_device_id** %5, align 8
  %9 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %10 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.men_z127_gpio* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.men_z127_gpio* %13, %struct.men_z127_gpio** %6, align 8
  %14 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %15 = icmp ne %struct.men_z127_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 @dev_name(%struct.device* %21)
  %23 = call %struct.TYPE_8__* @mcb_request_mem(%struct.mcb_device* %20, i32 %22)
  %24 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %25 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_8__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.TYPE_8__* %36)
  store i32 %37, i32* %3, align 4
  br label %116

38:                                               ; preds = %19
  %39 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %40 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %45 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @resource_size(%struct.TYPE_8__* %46)
  %48 = call i32* @ioremap(i32 %43, i32 %47)
  %49 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %50 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %52 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %110

58:                                               ; preds = %38
  %59 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %60 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %61 = call i32 @mcb_set_drvdata(%struct.mcb_device* %59, %struct.men_z127_gpio* %60)
  %62 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %63 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %62, i32 0, i32 2
  %64 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %65 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %64, i32 0, i32 0
  %66 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %67 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @MEN_Z127_PSR, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %73 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @MEN_Z127_CTRL, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %79 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @MEN_Z127_GPIODR, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @bgpio_init(%struct.TYPE_9__* %63, %struct.device* %65, i32 4, i32* %71, i32* %77, i32* null, i32* %83, i32* null, i32 0)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %58
  br label %105

88:                                               ; preds = %58
  %89 = load i32, i32* @men_z127_set_config, align 4
  %90 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %91 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %94 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %93, i32 0, i32 2
  %95 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %96 = call i32 @gpiochip_add_data(%struct.TYPE_9__* %94, %struct.men_z127_gpio* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %105

102:                                              ; preds = %88
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = call i32 @dev_info(%struct.device* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %116

105:                                              ; preds = %99, %87
  %106 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %107 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @iounmap(i32* %108)
  br label %110

110:                                              ; preds = %105, %55
  %111 = load %struct.men_z127_gpio*, %struct.men_z127_gpio** %6, align 8
  %112 = getelementptr inbounds %struct.men_z127_gpio, %struct.men_z127_gpio* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @mcb_release_mem(%struct.TYPE_8__* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %102, %31, %16
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.men_z127_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @mcb_request_mem(%struct.mcb_device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_8__*) #1

declare dso_local i32 @mcb_set_drvdata(%struct.mcb_device*, %struct.men_z127_gpio*) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_9__*, %struct.device*, i32, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_9__*, %struct.men_z127_gpio*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @mcb_release_mem(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
