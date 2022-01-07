; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_lookup_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_lookup_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i64, i32, i32 }
%struct.hid_device_id = type { i64 }

@BUS_USB = common dso_local global i64 0, align 8
@USB_VENDOR_ID_NCR = common dso_local global i64 0, align 8
@USB_DEVICE_ID_NCR_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_NCR_LAST = common dso_local global i32 0, align 4
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i64 0, align 8
@USB_VENDOR_ID_JABRA = common dso_local global i64 0, align 8
@HID_QUIRK_IGNORE = common dso_local global i64 0, align 8
@dquirks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hid_lookup_quirk(%struct.hid_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store i64 0, i64* %4, align 8
  store %struct.hid_device_id* null, %struct.hid_device_id** %5, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BUS_USB, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_VENDOR_ID_NCR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @USB_DEVICE_ID_NCR_FIRST, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @USB_DEVICE_ID_NCR_LAST, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @HID_QUIRK_NO_INIT_REPORTS, align 8
  store i64 %30, i64* %2, align 8
  br label %80

31:                                               ; preds = %23, %17, %11, %1
  %32 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %33 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BUS_USB, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_VENDOR_ID_JABRA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %63 [
    i32 129, label %47
    i32 128, label %55
  ]

47:                                               ; preds = %43
  %48 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 273
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @HID_QUIRK_IGNORE, align 8
  store i64 %53, i64* %2, align 8
  br label %80

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %43
  %56 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 532
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @HID_QUIRK_IGNORE, align 8
  store i64 %61, i64* %2, align 8
  br label %80

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %43, %62, %54
  br label %64

64:                                               ; preds = %63, %37, %31
  %65 = call i32 @mutex_lock(i32* @dquirks_lock)
  %66 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %67 = call %struct.hid_device_id* @hid_exists_dquirk(%struct.hid_device* %66)
  store %struct.hid_device_id* %67, %struct.hid_device_id** %5, align 8
  %68 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %69 = icmp ne %struct.hid_device_id* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %4, align 8
  br label %77

74:                                               ; preds = %64
  %75 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %76 = call i64 @hid_gets_squirk(%struct.hid_device* %75)
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = call i32 @mutex_unlock(i32* @dquirks_lock)
  %79 = load i64, i64* %4, align 8
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %77, %60, %52, %29
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hid_device_id* @hid_exists_dquirk(%struct.hid_device*) #1

declare dso_local i64 @hid_gets_squirk(%struct.hid_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
