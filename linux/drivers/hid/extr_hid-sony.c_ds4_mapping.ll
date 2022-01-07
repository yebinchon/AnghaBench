; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_ds4_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_ds4_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@ds4_keymap = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@HID_UP_GENDESK = common dso_local global i32 0, align 4
@HID_GD_HATSWITCH = common dso_local global i32 0, align 4
@ds4_absmap = common dso_local global i32* null, align 8
@EV_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ds4_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds4_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %17 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HID_USAGE_PAGE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @HID_UP_BUTTON, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %6
  %24 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %25 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HID_USAGE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** @ds4_keymap, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %88

34:                                               ; preds = %23
  %35 = load i32*, i32** @ds4_keymap, align 8
  %36 = load i32, i32* %14, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %41 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %42 = load i64**, i64*** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @EV_KEY, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @hid_map_usage_clear(%struct.hid_input* %40, %struct.hid_usage* %41, i64** %42, i32* %43, i32 %44, i32 %45)
  store i32 1, i32* %7, align 4
  br label %88

47:                                               ; preds = %6
  %48 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HID_USAGE_PAGE, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @HID_UP_GENDESK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %47
  %56 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %57 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HID_USAGE, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %62 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HID_GD_HATSWITCH, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %88

67:                                               ; preds = %55
  %68 = load i32, i32* %15, align 4
  %69 = load i32*, i32** @ds4_absmap, align 8
  %70 = call i32 @ARRAY_SIZE(i32* %69)
  %71 = icmp uge i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %7, align 4
  br label %88

73:                                               ; preds = %67
  %74 = load i32*, i32** @ds4_absmap, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %15, align 4
  %79 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %80 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %81 = load i64**, i64*** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* @EV_ABS, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @hid_map_usage_clear(%struct.hid_input* %79, %struct.hid_usage* %80, i64** %81, i32* %82, i32 %83, i32 %84)
  store i32 1, i32* %7, align 4
  br label %88

86:                                               ; preds = %47
  br label %87

87:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %73, %72, %66, %34, %33
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
