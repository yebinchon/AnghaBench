; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_allocate_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_allocate_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { %struct.cec_adapter*, i8*, i8*, i32, %struct.TYPE_2__, %struct.cec_pin_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.cec_pin_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@cec_pin_timer = common dso_local global i32 0, align 4
@CEC_TIM_CUSTOM_DEFAULT = common dso_local global i8* null, align 8
@cec_pin_adap_ops = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_PIN = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cec_adapter* @cec_pin_allocate_adapter(%struct.cec_pin_ops* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca %struct.cec_pin_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cec_adapter*, align 8
  %11 = alloca %struct.cec_pin*, align 8
  store %struct.cec_pin_ops* %0, %struct.cec_pin_ops** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cec_pin* @kzalloc(i32 40, i32 %12)
  store %struct.cec_pin* %13, %struct.cec_pin** %11, align 8
  %14 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %15 = icmp eq %struct.cec_pin* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.cec_adapter* @ERR_PTR(i32 %18)
  store %struct.cec_adapter* %19, %struct.cec_adapter** %5, align 8
  br label %70

20:                                               ; preds = %4
  %21 = load %struct.cec_pin_ops*, %struct.cec_pin_ops** %6, align 8
  %22 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %23 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %22, i32 0, i32 5
  store %struct.cec_pin_ops* %21, %struct.cec_pin_ops** %23, align 8
  %24 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %25 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %24, i32 0, i32 4
  %26 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %27 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %28 = call i32 @hrtimer_init(%struct.TYPE_2__* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @cec_pin_timer, align 4
  %30 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %31 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %34 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %33, i32 0, i32 3
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load i8*, i8** @CEC_TIM_CUSTOM_DEFAULT, align 8
  %37 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %38 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @CEC_TIM_CUSTOM_DEFAULT, align 8
  %40 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %41 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CEC_CAP_MONITOR_PIN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %50 = call %struct.cec_adapter* @cec_allocate_adapter(i32* @cec_pin_adap_ops, i8* %42, i8* %43, i32 %48, i32 %49)
  store %struct.cec_adapter* %50, %struct.cec_adapter** %10, align 8
  %51 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  %52 = call i64 @IS_ERR(%struct.cec_adapter* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %20
  %55 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %56 = call i32 @kfree(%struct.cec_pin* %55)
  %57 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  store %struct.cec_adapter* %57, %struct.cec_adapter** %5, align 8
  br label %70

58:                                               ; preds = %20
  %59 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %60 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  %61 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %60, i32 0, i32 0
  store %struct.cec_pin* %59, %struct.cec_pin** %61, align 8
  %62 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  %63 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %64 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %63, i32 0, i32 0
  store %struct.cec_adapter* %62, %struct.cec_adapter** %64, align 8
  %65 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %66 = load %struct.cec_pin*, %struct.cec_pin** %11, align 8
  %67 = call i32 @cec_pin_high(%struct.cec_pin* %66)
  %68 = call i32 @cec_pin_update(%struct.cec_pin* %65, i32 %67, i32 1)
  %69 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  store %struct.cec_adapter* %69, %struct.cec_adapter** %5, align 8
  br label %70

70:                                               ; preds = %58, %54, %16
  %71 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  ret %struct.cec_adapter* %71
}

declare dso_local %struct.cec_pin* @kzalloc(i32, i32) #1

declare dso_local %struct.cec_adapter* @ERR_PTR(i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.cec_adapter* @cec_allocate_adapter(i32*, i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.cec_adapter*) #1

declare dso_local i32 @kfree(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_update(%struct.cec_pin*, i32, i32) #1

declare dso_local i32 @cec_pin_high(%struct.cec_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
