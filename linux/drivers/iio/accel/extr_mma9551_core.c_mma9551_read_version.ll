; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_read_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_read_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mma9551_version_info = type { i32*, i32 }

@MMA9551_APPID_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"device ID 0x%x, firmware version %02x.%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mma9551_read_version(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mma9551_version_info, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* @MMA9551_APPID_VERSION, align 4
  %8 = bitcast %struct.mma9551_version_info* %4 to i32*
  %9 = call i32 @mma9551_transfer(%struct.i2c_client* %6, i32 %7, i32 0, i32 0, i32* null, i32 0, i32* %8, i32 16)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.mma9551_version_info, %struct.mma9551_version_info* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = getelementptr inbounds %struct.mma9551_version_info, %struct.mma9551_version_info* %4, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.mma9551_version_info, %struct.mma9551_version_info* %4, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_info(i32* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @mma9551_transfer(%struct.i2c_client*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
