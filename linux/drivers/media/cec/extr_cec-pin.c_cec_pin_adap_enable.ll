; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.cec_adapter*)* }
%struct.TYPE_3__ = type { i64 }

@CEC_PIN_IRQ_UNCHANGED = common dso_local global i32 0, align 4
@cec_pin_thread_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cec-pin\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cec-pin: kernel_thread() failed\0A\00", align 1
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CEC_ST_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @cec_pin_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_pin_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cec_pin*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %7, i32 0, i32 0
  %9 = load %struct.cec_pin*, %struct.cec_pin** %8, align 8
  store %struct.cec_pin* %9, %struct.cec_pin** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %12 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %17 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %16, i32 0, i32 11
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  %19 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %20 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %22 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %21, i32 0, i32 10
  store i64 0, i64* %22, align 8
  %23 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %24 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %26 = call i32 @cec_pin_read(%struct.cec_pin* %25)
  %27 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %28 = call i32 @cec_pin_to_idle(%struct.cec_pin* %27)
  %29 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %30 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @ns_to_ktime(i32 0)
  %33 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %34 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %36 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %35, i32 0, i32 6
  %37 = load i32, i32* @CEC_PIN_IRQ_UNCHANGED, align 4
  %38 = call i32 @atomic_set(i32* %36, i32 %37)
  %39 = load i32, i32* @cec_pin_thread_func, align 4
  %40 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %41 = call i32 @kthread_run(i32 %39, %struct.cec_adapter* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %43 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %45 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %15
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %52 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %92

55:                                               ; preds = %15
  %56 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %57 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %56, i32 0, i32 4
  %58 = call i32 @ns_to_ktime(i32 0)
  %59 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %60 = call i32 @hrtimer_start(i32* %57, i32 %58, i32 %59)
  br label %91

61:                                               ; preds = %2
  %62 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %63 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %62, i32 0, i32 5
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %65, align 8
  %67 = icmp ne i32 (%struct.cec_adapter*)* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %70 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %72, align 8
  %74 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %75 = call i32 %73(%struct.cec_adapter* %74)
  br label %76

76:                                               ; preds = %68, %61
  %77 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %78 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %77, i32 0, i32 4
  %79 = call i32 @hrtimer_cancel(i32* %78)
  %80 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %81 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kthread_stop(i32 %82)
  %84 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %85 = call i32 @cec_pin_read(%struct.cec_pin* %84)
  %86 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %87 = call i32 @cec_pin_to_idle(%struct.cec_pin* %86)
  %88 = load i32, i32* @CEC_ST_OFF, align 4
  %89 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %90 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %76, %55
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %49
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cec_pin_read(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_to_idle(%struct.cec_pin*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.cec_adapter*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
