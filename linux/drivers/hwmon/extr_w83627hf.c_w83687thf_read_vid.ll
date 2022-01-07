; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83687thf_read_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83687thf_read_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.w83627hf_sio_data = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Can not read VID data: Failed to enable SuperIO access\0A\00", align 1
@W83627HF_LD_HWM = common dso_local global i32 0, align 4
@W83687THF_VID_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VID disabled, no VID function\0A\00", align 1
@W83687THF_VID_CFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"VID configured as output, no VID function\0A\00", align 1
@W83687THF_VID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w83687thf_read_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83687thf_read_vid(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.w83627hf_sio_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.w83627hf_sio_data* @dev_get_platdata(i32* %7)
  store %struct.w83627hf_sio_data* %8, %struct.w83627hf_sio_data** %4, align 8
  store i32 255, i32* %5, align 4
  %9 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %10 = call i64 @superio_enter(%struct.w83627hf_sio_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_warn(i32* %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %19 = load i32, i32* @W83627HF_LD_HWM, align 4
  %20 = call i32 @superio_select(%struct.w83627hf_sio_data* %18, i32 %19)
  %21 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %22 = load i32, i32* @W83687THF_VID_EN, align 4
  %23 = call i32 @superio_inb(%struct.w83627hf_sio_data* %21, i32 %22)
  %24 = and i32 %23, 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %45

30:                                               ; preds = %17
  %31 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %32 = load i32, i32* @W83687THF_VID_CFG, align 4
  %33 = call i32 @superio_inb(%struct.w83627hf_sio_data* %31, i32 %32)
  %34 = and i32 %33, 16
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %42 = load i32, i32* @W83687THF_VID_DATA, align 4
  %43 = call i32 @superio_inb(%struct.w83627hf_sio_data* %41, i32 %42)
  %44 = and i32 %43, 63
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %36, %26
  %46 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %47 = call i32 @superio_exit(%struct.w83627hf_sio_data* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.w83627hf_sio_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @superio_enter(%struct.w83627hf_sio_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @superio_select(%struct.w83627hf_sio_data*, i32) #1

declare dso_local i32 @superio_inb(%struct.w83627hf_sio_data*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @superio_exit(%struct.w83627hf_sio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
