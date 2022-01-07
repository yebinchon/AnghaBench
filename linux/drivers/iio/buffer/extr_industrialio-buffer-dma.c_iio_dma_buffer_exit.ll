; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dma_buffer_queue = type { i32, i32*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@IIO_BLOCK_STATE_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_dma_buffer_exit(%struct.iio_dma_buffer_queue* %0) #0 {
  %2 = alloca %struct.iio_dma_buffer_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_queue** %2, align 8
  %4 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %5 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %8 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %7, i32 0, i32 4
  %9 = call i32 @spin_lock_irq(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %13 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %15)
  %17 = icmp ult i32 %11, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %10
  %19 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %20 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %40

29:                                               ; preds = %18
  %30 = load i32, i32* @IIO_BLOCK_STATE_DEAD, align 4
  %31 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %32 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %30, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %10

43:                                               ; preds = %10
  %44 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %45 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %44, i32 0, i32 5
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %48 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %47, i32 0, i32 4
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %51 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %50, i32 0, i32 3
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %89, %43
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %56 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %58)
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %53
  %62 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %63 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %89

72:                                               ; preds = %61
  %73 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %74 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @iio_buffer_block_put(%struct.TYPE_5__* %80)
  %82 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %83 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 %87
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %88, align 8
  br label %89

89:                                               ; preds = %72, %71
  %90 = load i32, i32* %3, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %53

92:                                               ; preds = %53
  %93 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %94 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  %96 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %97 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %2, align 8
  %99 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @iio_buffer_block_put(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
