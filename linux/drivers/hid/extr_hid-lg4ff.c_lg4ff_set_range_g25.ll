; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_range_g25.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_set_range_g25.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"G25/G27/DFGT: setting range to %u\0A\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i32)* @lg4ff_set_range_g25 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lg4ff_set_range_g25(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lg4ff_device_entry*, align 8
  %6 = alloca %struct.lg_drv_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %10 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.lg_drv_data* %10, %struct.lg_drv_data** %6, align 8
  %11 = load %struct.lg_drv_data*, %struct.lg_drv_data** %6, align 8
  %12 = icmp ne %struct.lg_drv_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = call i32 @hid_err(%struct.hid_device* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.lg_drv_data*, %struct.lg_drv_data** %6, align 8
  %18 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %17, i32 0, i32 0
  %19 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %18, align 8
  store %struct.lg4ff_device_entry* %19, %struct.lg4ff_device_entry** %5, align 8
  %20 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %21 = icmp ne %struct.lg4ff_device_entry* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %24 = call i32 @hid_err(%struct.hid_device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %70

25:                                               ; preds = %16
  %26 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %27 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dbg_hid(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %38 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 248, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 129, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 65280
  %51 = ashr i32 %50, 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 0, i32* %59, align 4
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %62 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %65 = call i32 @hid_hw_request(%struct.hid_device* %60, %struct.TYPE_4__* %63, i32 %64)
  %66 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %5, align 8
  %67 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %25, %22, %13
  ret void
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
