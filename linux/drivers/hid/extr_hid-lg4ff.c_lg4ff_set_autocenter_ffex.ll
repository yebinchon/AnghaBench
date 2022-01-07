; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_autocenter_ffex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_autocenter_ffex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32)* @lg4ff_set_autocenter_ffex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lg4ff_set_autocenter_ffex(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.lg4ff_device_entry*, align 8
  %7 = alloca %struct.lg_drv_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %11 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.hid_device* %11, %struct.hid_device** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %12, 90
  %14 = sdiv i32 %13, 65535
  store i32 %14, i32* %4, align 4
  %15 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %16 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.lg_drv_data* %16, %struct.lg_drv_data** %7, align 8
  %17 = load %struct.lg_drv_data*, %struct.lg_drv_data** %7, align 8
  %18 = icmp ne %struct.lg_drv_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.lg_drv_data*, %struct.lg_drv_data** %7, align 8
  %24 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %23, i32 0, i32 0
  %25 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %24, align 8
  store %struct.lg4ff_device_entry* %25, %struct.lg4ff_device_entry** %6, align 8
  %26 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %27 = icmp ne %struct.lg4ff_device_entry* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %30 = call i32 @hid_err(%struct.hid_device* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %74

31:                                               ; preds = %22
  %32 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %33 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %42 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 254, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 3, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 14
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 14
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 0, i32* %63, align 4
  %64 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %65 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %66 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %69 = call i32 @hid_hw_request(%struct.hid_device* %64, %struct.TYPE_4__* %67, i32 %68)
  %70 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %6, align 8
  %71 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %31, %28, %19
  ret void
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
