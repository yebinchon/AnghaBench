; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy.c_iio_dummy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy.c_iio_dummy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_device = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32*, i32, i32, i32 }
%struct.iio_dummy_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_dummy_channels = common dso_local global i32 0, align 4
@iio_dummy_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@iio_dummy_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_sw_device* (i8*)* @iio_dummy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_sw_device* @iio_dummy_probe(i8* %0) #0 {
  %2 = alloca %struct.iio_sw_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_dummy_state*, align 8
  %7 = alloca %struct.iio_sw_device*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.iio_sw_device* @kzalloc(i32 8, i32 %8)
  store %struct.iio_sw_device* %9, %struct.iio_sw_device** %7, align 8
  %10 = load %struct.iio_sw_device*, %struct.iio_sw_device** %7, align 8
  %11 = icmp ne %struct.iio_sw_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %84

15:                                               ; preds = %1
  %16 = call %struct.iio_dev* @iio_device_alloc(i32 4)
  store %struct.iio_dev* %16, %struct.iio_dev** %5, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %15
  %23 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %24 = call %struct.iio_dummy_state* @iio_priv(%struct.iio_dev* %23)
  store %struct.iio_dummy_state* %24, %struct.iio_dummy_state** %6, align 8
  %25 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %26 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = call i32 @iio_dummy_init_device(%struct.iio_dev* %28)
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = load %struct.iio_sw_device*, %struct.iio_sw_device** %7, align 8
  %32 = getelementptr inbounds %struct.iio_sw_device, %struct.iio_sw_device* %31, i32 0, i32 0
  store %struct.iio_dev* %30, %struct.iio_dev** %32, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @kstrdup(i8* %33, i32 %34)
  %36 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @iio_dummy_channels, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @iio_dummy_channels, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 1
  store i32* @iio_dummy_info, i32** %46, align 8
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = call i32 @iio_simple_dummy_events_register(%struct.iio_dev* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %22
  br label %78

55:                                               ; preds = %22
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = call i32 @iio_simple_dummy_configure_buffer(%struct.iio_dev* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %75

61:                                               ; preds = %55
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = call i32 @iio_device_register(%struct.iio_dev* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %61
  %68 = load %struct.iio_sw_device*, %struct.iio_sw_device** %7, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @iio_swd_group_init_type_name(%struct.iio_sw_device* %68, i8* %69, i32* @iio_dummy_type)
  %71 = load %struct.iio_sw_device*, %struct.iio_sw_device** %7, align 8
  store %struct.iio_sw_device* %71, %struct.iio_sw_device** %2, align 8
  br label %87

72:                                               ; preds = %66
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = call i32 @iio_simple_dummy_unconfigure_buffer(%struct.iio_dev* %73)
  br label %75

75:                                               ; preds = %72, %60
  %76 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %77 = call i32 @iio_simple_dummy_events_unregister(%struct.iio_dev* %76)
  br label %78

78:                                               ; preds = %75, %54
  %79 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %80 = call i32 @iio_device_free(%struct.iio_dev* %79)
  br label %81

81:                                               ; preds = %78, %19
  %82 = load %struct.iio_sw_device*, %struct.iio_sw_device** %7, align 8
  %83 = call i32 @kfree(%struct.iio_sw_device* %82)
  br label %84

84:                                               ; preds = %81, %12
  %85 = load i32, i32* %4, align 4
  %86 = call %struct.iio_sw_device* @ERR_PTR(i32 %85)
  store %struct.iio_sw_device* %86, %struct.iio_sw_device** %2, align 8
  br label %87

87:                                               ; preds = %84, %67
  %88 = load %struct.iio_sw_device*, %struct.iio_sw_device** %2, align 8
  ret %struct.iio_sw_device* %88
}

declare dso_local %struct.iio_sw_device* @kzalloc(i32, i32) #1

declare dso_local %struct.iio_dev* @iio_device_alloc(i32) #1

declare dso_local %struct.iio_dummy_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_dummy_init_device(%struct.iio_dev*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_simple_dummy_events_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_simple_dummy_configure_buffer(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_swd_group_init_type_name(%struct.iio_sw_device*, i8*, i32*) #1

declare dso_local i32 @iio_simple_dummy_unconfigure_buffer(%struct.iio_dev*) #1

declare dso_local i32 @iio_simple_dummy_events_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_free(%struct.iio_dev*) #1

declare dso_local i32 @kfree(%struct.iio_sw_device*) #1

declare dso_local %struct.iio_sw_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
