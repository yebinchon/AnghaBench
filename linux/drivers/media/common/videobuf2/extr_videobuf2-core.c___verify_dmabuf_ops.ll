; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___verify_dmabuf_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___verify_dmabuf_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VB2_DMABUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*)* @__verify_dmabuf_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__verify_dmabuf_ops(%struct.vb2_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %5 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @VB2_DMABUF, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %24, %17, %10, %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
