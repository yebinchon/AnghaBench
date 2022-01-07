; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_allocate_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_allocate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_uvis25_hw = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mode %lx unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ST_UVIS25_REG_CTRL3_ADDR = common dso_local global i32 0, align 4
@ST_UVIS25_REG_HL_MASK = common dso_local global i32 0, align 4
@st_uvis25_trigger_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to request trigger irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s-trigger\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @st_uvis25_allocate_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_uvis25_allocate_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.st_uvis25_hw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_uvis25_hw* %10, %struct.st_uvis25_hw** %4, align 8
  %11 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %12 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device* @regmap_get_device(i32 %13)
  store %struct.device* %14, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %16 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @irq_get_irq_data(i32 %17)
  %19 = call i64 @irqd_get_trigger_type(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  switch i64 %20, label %23 [
    i64 130, label %21
    i64 128, label %21
    i64 129, label %22
    i64 131, label %22
  ]

21:                                               ; preds = %1, %1
  br label %29

22:                                               ; preds = %1, %1
  store i32 1, i32* %6, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @dev_info(%struct.device* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %96

29:                                               ; preds = %22, %21
  %30 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %31 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ST_UVIS25_REG_CTRL3_ADDR, align 4
  %34 = load i32, i32* @ST_UVIS25_REG_HL_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %96

41:                                               ; preds = %29
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %44 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @st_uvis25_trigger_handler_thread, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @IRQF_ONESHOT, align 8
  %49 = or i64 %47, %48
  %50 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %54 = call i32 @devm_request_threaded_irq(%struct.device* %42, i32 %45, i32* null, i32 %46, i64 %49, i32 %52, %struct.st_uvis25_hw* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %41
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %60 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %96

64:                                               ; preds = %41
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_6__* @devm_iio_trigger_alloc(%struct.device* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %71 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %70, i32 0, i32 0
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %73 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %96

79:                                               ; preds = %64
  %80 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %81 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %84 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_6__* %82, %struct.iio_dev* %83)
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %87 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store %struct.device* %85, %struct.device** %90, align 8
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %4, align 8
  %93 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i32 @devm_iio_trigger_register(%struct.device* %91, %struct.TYPE_6__* %94)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %79, %76, %57, %39, %23
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.st_uvis25_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i64, i32, %struct.st_uvis25_hw*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @devm_iio_trigger_alloc(%struct.device*, i8*, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_6__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
