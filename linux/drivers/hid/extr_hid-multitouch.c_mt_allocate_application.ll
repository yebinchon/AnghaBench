; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_allocate_application.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_allocate_application.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_application = type { i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.mt_device = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hid_report = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HID_DG_TOUCHSCREEN = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@HID_DG_TOUCHPAD = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@MT_INPUTMODE_TOUCHPAD = common dso_local global i32 0, align 4
@DEFAULT_ZERO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt_application* (%struct.mt_device*, %struct.hid_report*)* @mt_allocate_application to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt_application* @mt_allocate_application(%struct.mt_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.mt_application*, align 8
  %4 = alloca %struct.mt_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt_application*, align 8
  store %struct.mt_device* %0, %struct.mt_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %8 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %9 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %12 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mt_application* @devm_kzalloc(i32* %14, i32 40, i32 %15)
  store %struct.mt_application* %16, %struct.mt_application** %7, align 8
  %17 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %18 = icmp ne %struct.mt_application* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.mt_application* null, %struct.mt_application** %3, align 8
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %23 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %25 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %24, i32 0, i32 7
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HID_DG_TOUCHSCREEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %32 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %33 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %20
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @HID_DG_TOUCHPAD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* @INPUT_MT_POINTER, align 4
  %42 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %43 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @MT_INPUTMODE_TOUCHPAD, align 4
  %47 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %48 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %40, %36
  %50 = load i8*, i8** @DEFAULT_ZERO, align 8
  %51 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %52 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @DEFAULT_ZERO, align 8
  %54 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %55 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %57 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %61 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %63 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %66 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %68 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %67, i32 0, i32 1
  %69 = load %struct.mt_device*, %struct.mt_device** %4, align 8
  %70 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %69, i32 0, i32 0
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  store %struct.mt_application* %72, %struct.mt_application** %3, align 8
  br label %73

73:                                               ; preds = %49, %19
  %74 = load %struct.mt_application*, %struct.mt_application** %3, align 8
  ret %struct.mt_application* %74
}

declare dso_local %struct.mt_application* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
