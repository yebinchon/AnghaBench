; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0148cdec.c_msgqueue_0148cdec_process_msgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0148cdec.c_msgqueue_0148cdec_process_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { i32 }
%struct.msgqueue_0148cdec = type { i32, %struct.nvkm_msgqueue_queue* }
%struct.nvkm_msgqueue_queue = type { i32 }

@MSGQUEUE_0148CDEC_MESSAGE_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_msgqueue*)* @msgqueue_0148cdec_process_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgqueue_0148cdec_process_msgs(%struct.nvkm_msgqueue* %0) #0 {
  %2 = alloca %struct.nvkm_msgqueue*, align 8
  %3 = alloca %struct.msgqueue_0148cdec*, align 8
  %4 = alloca %struct.nvkm_msgqueue_queue*, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %2, align 8
  %5 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %2, align 8
  %6 = call %struct.msgqueue_0148cdec* @msgqueue_0148cdec(%struct.nvkm_msgqueue* %5)
  store %struct.msgqueue_0148cdec* %6, %struct.msgqueue_0148cdec** %3, align 8
  %7 = load %struct.msgqueue_0148cdec*, %struct.msgqueue_0148cdec** %3, align 8
  %8 = getelementptr inbounds %struct.msgqueue_0148cdec, %struct.msgqueue_0148cdec* %7, i32 0, i32 1
  %9 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %8, align 8
  %10 = load i64, i64* @MSGQUEUE_0148CDEC_MESSAGE_QUEUE, align 8
  %11 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %9, i64 %10
  store %struct.nvkm_msgqueue_queue* %11, %struct.nvkm_msgqueue_queue** %4, align 8
  %12 = load %struct.msgqueue_0148cdec*, %struct.msgqueue_0148cdec** %3, align 8
  %13 = getelementptr inbounds %struct.msgqueue_0148cdec, %struct.msgqueue_0148cdec* %12, i32 0, i32 0
  %14 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %15 = call i32 @nvkm_msgqueue_process_msgs(i32* %13, %struct.nvkm_msgqueue_queue* %14)
  ret void
}

declare dso_local %struct.msgqueue_0148cdec* @msgqueue_0148cdec(%struct.nvkm_msgqueue*) #1

declare dso_local i32 @nvkm_msgqueue_process_msgs(i32*, %struct.nvkm_msgqueue_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
