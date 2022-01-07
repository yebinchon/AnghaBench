; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627thf_read_gpio5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627thf_read_gpio5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.w83627hf_sio_data = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Can not read VID data: Failed to enable SuperIO access\0A\00", align 1
@W83627HF_LD_GPIO5 = common dso_local global i32 0, align 4
@W83627THF_GPIO5_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"GPIO5 disabled, no VID function\0A\00", align 1
@W83627THF_GPIO5_IOSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"GPIO5 not configured for VID function\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Reading VID from GPIO5\0A\00", align 1
@W83627THF_GPIO5_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w83627thf_read_gpio5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627thf_read_gpio5(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.w83627hf_sio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.w83627hf_sio_data* @dev_get_platdata(i32* %8)
  store %struct.w83627hf_sio_data* %9, %struct.w83627hf_sio_data** %4, align 8
  store i32 255, i32* %5, align 4
  %10 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %11 = call i64 @superio_enter(%struct.w83627hf_sio_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %20 = load i32, i32* @W83627HF_LD_GPIO5, align 4
  %21 = call i32 @superio_select(%struct.w83627hf_sio_data* %19, i32 %20)
  store i32 255, i32* %5, align 4
  %22 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %23 = load i32, i32* @W83627THF_GPIO5_EN, align 4
  %24 = call i32 @superio_inb(%struct.w83627hf_sio_data* %22, i32 %23)
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %52

31:                                               ; preds = %18
  %32 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %33 = load i32, i32* @W83627THF_GPIO5_IOSR, align 4
  %34 = call i32 @superio_inb(%struct.w83627hf_sio_data* %32, i32 %33)
  %35 = and i32 %34, 63
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 31
  %38 = icmp ne i32 %37, 31
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %48 = load i32, i32* @W83627THF_GPIO5_DR, align 4
  %49 = call i32 @superio_inb(%struct.w83627hf_sio_data* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %39, %27
  %53 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %4, align 8
  %54 = call i32 @superio_exit(%struct.w83627hf_sio_data* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.w83627hf_sio_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @superio_enter(%struct.w83627hf_sio_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @superio_select(%struct.w83627hf_sio_data*, i32) #1

declare dso_local i32 @superio_inb(%struct.w83627hf_sio_data*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @superio_exit(%struct.w83627hf_sio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
