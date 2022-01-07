; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_get_catu_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_get_catu_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.coresight_device* }
%struct.tmc_drvdata = type { %struct.coresight_device* }

@CONFIG_CORESIGHT_CATU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.coresight_device* @tmc_etr_get_catu_device(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.tmc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.coresight_device*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %3, align 8
  %7 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %7, i32 0, i32 0
  %9 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  store %struct.coresight_device* %9, %struct.coresight_device** %6, align 8
  %10 = load i32, i32* @CONFIG_CORESIGHT_CATU, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.coresight_device* null, %struct.coresight_device** %2, align 8
  br label %47

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %18 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %15
  %24 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %25 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.coresight_device*, %struct.coresight_device** %32, align 8
  store %struct.coresight_device* %33, %struct.coresight_device** %5, align 8
  %34 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %35 = icmp ne %struct.coresight_device* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %38 = call i64 @coresight_is_catu_device(%struct.coresight_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  store %struct.coresight_device* %41, %struct.coresight_device** %2, align 8
  br label %47

42:                                               ; preds = %36, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %15

46:                                               ; preds = %15
  store %struct.coresight_device* null, %struct.coresight_device** %2, align 8
  br label %47

47:                                               ; preds = %46, %40, %13
  %48 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  ret %struct.coresight_device* %48
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @coresight_is_catu_device(%struct.coresight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
