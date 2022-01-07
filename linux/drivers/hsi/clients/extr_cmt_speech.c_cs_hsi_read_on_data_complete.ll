; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@CS_RX_DATA_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_read_on_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_read_on_data_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %5 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %6 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %5, i32 0, i32 1
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %6, align 8
  store %struct.cs_hsi_iface* %7, %struct.cs_hsi_iface** %3, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HSI_STATUS_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %18 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %19 = call i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface* %17, %struct.hsi_msg* %18)
  br label %83

20:                                               ; preds = %1
  %21 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %22 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %21, i32 0, i32 2
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %25 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %36 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @CS_RX_DATA_RECEIVED, align 4
  store i32 %39, i32* %4, align 4
  %40 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %41 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %46 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %50 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %53 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = srem i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %57 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %60 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %64 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %63, i32 0, i32 3
  %65 = call i32 @waitqueue_active(i32* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %20
  %69 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %70 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %69, i32 0, i32 3
  %71 = call i32 @wake_up_interruptible(i32* %70)
  br label %72

72:                                               ; preds = %68, %20
  %73 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %74 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %78 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cs_notify_data(i32 %76, i32 %79)
  %81 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %82 = call i32 @cs_hsi_read_on_data(%struct.cs_hsi_iface* %81)
  br label %83

83:                                               ; preds = %72, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cs_notify_data(i32, i32) #1

declare dso_local i32 @cs_hsi_read_on_data(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
