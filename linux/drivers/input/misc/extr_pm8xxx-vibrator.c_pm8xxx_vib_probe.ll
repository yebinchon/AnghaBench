; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8xxx-vibrator.c_pm8xxx_vib_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8xxx-vibrator.c_pm8xxx_vib_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pm8xxx_vib = type { i32, %struct.input_dev*, %struct.pm8xxx_regs*, i32, i32 }
%struct.input_dev = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pm8xxx_regs = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pm8xxx_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pm8xxx_vib_ffmemless\00", align 1
@pm8xxx_vib_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@pm8xxx_vib_play_effect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"couldn't register vibrator as FF device\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8xxx_vib_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_vib_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm8xxx_vib*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pm8xxx_regs*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pm8xxx_vib* @devm_kzalloc(%struct.TYPE_7__* %10, i32 32, i32 %11)
  store %struct.pm8xxx_vib* %12, %struct.pm8xxx_vib** %4, align 8
  %13 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %14 = icmp ne %struct.pm8xxx_vib* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_get_regmap(i32 %22, i32* null)
  %24 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %25 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %27 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %130

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_7__* %35)
  store %struct.input_dev* %36, %struct.input_dev** %5, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = icmp ne %struct.input_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %130

42:                                               ; preds = %33
  %43 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %44 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %43, i32 0, i32 4
  %45 = load i32, i32* @pm8xxx_work_handler, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %49 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %48, i32 0, i32 1
  store %struct.input_dev* %47, %struct.input_dev** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call %struct.pm8xxx_regs* @of_device_get_match_data(%struct.TYPE_7__* %51)
  store %struct.pm8xxx_regs* %52, %struct.pm8xxx_regs** %8, align 8
  %53 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %54 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %57 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regmap_read(i32 %55, i32 %58, i32* %7)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %130

64:                                               ; preds = %42
  %65 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %66 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %71 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %74 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @regmap_write(i32 %72, i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %130

82:                                               ; preds = %64
  %83 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %84 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %85 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %84, i32 0, i32 2
  store %struct.pm8xxx_regs* %83, %struct.pm8xxx_regs** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %88 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %90, align 8
  %91 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* @pm8xxx_vib_close, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %98 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %99 = call i32 @input_set_drvdata(%struct.input_dev* %97, %struct.pm8xxx_vib* %98)
  %100 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %101 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %100, i32 0, i32 1
  %102 = load %struct.input_dev*, %struct.input_dev** %101, align 8
  %103 = load i32, i32* @EV_FF, align 4
  %104 = load i32, i32* @FF_RUMBLE, align 4
  %105 = call i32 @input_set_capability(%struct.input_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %107 = load i32, i32* @pm8xxx_vib_play_effect, align 4
  %108 = call i32 @input_ff_create_memless(%struct.input_dev* %106, i32* null, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %82
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %130

116:                                              ; preds = %82
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = call i32 @input_register_device(%struct.input_dev* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_err(%struct.TYPE_7__* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %130

126:                                              ; preds = %116
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.pm8xxx_vib* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %121, %111, %80, %62, %39, %30, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.pm8xxx_vib* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.pm8xxx_regs* @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.pm8xxx_vib*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.input_dev*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm8xxx_vib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
