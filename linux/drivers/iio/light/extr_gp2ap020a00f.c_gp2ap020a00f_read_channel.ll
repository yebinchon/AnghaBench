; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_read_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2ap020a00f_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@GP2AP020A00F_CMD_READ_RAW_CLEAR = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_READ_RAW_IR = common dso_local global i32 0, align 4
@GP2AP020A00F_CMD_READ_RAW_PROXIMITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"gp2ap020a00f_exec_cmd failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"gp2ap020a00f_read_output failed\0A\00", align 1
@GP2AP020A00F_OPMODE_SHUTDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to shut down the device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*, %struct.iio_chan_spec*, i32*)* @gp2ap020a00f_read_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_read_channel(%struct.gp2ap020a00f_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gp2ap020a00f_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @GP2AP020A00F_CMD_READ_RAW_CLEAR, align 4
  store i32 %14, i32* %8, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @GP2AP020A00F_CMD_READ_RAW_IR, align 4
  store i32 %16, i32* %8, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @GP2AP020A00F_CMD_READ_RAW_PROXIMITY, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %76

22:                                               ; preds = %17, %15, %13
  %23 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %30 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %74

34:                                               ; preds = %22
  %35 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @gp2ap020a00f_read_output(%struct.gp2ap020a00f_data* %35, i32 %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %45 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %51 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %52 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %57 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @GP2AP020A00F_CMD_READ_RAW_CLEAR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @GP2AP020A00F_CMD_READ_RAW_IR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %61
  %70 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @gp2ap020a00f_output_to_lux(%struct.gp2ap020a00f_data* %70, i32* %71)
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %28
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %19
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gp2ap020a00f_read_output(%struct.gp2ap020a00f_data*, i32, i32*) #1

declare dso_local i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data*, i32) #1

declare dso_local i32 @gp2ap020a00f_output_to_lux(%struct.gp2ap020a00f_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
