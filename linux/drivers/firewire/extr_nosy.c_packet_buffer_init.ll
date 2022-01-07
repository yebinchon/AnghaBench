; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_packet_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_packet_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_buffer = type { i64, i32, i32, i64, i32*, %struct.packet*, %struct.packet* }
%struct.packet = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_buffer*, i64)* @packet_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_buffer_init(%struct.packet_buffer* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.packet_buffer* %0, %struct.packet_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc(i64 %6, i32 %7)
  %9 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %9, i32 0, i32 4
  store i32* %8, i32** %10, align 8
  %11 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to %struct.packet*
  %23 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %23, i32 0, i32 6
  store %struct.packet* %22, %struct.packet** %24, align 8
  %25 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to %struct.packet*
  %29 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %29, i32 0, i32 5
  store %struct.packet* %28, %struct.packet** %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %36, i32 0, i32 2
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %39, i32 0, i32 1
  %41 = call i32 @init_waitqueue_head(i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %18, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
