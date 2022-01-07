; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32 }

@QUEUE_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i8*, i32)* @cmd_queue_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_queue_push(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_msgqueue*, align 8
  %6 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %5, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @nvkm_falcon_load_dmem(i32 %11, i8* %12, i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @QUEUE_ALIGNMENT, align 4
  %20 = call i64 @ALIGN(i32 %18, i32 %19)
  %21 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  ret i32 0
}

declare dso_local i32 @nvkm_falcon_load_dmem(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
