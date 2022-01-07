; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_submit_packet_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_submit_packet_v10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernel_queue*)* @submit_packet_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_packet_v10(%struct.kernel_queue* %0) #0 {
  %2 = alloca %struct.kernel_queue*, align 8
  store %struct.kernel_queue* %0, %struct.kernel_queue** %2, align 8
  %3 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %4 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %7 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  store i32 %5, i32* %8, align 4
  %9 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %10 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %16 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @write_kernel_doorbell64(i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @write_kernel_doorbell64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
