; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_handle_multimode_wheel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_handle_multimode_wheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.lg4ff_compat_mode_switch = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Wheel is not a multimode wheel\0A\00", align 1
@LG4FF_MMODE_NOT_MULTIMODE = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LOGITECH_WHEEL = common dso_local global i64 0, align 8
@lg4ff_no_autoswitch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid product id %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to switch wheel mode, errno %d\0A\00", align 1
@LG4FF_MMODE_IS_MULTIMODE = common dso_local global i32 0, align 4
@LG4FF_MMODE_SWITCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i64*, i64)* @lg4ff_handle_multimode_wheel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4ff_handle_multimode_wheel(%struct.hid_device* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lg4ff_compat_mode_switch*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @lg4ff_identify_multimode_wheel(%struct.hid_device* %14, i64 %15, i64 %16)
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  %25 = call i32 @dbg_hid(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @LG4FF_MMODE_NOT_MULTIMODE, align 4
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @USB_DEVICE_ID_LOGITECH_WHEEL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load i32, i32* @lg4ff_no_autoswitch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %36
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.lg4ff_compat_mode_switch* @lg4ff_get_mode_switch_command(i64 %41, i64 %43)
  store %struct.lg4ff_compat_mode_switch* %44, %struct.lg4ff_compat_mode_switch** %10, align 8
  %45 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %10, align 8
  %46 = icmp ne %struct.lg4ff_compat_mode_switch* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @hid_err(%struct.hid_device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @LG4FF_MMODE_NOT_MULTIMODE, align 4
  store i32 %53, i32* %4, align 4
  br label %69

54:                                               ; preds = %39
  %55 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %56 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %10, align 8
  %57 = call i32 @lg4ff_switch_compatibility_mode(%struct.hid_device* %55, %struct.lg4ff_compat_mode_switch* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @hid_err(%struct.hid_device* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @LG4FF_MMODE_IS_MULTIMODE, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load i32, i32* @LG4FF_MMODE_SWITCHED, align 4
  store i32 %66, i32* %4, align 4
  br label %69

67:                                               ; preds = %36, %31, %27
  %68 = load i32, i32* @LG4FF_MMODE_IS_MULTIMODE, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %65, %60, %47, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @lg4ff_identify_multimode_wheel(%struct.hid_device*, i64, i64) #1

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local %struct.lg4ff_compat_mode_switch* @lg4ff_get_mode_switch_command(i64, i64) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @lg4ff_switch_compatibility_mode(%struct.hid_device*, %struct.lg4ff_compat_mode_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
