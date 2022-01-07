; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_feature_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_feature_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i64, i32, i32*, i32 }
%struct.hid_usage = type { i32, i64 }
%struct.mt_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MT_MAX_MAXCONTACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"HID_DG_BUTTONTYPE out of range\0A\00", align 1
@MT_BUTTONTYPE_CLICKPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @mt_feature_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_feature_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.mt_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.mt_device* %9, %struct.mt_device** %7, align 8
  %10 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %11 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %100 [
    i32 128, label %13
    i32 129, label %56
    i32 -16777019, label %88
  ]

13:                                               ; preds = %3
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %16 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mt_get_feature(%struct.hid_device* %14, i32 %17)
  %19 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %20 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %25 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %27 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %13
  %31 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %32 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MT_MAX_MAXCONTACT, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %38 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %41 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30, %13
  %43 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %44 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %50 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %54 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %42
  br label %100

56:                                               ; preds = %3
  %57 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %58 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %66 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %100

68:                                               ; preds = %56
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %71 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mt_get_feature(%struct.hid_device* %69, i32 %72)
  %74 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %75 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %78 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MT_BUTTONTYPE_CLICKPAD, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load %struct.mt_device*, %struct.mt_device** %7, align 8
  %86 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %68
  br label %100

88:                                               ; preds = %3
  %89 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %90 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %95 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %96 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mt_get_feature(%struct.hid_device* %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  br label %100

100:                                              ; preds = %3, %99, %87, %64, %55
  ret void
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @mt_get_feature(%struct.hid_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
