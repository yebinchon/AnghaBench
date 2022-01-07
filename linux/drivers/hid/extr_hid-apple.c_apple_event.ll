; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i64, i32 }
%struct.apple_sc = type { i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@APPLE_INVERT_HWHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i64 0, align 8
@APPLE_HAS_FN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @apple_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apple_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.apple_sc* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.apple_sc* %12, %struct.apple_sc** %10, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %21 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %26 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %4
  store i32 0, i32* %5, align 4
  br label %78

30:                                               ; preds = %24
  %31 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %32 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @APPLE_INVERT_HWHEEL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %39 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REL_HWHEEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %45 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %50 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %53 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @input_event(i32 %48, i32 %51, i64 %54, i32 %56)
  store i32 1, i32* %5, align 4
  br label %78

58:                                               ; preds = %37, %30
  %59 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %60 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @APPLE_HAS_FN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %67 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %68 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @hidinput_apple_event(%struct.hid_device* %66, i32 %71, %struct.hid_usage* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %78

77:                                               ; preds = %65, %58
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %76, %43, %29
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.apple_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(i32, i32, i64, i32) #1

declare dso_local i64 @hidinput_apple_event(%struct.hid_device*, i32, %struct.hid_usage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
