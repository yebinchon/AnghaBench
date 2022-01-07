; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_msgqueue*)* }
%struct.TYPE_3__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"missing msgqueue recv function\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_msgqueue_recv(%struct.nvkm_msgqueue* %0) #0 {
  %2 = alloca %struct.nvkm_msgqueue*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %2, align 8
  %4 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nvkm_msgqueue*)*, i32 (%struct.nvkm_msgqueue*)** %12, align 8
  %14 = icmp ne i32 (%struct.nvkm_msgqueue*)* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %2, align 8
  %17 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %19, align 8
  store %struct.nvkm_subdev* %20, %struct.nvkm_subdev** %3, align 8
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %22 = call i32 @nvkm_warn(%struct.nvkm_subdev* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %31

23:                                               ; preds = %8
  %24 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nvkm_msgqueue*)*, i32 (%struct.nvkm_msgqueue*)** %27, align 8
  %29 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %2, align 8
  %30 = call i32 %28(%struct.nvkm_msgqueue* %29)
  br label %31

31:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
