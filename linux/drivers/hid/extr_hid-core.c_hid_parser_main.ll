; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_parser_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_parser_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32, i32 }
%struct.hid_item = type { i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown main item tag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, %struct.hid_item*)* @hid_parser_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_parser_main(%struct.hid_parser* %0, %struct.hid_item* %1) #0 {
  %3 = alloca %struct.hid_parser*, align 8
  %4 = alloca %struct.hid_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %3, align 8
  store %struct.hid_item* %1, %struct.hid_item** %4, align 8
  %7 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %8 = call i32 @hid_concatenate_usage_page(%struct.hid_parser* %7)
  %9 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %10 = call i32 @item_udata(%struct.hid_item* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %12 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %37 [
    i32 132, label %14
    i32 131, label %19
    i32 129, label %22
    i32 128, label %27
    i32 130, label %32
  ]

14:                                               ; preds = %2
  %15 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = call i32 @open_collection(%struct.hid_parser* %15, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %21 = call i32 @close_collection(%struct.hid_parser* %20)
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %24 = load i32, i32* @HID_INPUT_REPORT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @hid_add_field(%struct.hid_parser* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %2
  %28 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %29 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hid_add_field(%struct.hid_parser* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %34 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @hid_add_field(%struct.hid_parser* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %39 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %42 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hid_warn(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %32, %27, %22, %19, %14
  %46 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %47 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %46, i32 0, i32 0
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @hid_concatenate_usage_page(%struct.hid_parser*) #1

declare dso_local i32 @item_udata(%struct.hid_item*) #1

declare dso_local i32 @open_collection(%struct.hid_parser*, i32) #1

declare dso_local i32 @close_collection(%struct.hid_parser*) #1

declare dso_local i32 @hid_add_field(%struct.hid_parser*, i32, i32) #1

declare dso_local i32 @hid_warn(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
