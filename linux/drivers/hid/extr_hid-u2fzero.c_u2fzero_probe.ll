; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i32 }
%struct.hid_device_id = type { i32 }
%struct.u2fzero_device = type { i32, i32, %struct.hid_device*, i32*, i32* }
%struct.hidraw = type { i32 }

@usb_hid_driver = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"U2F Zero LED initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"U2F Zero RNG initialised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @u2fzero_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u2fzero_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.u2fzero_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call i32 @hid_is_using_ll_driver(%struct.hid_device* %9, i32* @usb_hid_driver)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %114

15:                                               ; preds = %2
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.u2fzero_device* @devm_kzalloc(i32* %17, i32 32, i32 %18)
  store %struct.u2fzero_device* %19, %struct.u2fzero_device** %6, align 8
  %20 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %21 = icmp eq %struct.u2fzero_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %15
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kmalloc(i32* %27, i32 4, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %32 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %34 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %114

40:                                               ; preds = %25
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @devm_kmalloc(i32* %42, i32 4, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %47 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %49 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %114

55:                                               ; preds = %40
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = call i32 @hid_parse(%struct.hid_device* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %114

62:                                               ; preds = %55
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %65 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %64, i32 0, i32 2
  store %struct.hid_device* %63, %struct.hid_device** %65, align 8
  %66 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %67 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %68 = call i32 @hid_set_drvdata(%struct.hid_device* %66, %struct.u2fzero_device* %67)
  %69 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %70 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %69, i32 0, i32 1
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  %74 = call i32 @hid_hw_start(%struct.hid_device* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %114

79:                                               ; preds = %62
  %80 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %81 = call i32 @u2fzero_fill_in_urb(%struct.u2fzero_device* %80)
  %82 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %83 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %85 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.hidraw*
  %88 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @u2fzero_init_led(%struct.u2fzero_device* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %97 = call i32 @hid_hw_stop(%struct.hid_device* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %114

99:                                               ; preds = %79
  %100 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %101 = call i32 @hid_info(%struct.hid_device* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.u2fzero_device*, %struct.u2fzero_device** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @u2fzero_init_hwrng(%struct.u2fzero_device* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %109 = call i32 @hid_hw_stop(%struct.hid_device* %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %114

111:                                              ; preds = %99
  %112 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %113 = call i32 @hid_info(%struct.hid_device* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %107, %95, %77, %60, %52, %37, %22, %12
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @hid_is_using_ll_driver(%struct.hid_device*, i32*) #1

declare dso_local %struct.u2fzero_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.u2fzero_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @u2fzero_fill_in_urb(%struct.u2fzero_device*) #1

declare dso_local i32 @u2fzero_init_led(%struct.u2fzero_device*, i32) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @u2fzero_init_hwrng(%struct.u2fzero_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
