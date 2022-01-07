; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_setup_gamepad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_setup_gamepad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, %struct.ims_pcu_gamepad*, i32, %struct.TYPE_4__*, i32 }
%struct.ims_pcu_gamepad = type { i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Not enough memory for gamepad device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"IMS PCU#%d Gamepad Interface\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input1\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to register gamepad input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_setup_gamepad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_setup_gamepad(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca %struct.ims_pcu_gamepad*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ims_pcu_gamepad* @kzalloc(i32 16, i32 %7)
  store %struct.ims_pcu_gamepad* %8, %struct.ims_pcu_gamepad** %4, align 8
  %9 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %11 = icmp ne %struct.ims_pcu_gamepad* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = icmp ne %struct.input_dev* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %17 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %127

22:                                               ; preds = %12
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %25 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %24, i32 0, i32 2
  store %struct.input_dev* %23, %struct.input_dev** %25, align 8
  %26 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %27 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %30 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %34 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %37 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_make_path(i32 %35, i32 %38, i32 4)
  %40 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %41 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strlcat(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %44 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %45 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %50 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %55 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 3
  %59 = call i32 @usb_to_input_id(i32 %56, i32* %58)
  %60 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %61 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load i32, i32* @EV_KEY, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @__set_bit(i32 %67, i32 %70)
  %72 = load i32, i32* @BTN_A, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__set_bit(i32 %72, i32 %75)
  %77 = load i32, i32* @BTN_B, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__set_bit(i32 %77, i32 %80)
  %82 = load i32, i32* @BTN_X, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__set_bit(i32 %82, i32 %85)
  %87 = load i32, i32* @BTN_Y, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @__set_bit(i32 %87, i32 %90)
  %92 = load i32, i32* @BTN_START, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__set_bit(i32 %92, i32 %95)
  %97 = load i32, i32* @BTN_SELECT, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__set_bit(i32 %97, i32 %100)
  %102 = load i32, i32* @EV_ABS, align 4
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__set_bit(i32 %102, i32 %105)
  %107 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %108 = load i32, i32* @ABS_X, align 4
  %109 = call i32 @input_set_abs_params(%struct.input_dev* %107, i32 %108, i32 -1, i32 1, i32 0, i32 0)
  %110 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %111 = load i32, i32* @ABS_Y, align 4
  %112 = call i32 @input_set_abs_params(%struct.input_dev* %110, i32 %111, i32 -1, i32 1, i32 0, i32 0)
  %113 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %114 = call i32 @input_register_device(%struct.input_dev* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %22
  %118 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %119 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %127

123:                                              ; preds = %22
  %124 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %125 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %126 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %125, i32 0, i32 1
  store %struct.ims_pcu_gamepad* %124, %struct.ims_pcu_gamepad** %126, align 8
  store i32 0, i32* %2, align 4
  br label %134

127:                                              ; preds = %117, %15
  %128 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %129 = call i32 @input_free_device(%struct.input_dev* %128)
  %130 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %4, align 8
  %131 = call i32 @kfree(%struct.ims_pcu_gamepad* %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %127, %123
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.ims_pcu_gamepad* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.ims_pcu_gamepad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
