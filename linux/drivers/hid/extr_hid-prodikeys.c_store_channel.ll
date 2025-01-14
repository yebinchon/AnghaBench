; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_store_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_store_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.pk_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@PCMIDI_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pcmidi sysfs write channel=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_channel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.pk_device*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.hid_device* @to_hid_device(%struct.device* %13)
  store %struct.hid_device* %14, %struct.hid_device** %10, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %16 = call %struct.pk_device* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.pk_device* %16, %struct.pk_device** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @PCMIDI_CHANNEL_MAX, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @dbg_hid(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.pk_device*, %struct.pk_device** %11, align 8
  %29 = getelementptr inbounds %struct.pk_device, %struct.pk_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %20, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.pk_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
