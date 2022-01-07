; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_apb_log_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_apb_log_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32 }

@APB1_LOG_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @apb_log_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_log_poll(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.es2_ap_dev*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.es2_ap_dev*
  store %struct.es2_ap_dev* %7, %struct.es2_ap_dev** %4, align 8
  %8 = load i32, i32* @APB1_LOG_MSG_SIZE, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %21, %16
  %18 = call i32 (...) @kthread_should_stop()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = call i32 @msleep(i32 1000)
  %23 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @apb_log_get(%struct.es2_ap_dev* %23, i8* %24)
  br label %17

26:                                               ; preds = %17
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @kfree(i8* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @apb_log_get(%struct.es2_ap_dev*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
