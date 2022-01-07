; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@SIL164_VENDOR_HI = common dso_local global i32 0, align 4
@SIL164_VENDOR_LO = common dso_local global i32 0, align 4
@SIL164_DEVICE_HI = common dso_local global i32 0, align 4
@SIL164_DEVICE_LO = common dso_local global i32 0, align 4
@SIL164_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown device %x:%x.%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Detected device %x:%x.%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sil164_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sil164_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @SIL164_VENDOR_HI, align 4
  %11 = call i32 @sil164_read(%struct.i2c_client* %9, i32 %10)
  %12 = shl i32 %11, 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* @SIL164_VENDOR_LO, align 4
  %15 = call i32 @sil164_read(%struct.i2c_client* %13, i32 %14)
  %16 = or i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* @SIL164_DEVICE_HI, align 4
  %19 = call i32 @sil164_read(%struct.i2c_client* %17, i32 %18)
  %20 = shl i32 %19, 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @SIL164_DEVICE_LO, align 4
  %23 = call i32 @sil164_read(%struct.i2c_client* %21, i32 %22)
  %24 = or i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @SIL164_REVISION, align 4
  %27 = call i32 @sil164_read(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 6
  br i1 %32, label %33, label %41

33:                                               ; preds = %30, %2
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @sil164_dbg(%struct.i2c_client* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @sil164_info(%struct.i2c_client* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @sil164_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @sil164_dbg(%struct.i2c_client*, i8*, i32, i32, i32) #1

declare dso_local i32 @sil164_info(%struct.i2c_client*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
