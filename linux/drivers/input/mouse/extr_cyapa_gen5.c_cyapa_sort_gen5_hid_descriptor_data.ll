; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_sort_gen5_hid_descriptor_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_sort_gen5_hid_descriptor_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@PIP_HID_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_HID_BL_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_BL_MAX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@PIP_HID_APP_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_APP_MAX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*, i32)* @cyapa_sort_gen5_hid_descriptor_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_sort_gen5_hid_descriptor_data(%struct.cyapa* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @get_unaligned_le16(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  %21 = call i32 @get_unaligned_le16(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %14
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PIP_HID_BL_REPORT_ID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @GEN5_BL_MAX_OUTPUT_LENGTH, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %52

37:                                               ; preds = %32, %25
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PIP_HID_APP_REPORT_ID, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @GEN5_APP_MAX_OUTPUT_LENGTH, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %52

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %14
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48, %36, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
