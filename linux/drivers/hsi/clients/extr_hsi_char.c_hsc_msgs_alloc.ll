; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_msgs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_msgs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsc_channel = type { i32, i32 }
%struct.hsi_msg = type { i32, i32 }

@HSC_MSGS = common dso_local global i32 0, align 4
@max_data_size = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsc_channel*)* @hsc_msgs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsc_msgs_alloc(%struct.hsc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsc_channel*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.hsc_channel* %0, %struct.hsc_channel** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HSC_MSGS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load i32, i32* @max_data_size, align 4
  %12 = call %struct.hsi_msg* @hsc_msg_alloc(i32 %11)
  store %struct.hsi_msg* %12, %struct.hsi_msg** %4, align 8
  %13 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %14 = icmp ne %struct.hsi_msg* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.hsc_channel*, %struct.hsc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %21 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %23 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %22, i32 0, i32 0
  %24 = load %struct.hsc_channel*, %struct.hsc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %37

31:                                               ; preds = %15
  %32 = load %struct.hsc_channel*, %struct.hsc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %32, i32 0, i32 0
  %34 = call i32 @hsc_free_list(i32* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.hsi_msg* @hsc_msg_alloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hsc_free_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
