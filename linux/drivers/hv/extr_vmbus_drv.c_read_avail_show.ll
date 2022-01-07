; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_read_avail_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_read_avail_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*, i8*)* @read_avail_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_avail_show(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hv_ring_buffer_info*, align 8
  %7 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 0
  store %struct.hv_ring_buffer_info* %9, %struct.hv_ring_buffer_info** %6, align 8
  %10 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %6, align 8
  %11 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %6, align 8
  %14 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %6, align 8
  %19 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %6, align 8
  %26 = call i32 @hv_get_bytes_to_read(%struct.hv_ring_buffer_info* %25)
  %27 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %6, align 8
  %29 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @hv_get_bytes_to_read(%struct.hv_ring_buffer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
