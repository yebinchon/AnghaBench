; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_prox_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_prox_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.gp2ap020a00f_data = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GP2AP020A00F_CMD_PROX_HIGH_EV_EN = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_PROX_HIGH_EV_DIS = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_PROX_LOW_EV_EN = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_PROX_LOW_EV_DIS = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_PL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_PH = common dso_local global i64 0, align 8
@gp2ap020a00f_prox_sensing_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gp2ap020a00f_prox_sensing\00", align 1
@gp2ap020a00f_thresh_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"gp2ap020a00f_thresh_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @gp2ap020a00f_write_prox_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_write_prox_event_config(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gp2ap020a00f_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.gp2ap020a00f_data* %11, %struct.gp2ap020a00f_data** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @GP2AP020A00F_CMD_PROX_HIGH_EV_EN, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GP2AP020A00F_CMD_PROX_HIGH_EV_DIS, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @GP2AP020A00F_CMD_PROX_LOW_EV_EN, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @GP2AP020A00F_CMD_PROX_LOW_EV_DIS, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %32 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @GP2AP020A00F_THRESH_PL, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %105

41:                                               ; preds = %30
  %42 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %43 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @GP2AP020A00F_THRESH_PH, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %105

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %105

61:                                               ; preds = %53
  %62 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %105

69:                                               ; preds = %61
  %70 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %71 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.iio_dev* %75)
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %81 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %86 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IRQF_ONESHOT, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %91 = call i32 @request_threaded_irq(i32 %84, i32* null, i32* @gp2ap020a00f_prox_sensing_handler, i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.iio_dev* %90)
  store i32 %91, i32* %9, align 4
  br label %103

92:                                               ; preds = %69
  %93 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %94 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %99 = load i32, i32* @IRQF_ONESHOT, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %102 = call i32 @request_threaded_irq(i32 %97, i32* null, i32* @gp2ap020a00f_thresh_event_handler, i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.iio_dev* %101)
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %92, %79
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %67, %59, %49, %38
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.iio_dev*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32*, i32, i8*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
