; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_recv_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_recv_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32, i32, i32, i32 }

@ishtp_dev = common dso_local global %struct.ishtp_device* null, align 8
@fw_reset_work = common dso_local global i32 0, align 4
@fw_reset_work_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_device*, i32)* @recv_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_ipc(%struct.ishtp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @IPC_HEADER_GET_MNG_CMD(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %9 [
    i32 128, label %10
    i32 130, label %35
    i32 129, label %44
  ]

9:                                                ; preds = %2
  br label %50

10:                                               ; preds = %2
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %12 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %17 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %16, i32 0, i32 5
  store i32 0, i32* %17, align 4
  %18 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %19 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %18, i32 0, i32 4
  %20 = call i32 @wake_up_interruptible(i32* %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %28 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %30 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %29, i32 0, i32 2
  %31 = call i32 @wake_up_interruptible(i32* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %34 = call i32 @write_ipc_from_queue(%struct.ishtp_device* %33)
  br label %50

35:                                               ; preds = %2
  %36 = load %struct.ishtp_device*, %struct.ishtp_device** @ishtp_dev, align 8
  %37 = icmp ne %struct.ishtp_device* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  store %struct.ishtp_device* %39, %struct.ishtp_device** @ishtp_dev, align 8
  %40 = load i32, i32* @fw_reset_work_fn, align 4
  %41 = call i32 @INIT_WORK(i32* @fw_reset_work, i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = call i32 @schedule_work(i32* @fw_reset_work)
  br label %50

44:                                               ; preds = %2
  %45 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %46 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %48 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %47, i32 0, i32 1
  %49 = call i32 @wake_up_interruptible(i32* %48)
  br label %50

50:                                               ; preds = %44, %42, %32, %9
  ret void
}

declare dso_local i32 @IPC_HEADER_GET_MNG_CMD(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @write_ipc_from_queue(%struct.ishtp_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
