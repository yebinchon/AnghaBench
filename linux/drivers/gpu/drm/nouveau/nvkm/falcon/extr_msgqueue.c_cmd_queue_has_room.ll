; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_has_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_cmd_queue_has_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.nvkm_falcon* }
%struct.nvkm_falcon = type { i32 }
%struct.nvkm_msgqueue_queue = type { i64, i64, i32, i32 }

@QUEUE_ALIGNMENT = common dso_local global i32 0, align 4
@HDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_queue*, i64, i32*)* @cmd_queue_has_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_queue_has_room(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_queue* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.nvkm_msgqueue*, align 8
  %6 = alloca %struct.nvkm_msgqueue_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nvkm_falcon*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %5, align 8
  store %struct.nvkm_msgqueue_queue* %1, %struct.nvkm_msgqueue_queue** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %13, i32 0, i32 0
  %15 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  store %struct.nvkm_falcon* %15, %struct.nvkm_falcon** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @QUEUE_ALIGNMENT, align 4
  %18 = call i64 @ALIGN(i64 %16, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %9, align 8
  %20 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nvkm_falcon_rd32(%struct.nvkm_falcon* %19, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %9, align 8
  %25 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %26 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @nvkm_falcon_rd32(%struct.nvkm_falcon* %24, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %4
  %33 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %34 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %37 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* @HDR_SIZE, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load i32*, i32** %8, align 8
  store i32 1, i32* %49, align 4
  %50 = load %struct.nvkm_msgqueue_queue*, %struct.nvkm_msgqueue_queue** %6, align 8
  %51 = getelementptr inbounds %struct.nvkm_msgqueue_queue, %struct.nvkm_msgqueue_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %48, %32
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub nsw i64 %59, %60
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp sle i64 %64, %65
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
