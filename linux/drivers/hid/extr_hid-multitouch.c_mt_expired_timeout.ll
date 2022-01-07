; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_expired_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_expired_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_device = type { i32, %struct.hid_device* }
%struct.hid_device = type { i32 }
%struct.timer_list = type { i32 }

@release_timer = common dso_local global i32 0, align 4
@MT_IO_FLAGS_RUNNING = common dso_local global i32 0, align 4
@MT_IO_FLAGS_PENDING_SLOTS = common dso_local global i32 0, align 4
@td = common dso_local global %struct.mt_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mt_expired_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_expired_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mt_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.mt_device*, %struct.mt_device** %3, align 8
  %6 = ptrtoint %struct.mt_device* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @release_timer, align 4
  %9 = call %struct.mt_device* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.mt_device* %9, %struct.mt_device** %3, align 8
  %10 = load %struct.mt_device*, %struct.mt_device** %3, align 8
  %11 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %10, i32 0, i32 1
  %12 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  store %struct.hid_device* %12, %struct.hid_device** %4, align 8
  %13 = load i32, i32* @MT_IO_FLAGS_RUNNING, align 4
  %14 = load %struct.mt_device*, %struct.mt_device** %3, align 8
  %15 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %14, i32 0, i32 0
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %33

19:                                               ; preds = %1
  %20 = load i32, i32* @MT_IO_FLAGS_PENDING_SLOTS, align 4
  %21 = load %struct.mt_device*, %struct.mt_device** %3, align 8
  %22 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = call i32 @mt_release_contacts(%struct.hid_device* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @MT_IO_FLAGS_RUNNING, align 4
  %30 = load %struct.mt_device*, %struct.mt_device** %3, align 8
  %31 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %18
  ret void
}

declare dso_local %struct.mt_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt_release_contacts(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
