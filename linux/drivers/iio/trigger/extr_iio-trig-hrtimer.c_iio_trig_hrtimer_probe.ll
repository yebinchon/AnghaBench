; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-hrtimer.c_iio_trig_hrtimer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-hrtimer.c_iio_trig_hrtimer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_trigger = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.iio_hrtimer_info = type { i32, i32, %struct.iio_sw_trigger, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iio_hrtimer_trigger_ops = common dso_local global i32 0, align 4
@iio_hrtimer_attr_groups = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@iio_hrtimer_trig_handler = common dso_local global i32 0, align 4
@HRTIMER_DEFAULT_SAMPLING_FREQUENCY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@iio_hrtimer_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_sw_trigger* (i8*)* @iio_trig_hrtimer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_sw_trigger* @iio_trig_hrtimer_probe(i8* %0) #0 {
  %2 = alloca %struct.iio_sw_trigger*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iio_hrtimer_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.iio_hrtimer_info* @kzalloc(i32 24, i32 %6)
  store %struct.iio_hrtimer_info* %7, %struct.iio_hrtimer_info** %4, align 8
  %8 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %9 = icmp ne %struct.iio_hrtimer_info* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.iio_sw_trigger* @ERR_PTR(i32 %12)
  store %struct.iio_sw_trigger* %13, %struct.iio_sw_trigger** %2, align 8
  br label %92

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.TYPE_8__* @iio_trigger_alloc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %18 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %18, i32 0, i32 0
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %19, align 8
  %20 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %21 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %87

28:                                               ; preds = %14
  %29 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %30 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %34 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_8__* %32, %struct.iio_hrtimer_info* %33)
  %35 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %36 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32* @iio_hrtimer_trigger_ops, i32** %39, align 8
  %40 = load i32, i32* @iio_hrtimer_attr_groups, align 4
  %41 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %42 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 8
  %47 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %48 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %47, i32 0, i32 3
  %49 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %50 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %51 = call i32 @hrtimer_init(%struct.TYPE_9__* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @iio_hrtimer_trig_handler, align 4
  %53 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %54 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @HRTIMER_DEFAULT_SAMPLING_FREQUENCY, align 4
  %57 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %58 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @NSEC_PER_SEC, align 4
  %60 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %61 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %59, %62
  %64 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %65 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %67 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @iio_trigger_register(%struct.TYPE_8__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %28
  br label %81

74:                                               ; preds = %28
  %75 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %76 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %75, i32 0, i32 2
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @iio_swt_group_init_type_name(%struct.iio_sw_trigger* %76, i8* %77, i32* @iio_hrtimer_type)
  %79 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %80 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %79, i32 0, i32 2
  store %struct.iio_sw_trigger* %80, %struct.iio_sw_trigger** %2, align 8
  br label %92

81:                                               ; preds = %73
  %82 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %83 = getelementptr inbounds %struct.iio_hrtimer_info, %struct.iio_hrtimer_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @iio_trigger_free(%struct.TYPE_8__* %85)
  br label %87

87:                                               ; preds = %81, %25
  %88 = load %struct.iio_hrtimer_info*, %struct.iio_hrtimer_info** %4, align 8
  %89 = call i32 @kfree(%struct.iio_hrtimer_info* %88)
  %90 = load i32, i32* %5, align 4
  %91 = call %struct.iio_sw_trigger* @ERR_PTR(i32 %90)
  store %struct.iio_sw_trigger* %91, %struct.iio_sw_trigger** %2, align 8
  br label %92

92:                                               ; preds = %87, %74, %10
  %93 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  ret %struct.iio_sw_trigger* %93
}

declare dso_local %struct.iio_hrtimer_info* @kzalloc(i32, i32) #1

declare dso_local %struct.iio_sw_trigger* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_8__* @iio_trigger_alloc(i8*, i8*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_8__*, %struct.iio_hrtimer_info*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_8__*) #1

declare dso_local i32 @iio_swt_group_init_type_name(%struct.iio_sw_trigger*, i8*, i32*) #1

declare dso_local i32 @iio_trigger_free(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.iio_hrtimer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
