; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_up_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_power_up_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32, i32, i32 }

@DRXJ_WAKE_UP_KEY = common dso_local global i32 0, align 4
@DRXJ_MAX_RETRIES_POWERUP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @power_up_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_up_device(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i2c_device_addr, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %9 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %8, i32 0, i32 0
  %10 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %9, align 8
  store %struct.i2c_device_addr* %10, %struct.i2c_device_addr** %4, align 8
  %11 = load i32, i32* @DRXJ_WAKE_UP_KEY, align 4
  %12 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %7, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %34, %1
  store i64 0, i64* %5, align 8
  %22 = call i64 @drxbsp_i2c_write_read(%struct.i2c_device_addr* %7, i32 1, i64* %5, %struct.i2c_device_addr* null, i32 0, i64* null)
  %23 = call i32 @msleep(i32 10)
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %28 = call i64 @drxbsp_i2c_write_read(%struct.i2c_device_addr* null, i32 0, i64* null, %struct.i2c_device_addr* %27, i32 1, i64* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @DRXJ_MAX_RETRIES_POWERUP, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %21, label %36

36:                                               ; preds = %34
  %37 = call i32 @msleep(i32 10)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @DRXJ_MAX_RETRIES_POWERUP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @drxbsp_i2c_write_read(%struct.i2c_device_addr*, i32, i64*, %struct.i2c_device_addr*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
