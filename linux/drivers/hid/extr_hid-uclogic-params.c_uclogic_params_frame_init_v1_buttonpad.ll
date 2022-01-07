; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_frame_init_v1_buttonpad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_frame_init_v1_buttonpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params_frame = type { i32 }
%struct.hid_device = type { i32 }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"generic button -enabling string descriptor not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HK On\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"invalid response to enabling generic buttons: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"generic buttons enabled\0A\00", align 1
@uclogic_rdesc_buttonpad_v1_arr = common dso_local global i32 0, align 4
@uclogic_rdesc_buttonpad_v1_size = common dso_local global i32 0, align 4
@UCLOGIC_RDESC_BUTTONPAD_V1_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uclogic_params_frame*, i32*, %struct.hid_device*)* @uclogic_params_frame_init_v1_buttonpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_frame_init_v1_buttonpad(%struct.uclogic_params_frame* %0, i32* %1, %struct.hid_device* %2) #0 {
  %4 = alloca %struct.uclogic_params_frame*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.uclogic_params_frame* %0, %struct.uclogic_params_frame** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hid_device* %2, %struct.hid_device** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %12)
  store %struct.usb_device* %13, %struct.usb_device** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 16, i64* %11, align 8
  %14 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %4, align 8
  %15 = icmp eq %struct.uclogic_params_frame* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %21 = icmp eq %struct.hid_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %74

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i64 16, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %74

33:                                               ; preds = %25
  %34 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @usb_string(%struct.usb_device* %34, i32 123, i8* %35, i64 16)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EPIPE, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %43 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %71

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %74

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %69

57:                                               ; preds = %48
  %58 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %59 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %4, align 8
  %61 = load i32, i32* @uclogic_rdesc_buttonpad_v1_arr, align 4
  %62 = load i32, i32* @uclogic_rdesc_buttonpad_v1_size, align 4
  %63 = load i32, i32* @UCLOGIC_RDESC_BUTTONPAD_V1_ID, align 4
  %64 = call i32 @uclogic_params_frame_init_with_desc(%struct.uclogic_params_frame* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %74

68:                                               ; preds = %57
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %67, %47, %30, %22
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i64) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @uclogic_params_frame_init_with_desc(%struct.uclogic_params_frame*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
