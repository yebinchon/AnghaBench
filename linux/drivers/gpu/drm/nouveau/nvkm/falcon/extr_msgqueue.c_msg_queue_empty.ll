; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msg_queue_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msg_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.nvkm_falcon* }
%struct.nvkm_falcon = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*)* @msg_queue_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_queue_empty(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %5 = alloca %struct.nvkm_falcon*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %4, align 8
  %8 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %8, i32 0, i32 0
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %9, align 8
  store %struct.nvkm_falcon* %10, %struct.nvkm_falcon** %5, align 8
  %11 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %12 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nvkm_falcon_rd32(%struct.nvkm_falcon* %11, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %17 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @nvkm_falcon_rd32(%struct.nvkm_falcon* %16, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
