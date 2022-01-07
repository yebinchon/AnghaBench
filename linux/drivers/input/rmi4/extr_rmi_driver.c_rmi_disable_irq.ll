; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rmi_device_platform_data = type { i32 }
%struct.rmi_driver_data = type { i32, i32, i32 }
%struct.rmi4_attn_data = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to enable irq for wake: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_disable_irq(%struct.rmi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rmi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmi_device_platform_data*, align 8
  %6 = alloca %struct.rmi_driver_data*, align 8
  %7 = alloca %struct.rmi4_attn_data, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %12 = call %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device* %11)
  store %struct.rmi_device_platform_data* %12, %struct.rmi_device_platform_data** %5, align 8
  %13 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %14 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %13, i32 0, i32 0
  %15 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %14)
  store %struct.rmi_driver_data* %15, %struct.rmi_driver_data** %6, align 8
  %16 = bitcast %struct.rmi4_attn_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %21 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %24 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %73

28:                                               ; preds = %2
  %29 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %30 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @disable_irq(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %37 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @device_may_wakeup(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @enable_irq_wake(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %50 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %35, %28
  br label %55

55:                                               ; preds = %71, %54
  %56 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %57 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %56, i32 0, i32 2
  %58 = call i32 @kfifo_is_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %63 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %62, i32 0, i32 2
  %64 = call i32 @kfifo_get(i32* %63, %struct.rmi4_attn_data* %7)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @kfree(i32 %69)
  br label %71

71:                                               ; preds = %67, %61
  br label %55

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %27
  %74 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %75 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  ret void
}

declare dso_local %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device*) #1

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @kfifo_is_empty(i32*) #1

declare dso_local i32 @kfifo_get(i32*, %struct.rmi4_attn_data*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
