; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_therm_fan_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_therm_fan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__*, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.nvkm_therm*, %struct.dcb_gpio_func, i32, i32 }
%struct.dcb_gpio_func = type { i32, i32*, i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios*, %struct.nvkm_gpio* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_gpio = type { i32 }

@DCB_GPIO_FAN = common dso_local global i32 0, align 4
@DCB_GPIO_LOG_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"GPIO_FAN is in input mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"FAN control: %s\0A\00", align 1
@DCB_GPIO_FAN_SENSE = common dso_local global i32 0, align 4
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4
@nvkm_fan_alarm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"parsing the fan table failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"parsing both fan tables failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_therm_fan_ctor(%struct.nvkm_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_gpio*, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca %struct.dcb_gpio_func, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  %10 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %10, i32 0, i32 1
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %4, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %15, i32 0, i32 1
  %17 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %16, align 8
  store %struct.nvkm_gpio* %17, %struct.nvkm_gpio** %6, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %19, align 8
  store %struct.nvkm_bios* %20, %struct.nvkm_bios** %7, align 8
  %21 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %22 = load i32, i32* @DCB_GPIO_FAN, align 4
  %23 = call i32 @nvkm_gpio_find(%struct.nvkm_gpio* %21, i32 0, i32 %22, i32 255, %struct.dcb_gpio_func* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 16
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %8, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DCB_GPIO_LOG_DIR_IN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %40 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %52

43:                                               ; preds = %30, %26
  %44 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %45 = call i32 @nvkm_fanpwm_create(%struct.nvkm_therm* %44, %struct.dcb_gpio_func* %8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %50 = call i32 @nvkm_fantog_create(%struct.nvkm_therm* %49, %struct.dcb_gpio_func* %8)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %58 = call i32 @nvkm_fannil_create(%struct.nvkm_therm* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %143

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %66 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %67 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %73 = call i32 @nvkm_therm_fan_get(%struct.nvkm_therm* %72)
  %74 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %75 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  store i32 %73, i32* %77, align 8
  %78 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %79 = load i32, i32* @DCB_GPIO_FAN_SENSE, align 4
  %80 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %81 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = call i32 @nvkm_gpio_find(%struct.nvkm_gpio* %78, i32 0, i32 %79, i32 255, %struct.dcb_gpio_func* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %64
  %88 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %89 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %90 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %92, i32 0, i32 2
  store i32 %88, i32* %93, align 8
  br label %94

94:                                               ; preds = %87, %64
  %95 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %96 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %97 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  store %struct.nvkm_therm* %95, %struct.nvkm_therm** %99, align 8
  %100 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %101 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* @nvkm_fan_alarm, align 4
  %105 = call i32 @nvkm_alarm_init(i32* %103, i32 %104)
  %106 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %107 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %112 = call i32 @nvkm_therm_fan_set_defaults(%struct.nvkm_therm* %111)
  %113 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %114 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %115 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i32 @nvbios_perf_fan_parse(%struct.nvkm_bios* %113, i32* %117)
  %119 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %120 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %121 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @nvbios_fan_parse(%struct.nvkm_bios* %119, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %94
  %127 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %128 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_debug(%struct.nvkm_subdev* %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %129 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %130 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %131 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i64 @nvbios_therm_fan_parse(%struct.nvkm_bios* %129, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %138 = call i32 @nvkm_error(%struct.nvkm_subdev* %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %126
  br label %140

140:                                              ; preds = %139, %94
  %141 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %142 = call i32 @nvkm_therm_fan_safety_checks(%struct.nvkm_therm* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %61
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @nvkm_gpio_find(%struct.nvkm_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_fanpwm_create(%struct.nvkm_therm*, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nvkm_fantog_create(%struct.nvkm_therm*, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nvkm_fannil_create(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_therm_fan_get(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_alarm_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nvkm_therm_fan_set_defaults(%struct.nvkm_therm*) #1

declare dso_local i32 @nvbios_perf_fan_parse(%struct.nvkm_bios*, i32*) #1

declare dso_local i32 @nvbios_fan_parse(%struct.nvkm_bios*, i32*) #1

declare dso_local i64 @nvbios_therm_fan_parse(%struct.nvkm_bios*, i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_therm_fan_safety_checks(%struct.nvkm_therm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
