; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_hdr = type { i32 }
%struct.nvkm_msgqueue_queue = type { i32 }

@cmd_write.timeout = internal global i32 2000, align 4
@jiffies = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pmu_queue_open_write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pmu_queue_push failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_queue*)* @cmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_write(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_hdr* %1, %struct.nvkm_msgqueue_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_msgqueue*, align 8
  %6 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %7 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %5, align 8
  store %struct.nvkm_msgqueue_hdr* %1, %struct.nvkm_msgqueue_hdr** %6, align 8
  store %struct.nvkm_msgqueue_queue* %2, %struct.nvkm_msgqueue_queue** %7, align 8
  %12 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %15, align 8
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %8, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @cmd_write.timeout, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add i64 %17, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @time_before(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %37 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %38 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cmd_queue_open(%struct.nvkm_msgqueue* %36, %struct.nvkm_msgqueue_queue* %37, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %23

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %47 = call i32 @nvkm_error(%struct.nvkm_subdev* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %68

49:                                               ; preds = %42
  %50 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %51 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %52 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %6, align 8
  %53 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %6, align 8
  %54 = getelementptr inbounds %struct.nvkm_msgqueue_hdr, %struct.nvkm_msgqueue_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cmd_queue_push(%struct.nvkm_msgqueue* %50, %struct.nvkm_msgqueue_queue* %51, %struct.nvkm_msgqueue_hdr* %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %61 = call i32 @nvkm_error(%struct.nvkm_subdev* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %64 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @cmd_queue_close(%struct.nvkm_msgqueue* %63, %struct.nvkm_msgqueue_queue* %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %45
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cmd_queue_open(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @cmd_queue_push(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_hdr*, i32) #1

declare dso_local i32 @cmd_queue_close(%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
