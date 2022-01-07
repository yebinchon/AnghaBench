; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_probe_lcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_probe_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.picolcd_data = type { i32 }

@REPORT_KEY_STATE = common dso_local global i32 0, align 4
@REPORT_IR_DATA = common dso_local global i32 0, align 4
@REPORT_CONTRAST = common dso_local global i32 0, align 4
@REPORT_BRIGHTNESS = common dso_local global i32 0, align 4
@REPORT_LED_STATE = common dso_local global i32 0, align 4
@REPORT_EE_READ = common dso_local global i32 0, align 4
@REPORT_EE_WRITE = common dso_local global i32 0, align 4
@REPORT_READ_MEMORY = common dso_local global i32 0, align 4
@REPORT_WRITE_MEMORY = common dso_local global i32 0, align 4
@REPORT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.picolcd_data*)* @picolcd_probe_lcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_probe_lcd(%struct.hid_device* %0, %struct.picolcd_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.picolcd_data*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.picolcd_data* %1, %struct.picolcd_data** %5, align 8
  %7 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %8 = load i32, i32* @REPORT_KEY_STATE, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call i32 @picolcd_in_report(i32 %8, %struct.hid_device* %9)
  %11 = call i32 @picolcd_init_keys(%struct.picolcd_data* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %17 = load i32, i32* @REPORT_IR_DATA, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = call i32 @picolcd_in_report(i32 %17, %struct.hid_device* %18)
  %20 = call i32 @picolcd_init_cir(%struct.picolcd_data* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %75

24:                                               ; preds = %15
  %25 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %26 = call i32 @picolcd_init_framebuffer(%struct.picolcd_data* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %75

30:                                               ; preds = %24
  %31 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %32 = load i32, i32* @REPORT_CONTRAST, align 4
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = call i32 @picolcd_out_report(i32 %32, %struct.hid_device* %33)
  %35 = call i32 @picolcd_init_lcd(%struct.picolcd_data* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %75

39:                                               ; preds = %30
  %40 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %41 = load i32, i32* @REPORT_BRIGHTNESS, align 4
  %42 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %43 = call i32 @picolcd_out_report(i32 %41, %struct.hid_device* %42)
  %44 = call i32 @picolcd_init_backlight(%struct.picolcd_data* %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %75

48:                                               ; preds = %39
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %50 = load i32, i32* @REPORT_LED_STATE, align 4
  %51 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %52 = call i32 @picolcd_out_report(i32 %50, %struct.hid_device* %51)
  %53 = call i32 @picolcd_init_leds(%struct.picolcd_data* %49, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %75

57:                                               ; preds = %48
  %58 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %59 = load i32, i32* @REPORT_EE_READ, align 4
  %60 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %61 = call i32 @picolcd_out_report(i32 %59, %struct.hid_device* %60)
  %62 = load i32, i32* @REPORT_EE_WRITE, align 4
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = call i32 @picolcd_out_report(i32 %62, %struct.hid_device* %63)
  %65 = load i32, i32* @REPORT_READ_MEMORY, align 4
  %66 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %67 = call i32 @picolcd_out_report(i32 %65, %struct.hid_device* %66)
  %68 = load i32, i32* @REPORT_WRITE_MEMORY, align 4
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = call i32 @picolcd_out_report(i32 %68, %struct.hid_device* %69)
  %71 = load i32, i32* @REPORT_RESET, align 4
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = call i32 @picolcd_out_report(i32 %71, %struct.hid_device* %72)
  %74 = call i32 @picolcd_init_devfs(%struct.picolcd_data* %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73)
  store i32 0, i32* %3, align 4
  br label %89

75:                                               ; preds = %56, %47, %38, %29, %23, %14
  %76 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %77 = call i32 @picolcd_exit_leds(%struct.picolcd_data* %76)
  %78 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %79 = call i32 @picolcd_exit_backlight(%struct.picolcd_data* %78)
  %80 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %81 = call i32 @picolcd_exit_lcd(%struct.picolcd_data* %80)
  %82 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %83 = call i32 @picolcd_exit_framebuffer(%struct.picolcd_data* %82)
  %84 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %85 = call i32 @picolcd_exit_cir(%struct.picolcd_data* %84)
  %86 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %87 = call i32 @picolcd_exit_keys(%struct.picolcd_data* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %75, %57
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @picolcd_init_keys(%struct.picolcd_data*, i32) #1

declare dso_local i32 @picolcd_in_report(i32, %struct.hid_device*) #1

declare dso_local i32 @picolcd_init_cir(%struct.picolcd_data*, i32) #1

declare dso_local i32 @picolcd_init_framebuffer(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_init_lcd(%struct.picolcd_data*, i32) #1

declare dso_local i32 @picolcd_out_report(i32, %struct.hid_device*) #1

declare dso_local i32 @picolcd_init_backlight(%struct.picolcd_data*, i32) #1

declare dso_local i32 @picolcd_init_leds(%struct.picolcd_data*, i32) #1

declare dso_local i32 @picolcd_init_devfs(%struct.picolcd_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @picolcd_exit_leds(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_exit_backlight(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_exit_lcd(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_exit_framebuffer(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_exit_cir(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_exit_keys(%struct.picolcd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
