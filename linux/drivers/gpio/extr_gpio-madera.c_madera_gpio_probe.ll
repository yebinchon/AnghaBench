; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.madera = type { i32, %struct.madera_pdata }
%struct.madera_pdata = type { i32 }
%struct.madera_gpio = type { %struct.TYPE_8__, %struct.madera* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@madera_gpio_chip = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CS47L15_NUM_GPIOS = common dso_local global i32 0, align 4
@CS47L35_NUM_GPIOS = common dso_local global i32 0, align 4
@CS47L85_NUM_GPIOS = common dso_local global i32 0, align 4
@CS47L90_NUM_GPIOS = common dso_local global i32 0, align 4
@CS47L92_NUM_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown chip variant %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"madera-pinctrl\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to add pin range (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @madera_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.madera_pdata*, align 8
  %6 = alloca %struct.madera_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  %13 = load %struct.madera*, %struct.madera** %4, align 8
  %14 = getelementptr inbounds %struct.madera, %struct.madera* %13, i32 0, i32 1
  store %struct.madera_pdata* %14, %struct.madera_pdata** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.madera_gpio* @devm_kzalloc(%struct.TYPE_9__* %16, i32 24, i32 %17)
  store %struct.madera_gpio* %18, %struct.madera_gpio** %6, align 8
  %19 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %20 = icmp ne %struct.madera_gpio* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %123

24:                                               ; preds = %1
  %25 = load %struct.madera*, %struct.madera** %4, align 8
  %26 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %26, i32 0, i32 1
  store %struct.madera* %25, %struct.madera** %27, align 8
  %28 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %29 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_8__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 bitcast (%struct.TYPE_8__* @madera_gpio_chip to i8*), i64 12, i1 false)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %36 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.madera*, %struct.madera** %4, align 8
  %39 = getelementptr inbounds %struct.madera, %struct.madera* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %66 [
    i32 135, label %41
    i32 134, label %46
    i32 133, label %51
    i32 128, label %51
    i32 132, label %56
    i32 131, label %56
    i32 136, label %61
    i32 130, label %61
    i32 129, label %61
  ]

41:                                               ; preds = %24
  %42 = load i32, i32* @CS47L15_NUM_GPIOS, align 4
  %43 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %75

46:                                               ; preds = %24
  %47 = load i32, i32* @CS47L35_NUM_GPIOS, align 4
  %48 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %49 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %75

51:                                               ; preds = %24, %24
  %52 = load i32, i32* @CS47L85_NUM_GPIOS, align 4
  %53 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %54 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %75

56:                                               ; preds = %24, %24
  %57 = load i32, i32* @CS47L90_NUM_GPIOS, align 4
  %58 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %75

61:                                               ; preds = %24, %24, %24
  %62 = load i32, i32* @CS47L92_NUM_GPIOS, align 4
  %63 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %64 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %75

66:                                               ; preds = %24
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.madera*, %struct.madera** %4, align 8
  %70 = getelementptr inbounds %struct.madera, %struct.madera* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %123

75:                                               ; preds = %61, %56, %51, %46, %41
  %76 = load %struct.madera_pdata*, %struct.madera_pdata** %5, align 8
  %77 = getelementptr inbounds %struct.madera_pdata, %struct.madera_pdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.madera_pdata*, %struct.madera_pdata** %5, align 8
  %82 = getelementptr inbounds %struct.madera_pdata, %struct.madera_pdata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %85 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %91

87:                                               ; preds = %75
  %88 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %89 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %95 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %94, i32 0, i32 0
  %96 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %97 = call i32 @devm_gpiochip_add_data(%struct.TYPE_9__* %93, %struct.TYPE_8__* %95, %struct.madera_gpio* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @dev_dbg(%struct.TYPE_9__* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %123

106:                                              ; preds = %91
  %107 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %108 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %107, i32 0, i32 0
  %109 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %110 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gpiochip_add_pin_range(%struct.TYPE_8__* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dev_dbg(%struct.TYPE_9__* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %123

122:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %116, %100, %66, %21
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local %struct.madera_gpio* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.madera_gpio*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_8__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
