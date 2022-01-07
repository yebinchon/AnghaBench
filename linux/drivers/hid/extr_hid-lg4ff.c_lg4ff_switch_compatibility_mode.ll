; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_switch_compatibility_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_switch_compatibility_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.lg4ff_compat_mode_switch = type { i64, i32* }
%struct.lg4ff_device_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.lg4ff_compat_mode_switch*)* @lg4ff_switch_compatibility_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4ff_switch_compatibility_mode(%struct.hid_device* %0, %struct.lg4ff_compat_mode_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.lg4ff_compat_mode_switch*, align 8
  %6 = alloca %struct.lg4ff_device_entry*, align 8
  %7 = alloca %struct.lg_drv_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.lg4ff_compat_mode_switch* %1, %struct.lg4ff_compat_mode_switch** %5, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.lg_drv_data* %13, %struct.lg_drv_data** %7, align 8
  %14 = load %struct.lg_drv_data*, %struct.lg_drv_data** %7, align 8
  %15 = icmp ne %struct.lg_drv_data* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %18 = call i32 @hid_err(%struct.hid_device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.lg_drv_data*, %struct.lg_drv_data** %7, align 8
  %23 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %22, i32 0, i32 0
  %24 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %23, align 8
  store %struct.lg4ff_device_entry* %24, %struct.lg4ff_device_entry** %6, align 8
  %25 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %26 = icmp ne %struct.lg4ff_device_entry* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %21
  %33 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %34 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %9, align 8
  %42 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %43 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %79, %32
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %5, align 8
  %49 = getelementptr inbounds %struct.lg4ff_compat_mode_switch, %struct.lg4ff_compat_mode_switch* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %54, 7
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %5, align 8
  %58 = getelementptr inbounds %struct.lg4ff_compat_mode_switch, %struct.lg4ff_compat_mode_switch* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = mul nsw i64 7, %61
  %63 = add nsw i64 %60, %62
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %56
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %74 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %75 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %78 = call i32 @hid_hw_request(%struct.hid_device* %73, %struct.TYPE_4__* %76, i32 %77)
  br label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %46

82:                                               ; preds = %46
  %83 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %84 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %88 = call i32 @hid_hw_wait(%struct.hid_device* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %27, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hid_hw_wait(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
