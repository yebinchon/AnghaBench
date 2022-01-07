; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_rewind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32, i32, i32 }
%struct.nvkm_msgqueue_hdr = type { i32, i32 }

@MSGQUEUE_UNIT_REWIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"queue %d rewind failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"queue %d rewinded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*)* @cmd_queue_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_queue_rewind(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_msgqueue_hdr, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %4, align 8
  %8 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %5, align 8
  %13 = load i32, i32* @MSGQUEUE_UNIT_REWIND, align 4
  %14 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %6, i32 0, i32 0
  store i32 8, i32* %15, align 4
  %16 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %17 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cmd_queue_push(%struct.nvkm_msgqueue* %16, %struct.nvkm_msgqueue_queue* %17, %struct.nvkm_msgqueue_hdr* %6, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %25 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvkm_error(%struct.nvkm_subdev* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %31 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nvkm_error(%struct.nvkm_subdev* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %37 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @cmd_queue_push(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_hdr*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
