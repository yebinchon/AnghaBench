; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.cyapa = type { i32, i64, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (%struct.cyapa*, i32, i32, i32)* }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }

@PWR_MODE_FULL_ACTIVE = common dso_local global i32 0, align 4
@CYAPA_PM_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"set active power failed: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @cyapa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %9 = call %struct.cyapa* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.cyapa* %9, %struct.cyapa** %4, align 8
  %10 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %16 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %90

22:                                               ; preds = %1
  %23 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %24 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %29 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.cyapa*, i32, i32, i32)*, i32 (%struct.cyapa*, i32, i32, i32)** %31, align 8
  %33 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %34 = load i32, i32* @PWR_MODE_FULL_ACTIVE, align 4
  %35 = load i32, i32* @CYAPA_PM_ACTIVE, align 4
  %36 = call i32 %32(%struct.cyapa* %33, i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_warn(%struct.device* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %85

43:                                               ; preds = %27
  br label %65

44:                                               ; preds = %22
  %45 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %46 = call i32 @cyapa_reinitialize(%struct.cyapa* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %51 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %7, align 4
  br label %85

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @enable_irq(i32 %68)
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @pm_runtime_enabled(%struct.device* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 @pm_runtime_set_active(%struct.device* %74)
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i32 @pm_runtime_enable(%struct.device* %76)
  br label %78

78:                                               ; preds = %73, %65
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 @pm_runtime_get_sync(%struct.device* %79)
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @pm_runtime_mark_last_busy(%struct.device* %81)
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %83)
  br label %85

85:                                               ; preds = %78, %62, %39
  %86 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %87 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %20
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.cyapa* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @cyapa_reinitialize(%struct.cyapa*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
