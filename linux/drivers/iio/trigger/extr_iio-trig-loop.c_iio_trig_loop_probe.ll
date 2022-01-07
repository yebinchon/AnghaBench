; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-loop.c_iio_trig_loop_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-loop.c_iio_trig_loop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_trigger = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.iio_loop_info = type { %struct.iio_sw_trigger }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iio_loop_trigger_ops = common dso_local global i32 0, align 4
@iio_loop_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_sw_trigger* (i8*)* @iio_trig_loop_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_sw_trigger* @iio_trig_loop_probe(i8* %0) #0 {
  %2 = alloca %struct.iio_sw_trigger*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iio_loop_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.iio_loop_info* @kzalloc(i32 8, i32 %6)
  store %struct.iio_loop_info* %7, %struct.iio_loop_info** %4, align 8
  %8 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %9 = icmp ne %struct.iio_loop_info* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.iio_sw_trigger* @ERR_PTR(i32 %12)
  store %struct.iio_sw_trigger* %13, %struct.iio_sw_trigger** %2, align 8
  br label %66

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.TYPE_5__* @iio_trigger_alloc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %18 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %18, i32 0, i32 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %21 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %61

28:                                               ; preds = %14
  %29 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %30 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %34 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_5__* %32, %struct.iio_loop_info* %33)
  %35 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %36 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32* @iio_loop_trigger_ops, i32** %39, align 8
  %40 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %41 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @iio_trigger_register(%struct.TYPE_5__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %55

48:                                               ; preds = %28
  %49 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %50 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @iio_swt_group_init_type_name(%struct.iio_sw_trigger* %50, i8* %51, i32* @iio_loop_type)
  %53 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %54 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %53, i32 0, i32 0
  store %struct.iio_sw_trigger* %54, %struct.iio_sw_trigger** %2, align 8
  br label %66

55:                                               ; preds = %47
  %56 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %57 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.iio_sw_trigger, %struct.iio_sw_trigger* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @iio_trigger_free(%struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %55, %25
  %62 = load %struct.iio_loop_info*, %struct.iio_loop_info** %4, align 8
  %63 = call i32 @kfree(%struct.iio_loop_info* %62)
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.iio_sw_trigger* @ERR_PTR(i32 %64)
  store %struct.iio_sw_trigger* %65, %struct.iio_sw_trigger** %2, align 8
  br label %66

66:                                               ; preds = %61, %48, %10
  %67 = load %struct.iio_sw_trigger*, %struct.iio_sw_trigger** %2, align 8
  ret %struct.iio_sw_trigger* %67
}

declare dso_local %struct.iio_loop_info* @kzalloc(i32, i32) #1

declare dso_local %struct.iio_sw_trigger* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_5__* @iio_trigger_alloc(i8*, i8*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_5__*, %struct.iio_loop_info*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_5__*) #1

declare dso_local i32 @iio_swt_group_init_type_name(%struct.iio_sw_trigger*, i8*, i32*) #1

declare dso_local i32 @iio_trigger_free(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.iio_loop_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
