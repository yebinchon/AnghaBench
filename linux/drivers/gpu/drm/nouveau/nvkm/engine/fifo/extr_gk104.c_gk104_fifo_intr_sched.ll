; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_sched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i8* }

@gk104_fifo_sched_reason = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SCHED_ERROR %02x [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_fifo*)* @gk104_fifo_intr_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_intr_sched(%struct.gk104_fifo* %0) #0 {
  %2 = alloca %struct.gk104_fifo*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_enum*, align 8
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %2, align 8
  %8 = load %struct.gk104_fifo*, %struct.gk104_fifo** %2, align 8
  %9 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %3, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %4, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 9548)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @gk104_fifo_sched_reason, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %19, i32 %20)
  store %struct.nvkm_enum* %21, %struct.nvkm_enum** %7, align 8
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.nvkm_enum*, %struct.nvkm_enum** %7, align 8
  %25 = icmp ne %struct.nvkm_enum* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.nvkm_enum*, %struct.nvkm_enum** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = call i32 @nvkm_error(%struct.nvkm_subdev* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %32)
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %38 [
    i32 10, label %35
  ]

35:                                               ; preds = %31
  %36 = load %struct.gk104_fifo*, %struct.gk104_fifo** %2, align 8
  %37 = call i32 @gk104_fifo_intr_sched_ctxsw(%struct.gk104_fifo* %36)
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*) #1

declare dso_local i32 @gk104_fifo_intr_sched_ctxsw(%struct.gk104_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
