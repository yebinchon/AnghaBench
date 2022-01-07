; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_in_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_in_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.arpc_response_message*, %struct.TYPE_2__*, %struct.es2_ap_dev* }
%struct.arpc_response_message = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.es2_ap_dev = type { i32 }
%struct.arpc = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"arpc in-urb error %d (dropped)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"short aprc response received\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid arpc response id received: %u\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to resubmit arpc in-urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @arpc_in_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arpc_in_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.es2_ap_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arpc*, align 8
  %7 = alloca %struct.arpc_response_message*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 3
  %12 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %11, align 8
  store %struct.es2_ap_dev* %12, %struct.es2_ap_dev** %3, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = call i32 @check_urb_status(%struct.urb* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EPROTO, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  br label %98

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ESHUTDOWN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  br label %108

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %108

47:                                               ; preds = %1
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %98

56:                                               ; preds = %47
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load %struct.arpc_response_message*, %struct.arpc_response_message** %58, align 8
  store %struct.arpc_response_message* %59, %struct.arpc_response_message** %7, align 8
  %60 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %61 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %65 = load %struct.arpc_response_message*, %struct.arpc_response_message** %7, align 8
  %66 = getelementptr inbounds %struct.arpc_response_message, %struct.arpc_response_message* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.arpc* @arpc_find(%struct.es2_ap_dev* %64, i32 %67)
  store %struct.arpc* %68, %struct.arpc** %6, align 8
  %69 = load %struct.arpc*, %struct.arpc** %6, align 8
  %70 = icmp ne %struct.arpc* %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %56
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.arpc_response_message*, %struct.arpc_response_message** %7, align 8
  %74 = getelementptr inbounds %struct.arpc_response_message, %struct.arpc_response_message* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %79 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %98

82:                                               ; preds = %56
  %83 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %84 = load %struct.arpc*, %struct.arpc** %6, align 8
  %85 = call i32 @arpc_del(%struct.es2_ap_dev* %83, %struct.arpc* %84)
  %86 = load %struct.arpc*, %struct.arpc** %6, align 8
  %87 = getelementptr inbounds %struct.arpc, %struct.arpc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.arpc_response_message*, %struct.arpc_response_message** %7, align 8
  %90 = call i32 @memcpy(i32 %88, %struct.arpc_response_message* %89, i32 4)
  %91 = load %struct.arpc*, %struct.arpc** %6, align 8
  %92 = getelementptr inbounds %struct.arpc, %struct.arpc* %91, i32 0, i32 0
  %93 = call i32 @complete(i32* %92)
  %94 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %95 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %82, %71, %53, %31
  %99 = load %struct.urb*, %struct.urb** %2, align 8
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call i32 @usb_submit_urb(%struct.urb* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %42, %43, %104, %98
  ret void
}

declare dso_local i32 @check_urb_status(%struct.urb*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.arpc* @arpc_find(%struct.es2_ap_dev*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @arpc_del(%struct.es2_ap_dev*, %struct.arpc*) #1

declare dso_local i32 @memcpy(i32, %struct.arpc_response_message*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
