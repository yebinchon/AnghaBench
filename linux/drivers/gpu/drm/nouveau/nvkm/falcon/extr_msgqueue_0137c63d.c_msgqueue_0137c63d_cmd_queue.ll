; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_msgqueue_0137c63d_cmd_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_msgqueue_0137c63d_cmd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue_queue = type { i32 }
%struct.nvkm_msgqueue = type { i32 }
%struct.msgqueue_0137c63d = type { %struct.nvkm_msgqueue_queue*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }

@MSGQUEUE_0137C63D_COMMAND_QUEUE_HPQ = common dso_local global i64 0, align 8
@MSGQUEUE_0137C63D_COMMAND_QUEUE_LPQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid command queue!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_msgqueue_queue* (%struct.nvkm_msgqueue*, i32)* @msgqueue_0137c63d_cmd_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_msgqueue_queue* @msgqueue_0137c63d_cmd_queue(%struct.nvkm_msgqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %4 = alloca %struct.nvkm_msgqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msgqueue_0137c63d*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %9 = call %struct.msgqueue_0137c63d* @msgqueue_0137c63d(%struct.nvkm_msgqueue* %8)
  store %struct.msgqueue_0137c63d* %9, %struct.msgqueue_0137c63d** %6, align 8
  %10 = load %struct.msgqueue_0137c63d*, %struct.msgqueue_0137c63d** %6, align 8
  %11 = getelementptr inbounds %struct.msgqueue_0137c63d, %struct.msgqueue_0137c63d* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %14, align 8
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %7, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %23
  ]

17:                                               ; preds = %2
  %18 = load %struct.msgqueue_0137c63d*, %struct.msgqueue_0137c63d** %6, align 8
  %19 = getelementptr inbounds %struct.msgqueue_0137c63d, %struct.msgqueue_0137c63d* %18, i32 0, i32 0
  %20 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %19, align 8
  %21 = load i64, i64* @MSGQUEUE_0137C63D_COMMAND_QUEUE_HPQ, align 8
  %22 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %20, i64 %21
  store %struct.nvkm_msgqueue_queue* %22, %struct.nvkm_msgqueue_queue** %3, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.msgqueue_0137c63d*, %struct.msgqueue_0137c63d** %6, align 8
  %25 = getelementptr inbounds %struct.msgqueue_0137c63d, %struct.msgqueue_0137c63d* %24, i32 0, i32 0
  %26 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %25, align 8
  %27 = load i64, i64* @MSGQUEUE_0137C63D_COMMAND_QUEUE_LPQ, align 8
  %28 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %26, i64 %27
  store %struct.nvkm_msgqueue_queue* %28, %struct.nvkm_msgqueue_queue** %3, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %31 = call i32 @nvkm_error(%struct.nvkm_subdev* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.nvkm_msgqueue_queue* @ERR_PTR(i32 %33)
  store %struct.nvkm_msgqueue_queue* %34, %struct.nvkm_msgqueue_queue** %3, align 8
  br label %35

35:                                               ; preds = %29, %23, %17
  %36 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %3, align 8
  ret %struct.nvkm_msgqueue_queue* %36
}

declare dso_local %struct.msgqueue_0137c63d* @msgqueue_0137c63d(%struct.nvkm_msgqueue*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local %struct.nvkm_msgqueue_queue* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
