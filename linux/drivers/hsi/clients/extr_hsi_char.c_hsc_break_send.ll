; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_break_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_break_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsi_msg = type { i32, i32 (%struct.hsi_msg*)*, i32 (%struct.hsi_msg*)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_client*)* @hsc_break_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsc_break_send(%struct.hsi_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.hsi_msg* @hsi_alloc_msg(i32 0, i32 %6)
  store %struct.hsi_msg* %7, %struct.hsi_msg** %4, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %9 = icmp ne %struct.hsi_msg* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %15 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %17 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %16, i32 0, i32 2
  store i32 (%struct.hsi_msg*)* @hsi_free_msg, i32 (%struct.hsi_msg*)** %17, align 8
  %18 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %19 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %18, i32 0, i32 1
  store i32 (%struct.hsi_msg*)* @hsi_free_msg, i32 (%struct.hsi_msg*)** %19, align 8
  %20 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %21 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %22 = call i32 @hsi_async_write(%struct.hsi_client* %20, %struct.hsi_msg* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %27 = call i32 @hsi_free_msg(%struct.hsi_msg* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i32, i32) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

declare dso_local i32 @hsi_async_write(%struct.hsi_client*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
