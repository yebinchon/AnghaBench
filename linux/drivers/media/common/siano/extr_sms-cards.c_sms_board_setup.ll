; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_sms-cards.c_sms_board_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_sms-cards.c_sms_board_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.sms_board = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sms_board_setup(%struct.smscore_device_t* %0) #0 {
  %2 = alloca %struct.smscore_device_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sms_board*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %2, align 8
  %5 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %6 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sms_board* @sms_get_board(i32 %7)
  store %struct.sms_board* %8, %struct.sms_board** %4, align 8
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %32 [
    i32 128, label %10
    i32 129, label %26
    i32 130, label %26
  ]

10:                                               ; preds = %1
  %11 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %12 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %13 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sms_set_gpio(%struct.smscore_device_t* %11, i32 %14, i32 0)
  %16 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %17 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %18 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sms_set_gpio(%struct.smscore_device_t* %16, i32 %19, i32 0)
  %21 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %22 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %23 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sms_set_gpio(%struct.smscore_device_t* %21, i32 %24, i32 0)
  br label %32

26:                                               ; preds = %1, %1
  %27 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %28 = load %struct.sms_board*, %struct.sms_board** %4, align 8
  %29 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sms_set_gpio(%struct.smscore_device_t* %27, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %1, %26, %10
  ret i32 0
}

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local %struct.sms_board* @sms_get_board(i32) #1

declare dso_local i32 @sms_set_gpio(%struct.smscore_device_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
