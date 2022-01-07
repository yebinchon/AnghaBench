; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_keyb = type { %struct.device*, %struct.TYPE_2__, %struct.cros_ec_device* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot register matrix inputs: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot register non-matrix inputs: %d\0A\00", align 1
@cros_ec_keyb_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot register notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_keyb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_keyb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cros_ec_keyb*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cros_ec_device* @dev_get_drvdata(i32 %11)
  store %struct.cros_ec_device* %12, %struct.cros_ec_device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.cros_ec_keyb* @devm_kzalloc(%struct.device* %23, i32 24, i32 %24)
  store %struct.cros_ec_keyb* %25, %struct.cros_ec_keyb** %6, align 8
  %26 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %27 = icmp ne %struct.cros_ec_keyb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %22
  %32 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %33 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %34 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %33, i32 0, i32 2
  store %struct.cros_ec_device* %32, %struct.cros_ec_device** %34, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %37 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %36, i32 0, i32 0
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %40 = call i32 @dev_set_drvdata(%struct.device* %38, %struct.cros_ec_keyb* %39)
  %41 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %42 = call i32 @cros_ec_keyb_register_matrix(%struct.cros_ec_keyb* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %84

50:                                               ; preds = %31
  %51 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %52 = call i32 @cros_ec_keyb_register_bs(%struct.cros_ec_keyb* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %84

60:                                               ; preds = %50
  %61 = load i32, i32* @cros_ec_keyb_work, align 4
  %62 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %63 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %66 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %65, i32 0, i32 2
  %67 = load %struct.cros_ec_device*, %struct.cros_ec_device** %66, align 8
  %68 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %67, i32 0, i32 0
  %69 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %70 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %69, i32 0, i32 1
  %71 = call i32 @blocking_notifier_chain_register(i32* %68, %struct.TYPE_2__* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %60
  %80 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %6, align 8
  %81 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %80, i32 0, i32 0
  %82 = load %struct.device*, %struct.device** %81, align 8
  %83 = call i32 @device_init_wakeup(%struct.device* %82, i32 1)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %74, %55, %45, %28, %19
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.cros_ec_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_keyb* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cros_ec_keyb*) #1

declare dso_local i32 @cros_ec_keyb_register_matrix(%struct.cros_ec_keyb*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cros_ec_keyb_register_bs(%struct.cros_ec_keyb*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
