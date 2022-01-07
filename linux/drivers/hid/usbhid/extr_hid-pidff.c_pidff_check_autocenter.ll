; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_check_autocenter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_check_autocenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"upload request failed\0A\00", align 1
@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@FF_AUTOCENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"device has unknown autocenter control method\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidff_device*, %struct.input_dev*)* @pidff_check_autocenter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_check_autocenter(%struct.pidff_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pidff_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  %7 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %8 = call i32 @pidff_request_effect_upload(%struct.pidff_device* %7, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %13 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @hid_err(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %19 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %28 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = icmp eq i64 %26, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %17
  %39 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %40 = call i32 @pidff_autocenter(%struct.pidff_device* %39, i32 65535)
  %41 = load i32, i32* @FF_AUTOCENTER, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_bit(i32 %41, i32 %44)
  br label %51

46:                                               ; preds = %17
  %47 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %48 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hid_notice(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %53 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %54 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pidff_erase_pid(%struct.pidff_device* %52, i64 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %51, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @pidff_request_effect_upload(%struct.pidff_device*, i32) #1

declare dso_local i32 @hid_err(i32, i8*) #1

declare dso_local i32 @pidff_autocenter(%struct.pidff_device*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @hid_notice(i32, i8*) #1

declare dso_local i32 @pidff_erase_pid(%struct.pidff_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
