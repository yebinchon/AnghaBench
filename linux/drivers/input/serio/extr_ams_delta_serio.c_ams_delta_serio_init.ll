; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ams_delta_serio.c_ams_delta_serio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ams_delta_serio.c_ams_delta_serio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ams_delta_serio = type { %struct.serio*, i32, i32 }
%struct.serio = type { i32, %struct.TYPE_10__, %struct.ams_delta_serio*, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"regulator request failed (%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ams_delta_serio_interrupt = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IRQ request failed (%d)\0A\00", align 1
@SERIO_8042 = common dso_local global i32 0, align 4
@ams_delta_serio_open = common dso_local global i32 0, align 4
@ams_delta_serio_close = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"AMS DELTA keyboard adapter\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ams_delta_serio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_serio_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ams_delta_serio*, align 8
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ams_delta_serio* @devm_kzalloc(%struct.TYPE_9__* %9, i32 16, i32 %10)
  store %struct.ams_delta_serio* %11, %struct.ams_delta_serio** %4, align 8
  %12 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %13 = icmp ne %struct.ams_delta_serio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %137

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %23 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %25 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %137

31:                                               ; preds = %17
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @devm_regulator_get(%struct.TYPE_9__* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %36 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %38 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %31
  %43 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %44 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_err(%struct.TYPE_9__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %42
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %137

60:                                               ; preds = %31
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @platform_get_irq(%struct.platform_device* %61, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %137

68:                                               ; preds = %60
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @ams_delta_serio_interrupt, align 4
  %73 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %74 = load i32, i32* @DRIVER_NAME, align 4
  %75 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %76 = call i32 @devm_request_irq(%struct.TYPE_9__* %70, i32 %71, i32 %72, i32 %73, i32 %74, %struct.ams_delta_serio* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %137

85:                                               ; preds = %68
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.serio* @kzalloc(i32 40, i32 %86)
  store %struct.serio* %87, %struct.serio** %5, align 8
  %88 = load %struct.serio*, %struct.serio** %5, align 8
  %89 = icmp ne %struct.serio* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %137

93:                                               ; preds = %85
  %94 = load %struct.serio*, %struct.serio** %5, align 8
  %95 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %96 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %95, i32 0, i32 0
  store %struct.serio* %94, %struct.serio** %96, align 8
  %97 = load i32, i32* @SERIO_8042, align 4
  %98 = load %struct.serio*, %struct.serio** %5, align 8
  %99 = getelementptr inbounds %struct.serio, %struct.serio* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @ams_delta_serio_open, align 4
  %102 = load %struct.serio*, %struct.serio** %5, align 8
  %103 = getelementptr inbounds %struct.serio, %struct.serio* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @ams_delta_serio_close, align 4
  %105 = load %struct.serio*, %struct.serio** %5, align 8
  %106 = getelementptr inbounds %struct.serio, %struct.serio* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.serio*, %struct.serio** %5, align 8
  %108 = getelementptr inbounds %struct.serio, %struct.serio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @strlcpy(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %111 = load %struct.serio*, %struct.serio** %5, align 8
  %112 = getelementptr inbounds %struct.serio, %struct.serio* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i8* @dev_name(%struct.TYPE_9__* %115)
  %117 = call i32 @strlcpy(i32 %113, i8* %116, i32 4)
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.serio*, %struct.serio** %5, align 8
  %121 = getelementptr inbounds %struct.serio, %struct.serio* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %122, align 8
  %123 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %124 = load %struct.serio*, %struct.serio** %5, align 8
  %125 = getelementptr inbounds %struct.serio, %struct.serio* %124, i32 0, i32 2
  store %struct.ams_delta_serio* %123, %struct.ams_delta_serio** %125, align 8
  %126 = load %struct.serio*, %struct.serio** %5, align 8
  %127 = call i32 @serio_register_port(%struct.serio* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %4, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.ams_delta_serio* %129)
  %131 = load %struct.serio*, %struct.serio** %5, align 8
  %132 = getelementptr inbounds %struct.serio, %struct.serio* %131, i32 0, i32 1
  %133 = load %struct.serio*, %struct.serio** %5, align 8
  %134 = getelementptr inbounds %struct.serio, %struct.serio* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_info(%struct.TYPE_10__* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %93, %90, %79, %65, %58, %28, %14
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.ams_delta_serio* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i32, %struct.ams_delta_serio*) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ams_delta_serio*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
