; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_input_mapping_scrollpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_input_mapping_scrollpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i64 }

@HID_GD_Z = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lenovo_input_mapping_scrollpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_input_mapping_scrollpoint(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HID_GD_Z, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %21 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %22 = load i64**, i64*** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* @EV_REL, align 4
  %25 = load i32, i32* @REL_HWHEEL, align 4
  %26 = call i32 @hid_map_usage(%struct.hid_input* %20, %struct.hid_usage* %21, i64** %22, i32* %23, i32 %24, i32 %25)
  store i32 1, i32* %7, align 4
  br label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
