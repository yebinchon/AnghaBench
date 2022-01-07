; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }

@MMA9551_APPID_PEDOMETER = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_SLEEPMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to read configuration registers\0A\00", align 1
@MMA9553_MAX_BITNUM = common dso_local global i32 0, align 4
@MMA9551_RSC_PED = common dso_local global i32 0, align 4
@MMA9553_DEFAULT_SLEEPMIN = common dso_local global i32 0, align 4
@MMA9553_DEFAULT_SLEEPMAX = common dso_local global i32 0, align 4
@MMA9553_DEFAULT_SLEEPTHD = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_CONFIG = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_ACT_DBCNTM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to write configuration registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma9553_data*)* @mma9553_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_init(%struct.mma9553_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mma9553_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %3, align 8
  %5 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %6 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call i32 @mma9551_read_version(%struct.TYPE_8__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %106

13:                                               ; preds = %1
  %14 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %15 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %18 = load i32, i32* @MMA9553_REG_CONF_SLEEPMIN, align 4
  %19 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %20 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_7__* %20 to i32*
  %22 = call i32 @mma9551_read_config_words(%struct.TYPE_8__* %16, i32 %17, i32 %18, i32 6, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %27 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %106

32:                                               ; preds = %13
  %33 = load i32, i32* @MMA9553_MAX_BITNUM, align 4
  %34 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %35 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %37 = call i32 @mma9553_conf_gpio(%struct.mma9553_data* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %106

42:                                               ; preds = %32
  %43 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %44 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* @MMA9551_RSC_PED, align 4
  %47 = call i32 @mma9551_app_reset(%struct.TYPE_8__* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %42
  %53 = load i32, i32* @MMA9553_DEFAULT_SLEEPMIN, align 4
  %54 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %55 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @MMA9553_DEFAULT_SLEEPMAX, align 4
  %58 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %59 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @MMA9553_DEFAULT_SLEEPTHD, align 4
  %62 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %63 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %66 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @MMA9553_MASK_CONF_CONFIG, align 4
  %70 = call i8* @mma9553_set_bits(i8* %68, i32 1, i32 %69)
  %71 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %72 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %75 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @MMA9553_MASK_CONF_ACT_DBCNTM, align 4
  %79 = call i8* @mma9553_set_bits(i8* %77, i32 1, i32 %78)
  %80 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %81 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %84 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %87 = load i32, i32* @MMA9553_REG_CONF_SLEEPMIN, align 4
  %88 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %89 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_7__* %89 to i32*
  %91 = call i32 @mma9551_write_config_words(%struct.TYPE_8__* %85, i32 %86, i32 %87, i32 6, i32* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %52
  %95 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %96 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %52
  %102 = load %struct.mma9553_data*, %struct.mma9553_data** %3, align 8
  %103 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = call i32 @mma9551_set_device_state(%struct.TYPE_8__* %104, i32 1)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %94, %50, %40, %25, %11
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @mma9551_read_version(%struct.TYPE_8__*) #1

declare dso_local i32 @mma9551_read_config_words(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mma9553_conf_gpio(%struct.mma9553_data*) #1

declare dso_local i32 @mma9551_app_reset(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @mma9553_set_bits(i8*, i32, i32) #1

declare dso_local i32 @mma9551_write_config_words(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mma9551_set_device_state(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
