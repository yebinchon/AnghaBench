; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_key_up_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_key_up_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.appleir = type { i32, i64, %struct.hid_device* }
%struct.hid_device = type { i32 }
%struct.timer_list = type { i32 }

@key_up_timer = common dso_local global i32 0, align 4
@appleir = common dso_local global %struct.appleir* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @key_up_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_up_tick(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.appleir*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.appleir*, %struct.appleir** %3, align 8
  %7 = ptrtoint %struct.appleir* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @key_up_timer, align 4
  %10 = call %struct.appleir* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.appleir* %10, %struct.appleir** %3, align 8
  %11 = load %struct.appleir*, %struct.appleir** %3, align 8
  %12 = getelementptr inbounds %struct.appleir, %struct.appleir* %11, i32 0, i32 2
  %13 = load %struct.hid_device*, %struct.hid_device** %12, align 8
  store %struct.hid_device* %13, %struct.hid_device** %4, align 8
  %14 = load %struct.appleir*, %struct.appleir** %3, align 8
  %15 = getelementptr inbounds %struct.appleir, %struct.appleir* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.appleir*, %struct.appleir** %3, align 8
  %19 = getelementptr inbounds %struct.appleir, %struct.appleir* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = load %struct.appleir*, %struct.appleir** %3, align 8
  %25 = load %struct.appleir*, %struct.appleir** %3, align 8
  %26 = getelementptr inbounds %struct.appleir, %struct.appleir* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @key_up(%struct.hid_device* %23, %struct.appleir* %24, i64 %27)
  %29 = load %struct.appleir*, %struct.appleir** %3, align 8
  %30 = getelementptr inbounds %struct.appleir, %struct.appleir* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.appleir*, %struct.appleir** %3, align 8
  %33 = getelementptr inbounds %struct.appleir, %struct.appleir* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local %struct.appleir* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @key_up(%struct.hid_device*, %struct.appleir*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
