; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_write_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_write_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_msgqueue*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_msgqueue_write_cmdline(%struct.nvkm_msgqueue* %0, i8* %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca i8*, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %6 = icmp ne %struct.nvkm_msgqueue* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %7, %2
  br label %31

20:                                               ; preds = %12
  %21 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nvkm_msgqueue*, i8*)*, i32 (%struct.nvkm_msgqueue*, i8*)** %26, align 8
  %28 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 %27(%struct.nvkm_msgqueue* %28, i8* %29)
  br label %31

31:                                               ; preds = %20, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
