; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvbdev.c_dvb_generic_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvbdev.c_dvb_generic_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dvb_generic_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dvb_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  store %struct.dvb_device* %11, %struct.dvb_device** %8, align 8
  %12 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %13 = icmp ne %struct.dvb_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @ENODEV, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %19 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %33

25:                                               ; preds = %17
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %30 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @dvb_usercopy(%struct.file* %26, i32 %27, i64 %28, i32 %31)
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %25, %22, %14
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i64 @dvb_usercopy(%struct.file*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
