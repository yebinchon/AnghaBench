; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.file = type { %struct.dma_buf* }

@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @dma_buf_get(i32 %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.file* @fget(i32 %5)
  store %struct.file* %6, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = icmp ne %struct.file* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EBADF, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.dma_buf* @ERR_PTR(i32 %11)
  store %struct.dma_buf* %12, %struct.dma_buf** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call i32 @is_dma_buf_file(%struct.file* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = call i32 @fput(%struct.file* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.dma_buf* @ERR_PTR(i32 %21)
  store %struct.dma_buf* %22, %struct.dma_buf** %2, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.dma_buf*, %struct.dma_buf** %25, align 8
  store %struct.dma_buf* %26, %struct.dma_buf** %2, align 8
  br label %27

27:                                               ; preds = %23, %17, %9
  %28 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  ret %struct.dma_buf* %28
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local i32 @is_dma_buf_file(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
