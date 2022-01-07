; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_unifying_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_unifying_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.hid_device* }
%struct.hid_device = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%04x-%4phD\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HID++ Unifying: Got serial: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"HID++ Unifying: Got name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*)* @hidpp_unifying_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_unifying_init(%struct.hidpp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  %8 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %9 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %8, i32 0, i32 0
  %10 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  store %struct.hid_device* %10, %struct.hid_device** %4, align 8
  %11 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %12 = call i32 @hidpp_unifying_get_serial(%struct.hidpp_device* %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23, i32* %6)
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @dbg_hid(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %30 = call i8* @hidpp_unifying_get_name(%struct.hidpp_device* %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %17
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @dbg_hid(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @kfree(i8* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %33, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @hidpp_unifying_get_serial(%struct.hidpp_device*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @dbg_hid(i8*, i8*) #1

declare dso_local i8* @hidpp_unifying_get_name(%struct.hidpp_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
