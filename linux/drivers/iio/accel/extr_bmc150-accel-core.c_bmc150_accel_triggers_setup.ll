; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_triggers_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_triggers_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.iio_dev = type { i32, i32 }
%struct.bmc150_accel_data = type { %struct.bmc150_accel_trigger*, i32 }
%struct.bmc150_accel_trigger = type { %struct.TYPE_7__*, i32, %struct.bmc150_accel_data*, i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }

@BMC150_ACCEL_TRIGGERS = common dso_local global i32 0, align 4
@bmc150_accel_triggers = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@bmc150_accel_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.bmc150_accel_data*)* @bmc150_accel_triggers_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_triggers_setup(%struct.iio_dev* %0, %struct.bmc150_accel_data* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.bmc150_accel_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmc150_accel_trigger*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.bmc150_accel_data* %1, %struct.bmc150_accel_data** %4, align 8
  %9 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %10 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.device* @regmap_get_device(i32 %11)
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %90, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BMC150_ACCEL_TRIGGERS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %13
  %18 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %19 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %18, i32 0, i32 0
  %20 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %20, i64 %22
  store %struct.bmc150_accel_trigger* %23, %struct.bmc150_accel_trigger** %8, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bmc150_accel_triggers, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_7__* @devm_iio_trigger_alloc(%struct.device* %24, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %39 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %38, i32 0, i32 0
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %41 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %17
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %93

47:                                               ; preds = %17
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %50 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.device* %48, %struct.device** %53, align 8
  %54 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %55 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32* @bmc150_accel_trigger_ops, i32** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bmc150_accel_triggers, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %65 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %67 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %68 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %67, i32 0, i32 2
  store %struct.bmc150_accel_data* %66, %struct.bmc150_accel_data** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bmc150_accel_triggers, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %76 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %78 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %81 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_7__* %79, %struct.bmc150_accel_trigger* %80)
  %82 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %8, align 8
  %83 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @iio_trigger_register(%struct.TYPE_7__* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %47
  br label %93

89:                                               ; preds = %47
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %13

93:                                               ; preds = %88, %44, %13
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @bmc150_accel_unregister_triggers(%struct.bmc150_accel_data* %97, i32 %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local %struct.TYPE_7__* @devm_iio_trigger_alloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_7__*, %struct.bmc150_accel_trigger*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_7__*) #1

declare dso_local i32 @bmc150_accel_unregister_triggers(%struct.bmc150_accel_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
