; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msgqueue_seq_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_msgqueue_seq_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue_seq = type { i32 }
%struct.nvkm_msgqueue = type { %struct.nvkm_msgqueue_seq*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }

@NVKM_MSGQUEUE_NUM_SEQUENCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"no free sequence available\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SEQ_STATE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_msgqueue_seq* (%struct.nvkm_msgqueue*)* @msgqueue_seq_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_msgqueue_seq* @msgqueue_seq_acquire(%struct.nvkm_msgqueue* %0) #0 {
  %2 = alloca %struct.nvkm_msgqueue_seq*, align 8
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_msgqueue_seq*, align 8
  %6 = alloca i64, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  %7 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %4, align 8
  %12 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @NVKM_MSGQUEUE_NUM_SEQUENCES, align 8
  %19 = call i64 @find_first_zero_bit(i32 %17, i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NVKM_MSGQUEUE_NUM_SEQUENCES, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %25 = call i32 @nvkm_error(%struct.nvkm_subdev* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.nvkm_msgqueue_seq* @ERR_PTR(i32 %30)
  store %struct.nvkm_msgqueue_seq* %31, %struct.nvkm_msgqueue_seq** %2, align 8
  br label %50

32:                                               ; preds = %1
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %35 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_bit(i64 %33, i32 %36)
  %38 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %39 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %41, i32 0, i32 0
  %43 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %43, i64 %44
  store %struct.nvkm_msgqueue_seq* %45, %struct.nvkm_msgqueue_seq** %5, align 8
  %46 = load i32, i32* @SEQ_STATE_PENDING, align 4
  %47 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_msgqueue_seq, %struct.nvkm_msgqueue_seq* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %5, align 8
  store %struct.nvkm_msgqueue_seq* %49, %struct.nvkm_msgqueue_seq** %2, align 8
  br label %50

50:                                               ; preds = %32, %23
  %51 = load %struct.nvkm_msgqueue_seq*, %struct.nvkm_msgqueue_seq** %2, align 8
  ret %struct.nvkm_msgqueue_seq* %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.nvkm_msgqueue_seq* @ERR_PTR(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
