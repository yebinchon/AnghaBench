; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_copyto_ringbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_copyto_ringbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_ring_buffer_info*, i32, i8*, i32)* @hv_copyto_ringbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_copyto_ringbuffer(%struct.hv_ring_buffer_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %12 = call i8* @hv_get_ring_buffer(%struct.hv_ring_buffer_info* %11)
  store i8* %12, i8** %9, align 8
  %13 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %14 = call i32 @hv_get_ring_buffersize(%struct.hv_ring_buffer_info* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %15, i64 %17
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i8* @hv_get_ring_buffer(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @hv_get_ring_buffersize(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
