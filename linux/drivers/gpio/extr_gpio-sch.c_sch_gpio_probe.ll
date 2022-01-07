; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch.c_sch_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch.c_sch_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.platform_device = type { i32, i32, i32 }
%struct.sch_gpio = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@sch_gpio_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sch_gpio*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sch_gpio* @devm_kzalloc(i32* %7, i32 40, i32 %8)
  store %struct.sch_gpio* %9, %struct.sch_gpio** %4, align 8
  %10 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %11 = icmp ne %struct.sch_gpio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_IO, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %15
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @resource_size(%struct.resource* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @devm_request_region(i32* %26, i32 %29, i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %112

40:                                               ; preds = %24
  %41 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %42 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %41, i32 0, i32 3
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %48 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %50 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_3__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.TYPE_3__* @sch_gpio_chip to i8*), i64 24, i1 false)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 1
  %54 = call i32 @dev_name(i32* %53)
  %55 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %56 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %61 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32* %59, i32** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %99 [
    i32 128, label %66
    i32 130, label %81
    i32 131, label %87
    i32 129, label %93
  ]

66:                                               ; preds = %40
  %67 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %68 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %67, i32 0, i32 0
  store i32 10, i32* %68, align 8
  %69 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %70 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 14, i32* %71, align 8
  %72 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %73 = load i32, i32* @GEN, align 4
  %74 = call i32 @sch_gpio_reg_set(%struct.sch_gpio* %72, i32 8, i32 %73, i32 1)
  %75 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %76 = load i32, i32* @GEN, align 4
  %77 = call i32 @sch_gpio_reg_set(%struct.sch_gpio* %75, i32 9, i32 %76, i32 1)
  %78 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %79 = load i32, i32* @GEN, align 4
  %80 = call i32 @sch_gpio_reg_set(%struct.sch_gpio* %78, i32 13, i32 %79, i32 1)
  br label %102

81:                                               ; preds = %40
  %82 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %83 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %82, i32 0, i32 0
  store i32 5, i32* %83, align 8
  %84 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %85 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 14, i32* %86, align 8
  br label %102

87:                                               ; preds = %40
  %88 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %89 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %88, i32 0, i32 0
  store i32 21, i32* %89, align 8
  %90 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %91 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 30, i32* %92, align 8
  br label %102

93:                                               ; preds = %40
  %94 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %95 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  %96 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %97 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 8, i32* %98, align 8
  br label %102

99:                                               ; preds = %40
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %112

102:                                              ; preds = %93, %87, %81, %66
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %105 = call i32 @platform_set_drvdata(%struct.platform_device* %103, %struct.sch_gpio* %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 1
  %108 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %109 = getelementptr inbounds %struct.sch_gpio, %struct.sch_gpio* %108, i32 0, i32 1
  %110 = load %struct.sch_gpio*, %struct.sch_gpio** %4, align 8
  %111 = call i32 @devm_gpiochip_add_data(i32* %107, %struct.TYPE_3__* %109, %struct.sch_gpio* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %102, %99, %37, %21, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.sch_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @sch_gpio_reg_set(%struct.sch_gpio*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sch_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_3__*, %struct.sch_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
