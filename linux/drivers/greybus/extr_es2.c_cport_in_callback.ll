; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_cport_in_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_cport_in_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.gb_operation_msg_hdr*, %struct.TYPE_2__*, %struct.gb_host_device* }
%struct.gb_operation_msg_hdr = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_host_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"urb cport in error %d (dropped)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"short message received\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid cport id %u received\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to resubmit in-urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @cport_in_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cport_in_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gb_operation_msg_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 3
  %11 = load %struct.gb_host_device*, %struct.gb_host_device** %10, align 8
  store %struct.gb_host_device* %11, %struct.gb_host_device** %3, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = call i32 @check_urb_status(%struct.urb* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EPROTO, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  br label %80

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  br label %90

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %90

46:                                               ; preds = %1
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %80

55:                                               ; preds = %46
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %57, align 8
  store %struct.gb_operation_msg_hdr* %58, %struct.gb_operation_msg_hdr** %5, align 8
  %59 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %5, align 8
  %60 = call i32 @gb_message_cport_unpack(%struct.gb_operation_msg_hdr* %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @cport_id_valid(%struct.gb_host_device* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.urb*, %struct.urb** %2, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 1
  %70 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %69, align 8
  %71 = load %struct.urb*, %struct.urb** %2, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @greybus_data_rcvd(%struct.gb_host_device* %66, i32 %67, %struct.gb_operation_msg_hdr* %70, i32 %73)
  br label %79

75:                                               ; preds = %55
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79, %52, %30
  %81 = load %struct.urb*, %struct.urb** %2, align 8
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call i32 @usb_submit_urb(%struct.urb* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %41, %42, %86, %80
  ret void
}

declare dso_local i32 @check_urb_status(%struct.urb*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @gb_message_cport_unpack(%struct.gb_operation_msg_hdr*) #1

declare dso_local i64 @cport_id_valid(%struct.gb_host_device*, i32) #1

declare dso_local i32 @greybus_data_rcvd(%struct.gb_host_device*, i32, %struct.gb_operation_msg_hdr*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
