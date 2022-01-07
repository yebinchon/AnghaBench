; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.nvkm_falcon* }
%struct.nvkm_falcon = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"queue full\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i32)* @cmd_queue_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_queue_open(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_msgqueue*, align 8
  %6 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_falcon*, align 8
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %5, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %11, i32 0, i32 0
  %13 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %12, align 8
  store %struct.nvkm_falcon* %13, %struct.nvkm_falcon** %8, align 8
  %14 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %14, i32 0, i32 0
  %16 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %16, i32 0, i32 0
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %17, align 8
  store %struct.nvkm_subdev* %18, %struct.nvkm_subdev** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %20 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %23 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @cmd_queue_has_room(%struct.nvkm_msgqueue* %22, %struct.nvkm_msgqueue_queue* %23, i32 %24, i32* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %3
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %29 = call i32 @nvkm_error(%struct.nvkm_subdev* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %30, i32 0, i32 2
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %8, align 8
  %37 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %38 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %36, i32 %39)
  %41 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %47 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %48 = call i32 @cmd_queue_rewind(%struct.nvkm_msgqueue* %46, %struct.nvkm_msgqueue_queue* %47)
  br label %49

49:                                               ; preds = %45, %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cmd_queue_has_room(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i32, i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @cmd_queue_rewind(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
