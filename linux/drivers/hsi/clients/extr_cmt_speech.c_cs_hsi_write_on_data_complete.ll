; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { i32, i32, i32 }

@HSI_STATUS_COMPLETED = common dso_local global i64 0, align 8
@SSI_CHANNEL_STATE_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_write_on_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_write_on_data_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %4 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %5 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %4, i32 0, i32 1
  %6 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %5, align 8
  store %struct.cs_hsi_iface* %6, %struct.cs_hsi_iface** %3, align 8
  %7 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %8 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HSI_STATUS_COMPLETED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %14 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %19 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %23 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %22, i32 0, i32 1
  %24 = call i32 @waitqueue_active(i32* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %29 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %28, i32 0, i32 1
  %30 = call i32 @wake_up_interruptible(i32* %29)
  br label %31

31:                                               ; preds = %27, %12
  %32 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %33 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %37 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %38 = call i32 @cs_hsi_data_write_error(%struct.cs_hsi_iface* %36, %struct.hsi_msg* %37)
  br label %39

39:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cs_hsi_data_write_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
