; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_led_feedback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_led_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32, i64, i32 }

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@SMS_LED_OFF = common dso_local global i32 0, align 4
@SMS_LED_HI = common dso_local global i32 0, align 4
@SMS_LED_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsdvb_client_t*)* @led_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_feedback(%struct.smsdvb_client_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsdvb_client_t*, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  %4 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %5 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @FE_HAS_LOCK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %12 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SMS_LED_OFF, align 4
  %15 = call i32 @sms_board_led_feedback(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %18 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %21 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @SMS_LED_HI, align 4
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @SMS_LED_LO, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @sms_board_led_feedback(i32 %19, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @sms_board_led_feedback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
