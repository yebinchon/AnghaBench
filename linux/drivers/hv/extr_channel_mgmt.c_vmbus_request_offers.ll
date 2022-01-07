; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_request_offers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_request_offers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel_message_header = type { i32 }
%struct.vmbus_channel_msginfo = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANNELMSG_REQUESTOFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to request offers - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_request_offers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vmbus_channel_message_header*, align 8
  %3 = alloca %struct.vmbus_channel_msginfo*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vmbus_channel_msginfo* @kmalloc(i32 12, i32 %5)
  store %struct.vmbus_channel_msginfo* %6, %struct.vmbus_channel_msginfo** %3, align 8
  %7 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %8 = icmp ne %struct.vmbus_channel_msginfo* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %34

12:                                               ; preds = %0
  %13 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %14 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vmbus_channel_message_header*
  store %struct.vmbus_channel_message_header* %16, %struct.vmbus_channel_message_header** %2, align 8
  %17 = load i32, i32* @CHANNELMSG_REQUESTOFFERS, align 4
  %18 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %21 = call i32 @vmbus_post_msg(%struct.vmbus_channel_message_header* %20, i32 4, i32 1)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @trace_vmbus_request_offers(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %30

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %32 = call i32 @kfree(%struct.vmbus_channel_msginfo* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %30, %9
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local %struct.vmbus_channel_msginfo* @kmalloc(i32, i32) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_message_header*, i32, i32) #1

declare dso_local i32 @trace_vmbus_request_offers(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
