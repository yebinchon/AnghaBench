; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_dualshock4_get_version_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_dualshock4_get_version_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i8*, i8*, i32 }

@DS4_FEATURE_REPORT_0xA3_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sony_sc*)* @dualshock4_get_version_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dualshock4_get_version_info(%struct.sony_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sony_sc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.sony_sc* %0, %struct.sony_sc** %3, align 8
  %6 = load i32, i32* @DS4_FEATURE_REPORT_0xA3_SIZE, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc(i32 %6, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %16 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @DS4_FEATURE_REPORT_0xA3_SIZE, align 4
  %20 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %21 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %22 = call i32 @hid_hw_raw_request(i32 %17, i32 163, i32* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %14
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 35
  %32 = call i8* @get_unaligned_le16(i32* %31)
  %33 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %34 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 41
  %37 = call i8* @get_unaligned_le16(i32* %36)
  %38 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %39 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @kfree(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %29, %25, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
