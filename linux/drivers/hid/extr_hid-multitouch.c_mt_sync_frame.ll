; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_sync_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_sync_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_device = type { i32 }
%struct.mt_application = type { i32, i64, i64, i64 }
%struct.input_dev = type { i32 }

@MT_QUIRK_WIN8_PTP_BUTTONS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_TIMESTAMP = common dso_local global i32 0, align 4
@MT_IO_FLAGS_ACTIVE_SLOTS = common dso_local global i32 0, align 4
@MT_IO_FLAGS_PENDING_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt_device*, %struct.mt_application*, %struct.input_dev*)* @mt_sync_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_sync_frame(%struct.mt_device* %0, %struct.mt_application* %1, %struct.input_dev* %2) #0 {
  %4 = alloca %struct.mt_device*, align 8
  %5 = alloca %struct.mt_application*, align 8
  %6 = alloca %struct.input_dev*, align 8
  store %struct.mt_device* %0, %struct.mt_device** %4, align 8
  store %struct.mt_application* %1, %struct.mt_application** %5, align 8
  store %struct.input_dev* %2, %struct.input_dev** %6, align 8
  %7 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %8 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MT_QUIRK_WIN8_PTP_BUTTONS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %15 = load i32, i32* @EV_KEY, align 4
  %16 = load i32, i32* @BTN_LEFT, align 4
  %17 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %18 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @input_event(%struct.input_dev* %14, i32 %15, i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %23 = call i32 @input_mt_sync_frame(%struct.input_dev* %22)
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = load i32, i32* @EV_MSC, align 4
  %26 = load i32, i32* @MSC_TIMESTAMP, align 4
  %27 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %28 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @input_event(%struct.input_dev* %24, i32 %25, i32 %26, i64 %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %32 = call i32 @input_sync(%struct.input_dev* %31)
  %33 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %34 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %36 = call i32 @mt_release_pending_palms(%struct.mt_device* %33, %struct.mt_application* %34, %struct.input_dev* %35)
  %37 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %38 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.mt_application*, %struct.mt_application** %5, align 8
  %40 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @MT_IO_FLAGS_ACTIVE_SLOTS, align 4
  %42 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %43 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %21
  %47 = load i32, i32* @MT_IO_FLAGS_PENDING_SLOTS, align 4
  %48 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %49 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  br label %56

51:                                               ; preds = %21
  %52 = load i32, i32* @MT_IO_FLAGS_PENDING_SLOTS, align 4
  %53 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %54 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %53, i32 0, i32 0
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @MT_IO_FLAGS_ACTIVE_SLOTS, align 4
  %58 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %59 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i64) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mt_release_pending_palms(%struct.mt_device*, %struct.mt_application*, %struct.input_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
