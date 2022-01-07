; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i64, i32, i32, %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { i32 }
%struct.kvec = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_ringbuffer_write(%struct.vmbus_channel* %0, %struct.kvec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %5, align 8
  store %struct.kvec* %1, %struct.kvec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %10, align 4
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 4
  store %struct.hv_ring_buffer_info* %17, %struct.hv_ring_buffer_info** %15, align 8
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %129

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.kvec*, %struct.kvec** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i64 %33
  %35 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %44 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %43, i32 0, i32 0
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %48 = call i32 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %42
  %53 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %54 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %58 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %63 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %67 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %70 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %69, i32 0, i32 0
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %129

75:                                               ; preds = %42
  %76 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %77 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %79 = call i32 @hv_get_next_write_location(%struct.hv_ring_buffer_info* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %101, %75
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.kvec*, %struct.kvec** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i64 %90
  %92 = getelementptr inbounds %struct.kvec, %struct.kvec* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.kvec*, %struct.kvec** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.kvec, %struct.kvec* %94, i64 %96
  %98 = getelementptr inbounds %struct.kvec, %struct.kvec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info* %86, i32 %87, i32* %93, i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %106 = call i32 @hv_get_ring_bufferindices(%struct.hv_ring_buffer_info* %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info* %107, i32 %108, i32* %13, i32 4)
  store i32 %109, i32* %11, align 4
  %110 = call i32 (...) @virt_mb()
  %111 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @hv_set_next_write_location(%struct.hv_ring_buffer_info* %111, i32 %112)
  %114 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %15, align 8
  %115 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %114, i32 0, i32 0
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %120 = call i32 @hv_signal_on_write(i32 %118, %struct.vmbus_channel* %119)
  %121 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %122 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %104
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %125, %68, %22
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hv_get_next_write_location(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info*, i32, i32*, i32) #1

declare dso_local i32 @hv_get_ring_bufferindices(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @virt_mb(...) #1

declare dso_local i32 @hv_set_next_write_location(%struct.hv_ring_buffer_info*, i32) #1

declare dso_local i32 @hv_signal_on_write(i32, %struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
