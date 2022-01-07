; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_clear_to_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_clear_to_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i32, %struct.i40iw_device* }
%struct.i40iw_device = type { i32 }

@I40IW_VCHNL_EVENT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_vf_clear_to_send(%struct.i40iw_sc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %3, align 8
  %6 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %6, i32 0, i32 2
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  store %struct.i40iw_device* %8, %struct.i40iw_device** %4, align 8
  %9 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %9, i32 0, i32 1
  %11 = call i32 @wq_has_sleeper(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %45

19:                                               ; preds = %13, %1
  %20 = call i32 @init_wait(i32* %5)
  %21 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %21, i32 0, i32 1
  %23 = call i32 @add_wait_queue_exclusive(i32* %22, i32* %5)
  %24 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %28 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @I40IW_VCHNL_EVENT_TIMEOUT, align 4
  %33 = call i32 @wait_event_timeout(i32 %26, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %19
  %39 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %39, i32 0, i32 1
  %41 = call i32 @remove_wait_queue(i32* %40, i32* %5)
  %42 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %43 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @wq_has_sleeper(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @init_wait(i32*) #1

declare dso_local i32 @add_wait_queue_exclusive(i32*, i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
