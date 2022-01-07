; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_scan_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_scan_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.hid_item = type { i32 }

@HID_MAIN_ITEM_CONSTANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, %struct.hid_item*)* @hid_scan_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_scan_main(%struct.hid_parser* %0, %struct.hid_item* %1) #0 {
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
  switch i32 %13, label %73 [
    i32 132, label %14
    i32 131, label %19
    i32 129, label %20
    i32 128, label %49
    i32 130, label %50
  ]

14:                                               ; preds = %2
  %15 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = call i32 @hid_scan_collection(%struct.hid_parser* %15, i32 %17)
  br label %73

19:                                               ; preds = %2
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HID_MAIN_ITEM_CONSTANT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %73

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %30 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %36 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %37 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hid_scan_input_usage(%struct.hid_parser* %35, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %27

48:                                               ; preds = %27
  br label %73

49:                                               ; preds = %2
  br label %73

50:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %54 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %60 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %61 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hid_scan_feature_usage(%struct.hid_parser* %59, i32 %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %51

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %2, %72, %49, %48, %25, %19, %14
  %74 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %75 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %74, i32 0, i32 0
  %76 = call i32 @memset(%struct.TYPE_2__* %75, i32 0, i32 16)
  ret i32 0
}

declare dso_local i32 @hid_concatenate_usage_page(%struct.hid_parser*) #1

declare dso_local i32 @item_udata(%struct.hid_item*) #1

declare dso_local i32 @hid_scan_collection(%struct.hid_parser*, i32) #1

declare dso_local i32 @hid_scan_input_usage(%struct.hid_parser*, i32) #1

declare dso_local i32 @hid_scan_feature_usage(%struct.hid_parser*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
