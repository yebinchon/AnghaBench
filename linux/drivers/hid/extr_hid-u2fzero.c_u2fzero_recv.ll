; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u2fzero_device = type { i32, %struct.u2f_hid_report*, %struct.TYPE_3__*, %struct.u2f_hid_msg*, %struct.hid_device* }
%struct.TYPE_3__ = type { i32, %struct.u2fzero_transfer_context* }
%struct.u2fzero_transfer_context = type { i32 }
%struct.hid_device = type { i32 }
%struct.u2f_hid_report = type { i32 }
%struct.u2f_hid_msg = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"usb_submit_urb failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"hid_hw_output_report failed: %d\00", align 1
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"urb submission timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u2fzero_device*, %struct.u2f_hid_report*, %struct.u2f_hid_msg*)* @u2fzero_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u2fzero_recv(%struct.u2fzero_device* %0, %struct.u2f_hid_report* %1, %struct.u2f_hid_msg* %2) #0 {
  %4 = alloca %struct.u2fzero_device*, align 8
  %5 = alloca %struct.u2f_hid_report*, align 8
  %6 = alloca %struct.u2f_hid_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.u2fzero_transfer_context, align 4
  store %struct.u2fzero_device* %0, %struct.u2fzero_device** %4, align 8
  store %struct.u2f_hid_report* %1, %struct.u2f_hid_report** %5, align 8
  store %struct.u2f_hid_msg* %2, %struct.u2f_hid_msg** %6, align 8
  %10 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %11 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %10, i32 0, i32 4
  %12 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  store %struct.hid_device* %12, %struct.hid_device** %8, align 8
  %13 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %14 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %17 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %16, i32 0, i32 3
  %18 = load %struct.u2f_hid_msg*, %struct.u2f_hid_msg** %17, align 8
  %19 = load %struct.u2f_hid_report*, %struct.u2f_hid_report** %5, align 8
  %20 = call i32 @memcpy(%struct.u2f_hid_msg* %18, %struct.u2f_hid_report* %19, i32 4)
  %21 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %22 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store %struct.u2fzero_transfer_context* %9, %struct.u2fzero_transfer_context** %24, align 8
  %25 = getelementptr inbounds %struct.u2fzero_transfer_context, %struct.u2fzero_transfer_context* %9, i32 0, i32 0
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %28 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* @GFP_NOIO, align 4
  %31 = call i32 @usb_submit_urb(%struct.TYPE_3__* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %80

39:                                               ; preds = %3
  %40 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %41 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %40, i32 0, i32 4
  %42 = load %struct.hid_device*, %struct.hid_device** %41, align 8
  %43 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %44 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %43, i32 0, i32 3
  %45 = load %struct.u2f_hid_msg*, %struct.u2f_hid_msg** %44, align 8
  %46 = call i32 @hid_hw_output_report(%struct.hid_device* %42, %struct.u2f_hid_msg* %45, i32 4)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %80

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.u2fzero_transfer_context, %struct.u2fzero_transfer_context* %9, i32 0, i32 0
  %55 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %56 = call i32 @msecs_to_jiffies(i32 %55)
  %57 = call i32 @wait_for_completion_timeout(i32* %54, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %62 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @usb_kill_urb(%struct.TYPE_3__* %63)
  %65 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %66 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %79

67:                                               ; preds = %53
  %68 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %69 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.u2f_hid_msg*, %struct.u2f_hid_msg** %6, align 8
  %74 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %75 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %74, i32 0, i32 1
  %76 = load %struct.u2f_hid_report*, %struct.u2f_hid_report** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @memcpy(%struct.u2f_hid_msg* %73, %struct.u2f_hid_report* %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %60
  br label %80

80:                                               ; preds = %79, %49, %35
  %81 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %82 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.u2f_hid_msg*, %struct.u2f_hid_report*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @hid_hw_output_report(%struct.hid_device*, %struct.u2f_hid_msg*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
