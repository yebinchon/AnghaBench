; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue_func = type { i32 }
%struct.nvkm_falcon = type { i32 }
%struct.nvkm_msgqueue = type { i32, %struct.TYPE_2__*, i32, %struct.nvkm_falcon*, %struct.nvkm_msgqueue_func* }
%struct.TYPE_2__ = type { i32 }

@NVKM_MSGQUEUE_NUM_SEQUENCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_msgqueue_ctor(%struct.nvkm_msgqueue_func* %0, %struct.nvkm_falcon* %1, %struct.nvkm_msgqueue* %2) #0 {
  %4 = alloca %struct.nvkm_msgqueue_func*, align 8
  %5 = alloca %struct.nvkm_falcon*, align 8
  %6 = alloca %struct.nvkm_msgqueue*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_msgqueue_func* %0, %struct.nvkm_msgqueue_func** %4, align 8
  store %struct.nvkm_falcon* %1, %struct.nvkm_falcon** %5, align 8
  store %struct.nvkm_msgqueue* %2, %struct.nvkm_msgqueue** %6, align 8
  %8 = load %struct.nvkm_msgqueue_func*, %struct.nvkm_msgqueue_func** %4, align 8
  %9 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %10 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %9, i32 0, i32 4
  store %struct.nvkm_msgqueue_func* %8, %struct.nvkm_msgqueue_func** %10, align 8
  %11 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %12 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %12, i32 0, i32 3
  store %struct.nvkm_falcon* %11, %struct.nvkm_falcon** %13, align 8
  %14 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %30, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NVKM_MSGQUEUE_NUM_SEQUENCES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %34, i32 0, i32 0
  %36 = call i32 @init_completion(i32* %35)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
