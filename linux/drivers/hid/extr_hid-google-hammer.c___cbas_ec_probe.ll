; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c___cbas_ec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c___cbas_ec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.cros_ec_device = type { i32 }
%struct.input_dev = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Whiskers Tablet Mode Switch\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot register input device: %d\0A\00", align 1
@cbas_ec = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot query base state: %d\0A\00", align 1
@cbas_ec_notify = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot register notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @__cbas_ec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cbas_ec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cros_ec_device* @dev_get_drvdata(i32 %11)
  store %struct.cros_ec_device* %12, %struct.cros_ec_device** %4, align 8
  %13 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %14 = call i32 @cbas_ec_query_base(%struct.cros_ec_device* %13, i32 0, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %95

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_8__* %27)
  store %struct.input_dev* %28, %struct.input_dev** %5, align 8
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = icmp ne %struct.input_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %95

34:                                               ; preds = %25
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @BUS_HOST, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i32, i32* @EV_SW, align 4
  %43 = load i32, i32* @SW_TABLET_MODE, align 4
  %44 = call i32 @input_set_capability(%struct.input_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = call i32 @input_register_device(%struct.input_dev* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(%struct.TYPE_8__* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %95

55:                                               ; preds = %34
  %56 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %57 = call i32 @cbas_ec_query_base(%struct.cros_ec_device* %56, i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cbas_ec, i32 0, i32 0))
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_err(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %95

66:                                               ; preds = %55
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = load i32, i32* @SW_TABLET_MODE, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cbas_ec, i32 0, i32 0), align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @input_report_switch(%struct.input_dev* %67, i32 %68, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = call i32 @cbas_ec_set_input(%struct.input_dev* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cbas_ec, i32 0, i32 2), align 8
  %78 = load i32, i32* @cbas_ec_notify, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cbas_ec, i32 0, i32 1, i32 0), align 4
  %79 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %80 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %79, i32 0, i32 0
  %81 = call i32 @blocking_notifier_chain_register(i32* %80, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cbas_ec, i32 0, i32 1))
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %66
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = call i32 @cbas_ec_set_input(%struct.input_dev* null)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %66
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @device_init_wakeup(%struct.TYPE_8__* %93, i32 1)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %84, %60, %49, %31, %22, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.cros_ec_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @cbas_ec_query_base(%struct.cros_ec_device*, i32, i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_8__*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @input_report_switch(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @cbas_ec_set_input(%struct.input_dev*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
