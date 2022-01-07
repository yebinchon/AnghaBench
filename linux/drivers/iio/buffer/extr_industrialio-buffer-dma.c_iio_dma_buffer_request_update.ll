; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_request_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_request_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.iio_dma_buffer_queue = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.iio_dma_buffer_block**, i32* }
%struct.iio_dma_buffer_block = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IIO_BLOCK_STATE_DEAD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IIO_BLOCK_STATE_QUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_dma_buffer_request_update(%struct.iio_buffer* %0) #0 {
  %2 = alloca %struct.iio_buffer*, align 8
  %3 = alloca %struct.iio_dma_buffer_queue*, align 8
  %4 = alloca %struct.iio_dma_buffer_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_buffer* %0, %struct.iio_buffer** %2, align 8
  %9 = load %struct.iio_buffer*, %struct.iio_buffer** %2, align 8
  %10 = call %struct.iio_dma_buffer_queue* @iio_buffer_to_queue(%struct.iio_buffer* %9)
  store %struct.iio_dma_buffer_queue* %10, %struct.iio_dma_buffer_queue** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %16 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %14, %18
  %20 = call i64 @DIV_ROUND_UP(i32 %19, i32 2)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %22 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @PAGE_ALIGN(i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @PAGE_ALIGN(i64 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %36 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %39 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %42 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %41, i32 0, i32 3
  %43 = call i32 @spin_lock_irq(i32* %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %75, %33
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %47 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.iio_dma_buffer_block**, %struct.iio_dma_buffer_block*** %48, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.iio_dma_buffer_block** %49)
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %54 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.iio_dma_buffer_block**, %struct.iio_dma_buffer_block*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %56, i64 %58
  %60 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %59, align 8
  store %struct.iio_dma_buffer_block* %60, %struct.iio_dma_buffer_block** %4, align 8
  %61 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %62 = icmp ne %struct.iio_dma_buffer_block* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %52
  %64 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %65 = call i32 @iio_dma_block_reusable(%struct.iio_dma_buffer_block* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67, %63
  %71 = load i64, i64* @IIO_BLOCK_STATE_DEAD, align 8
  %72 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %73 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %67, %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %44

78:                                               ; preds = %44
  %79 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %80 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %79, i32 0, i32 4
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %83 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %82, i32 0, i32 3
  %84 = call i32 @spin_unlock_irq(i32* %83)
  %85 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %86 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %85, i32 0, i32 1
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %159, %78
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %91 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.iio_dma_buffer_block**, %struct.iio_dma_buffer_block*** %92, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.iio_dma_buffer_block** %93)
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %162

96:                                               ; preds = %88
  %97 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %98 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.iio_dma_buffer_block**, %struct.iio_dma_buffer_block*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %100, i64 %102
  %104 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %103, align 8
  %105 = icmp ne %struct.iio_dma_buffer_block* %104, null
  br i1 %105, label %106, label %128

106:                                              ; preds = %96
  %107 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %108 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %struct.iio_dma_buffer_block**, %struct.iio_dma_buffer_block*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %110, i64 %112
  %114 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %113, align 8
  store %struct.iio_dma_buffer_block* %114, %struct.iio_dma_buffer_block** %4, align 8
  %115 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %116 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IIO_BLOCK_STATE_DEAD, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %122 = call i32 @iio_buffer_block_put(%struct.iio_dma_buffer_block* %121)
  store %struct.iio_dma_buffer_block* null, %struct.iio_dma_buffer_block** %4, align 8
  br label %127

123:                                              ; preds = %106
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %126 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %120
  br label %129

128:                                              ; preds = %96
  store %struct.iio_dma_buffer_block* null, %struct.iio_dma_buffer_block** %4, align 8
  br label %129

129:                                              ; preds = %128, %127
  %130 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %131 = icmp ne %struct.iio_dma_buffer_block* %130, null
  br i1 %131, label %150, label %132

132:                                              ; preds = %129
  %133 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call %struct.iio_dma_buffer_block* @iio_dma_buffer_alloc_block(%struct.iio_dma_buffer_queue* %133, i64 %134)
  store %struct.iio_dma_buffer_block* %135, %struct.iio_dma_buffer_block** %4, align 8
  %136 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %137 = icmp ne %struct.iio_dma_buffer_block* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %163

141:                                              ; preds = %132
  %142 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %143 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %144 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load %struct.iio_dma_buffer_block**, %struct.iio_dma_buffer_block*** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %146, i64 %148
  store %struct.iio_dma_buffer_block* %142, %struct.iio_dma_buffer_block** %149, align 8
  br label %150

150:                                              ; preds = %141, %129
  %151 = load i64, i64* @IIO_BLOCK_STATE_QUEUED, align 8
  %152 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %153 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %155 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %154, i32 0, i32 2
  %156 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %157 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %156, i32 0, i32 1
  %158 = call i32 @list_add_tail(i32* %155, i32* %157)
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %88

162:                                              ; preds = %88
  br label %163

163:                                              ; preds = %162, %138
  %164 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %165 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local %struct.iio_dma_buffer_queue* @iio_buffer_to_queue(%struct.iio_buffer*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iio_dma_buffer_block**) #1

declare dso_local i32 @iio_dma_block_reusable(%struct.iio_dma_buffer_block*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @iio_buffer_block_put(%struct.iio_dma_buffer_block*) #1

declare dso_local %struct.iio_dma_buffer_block* @iio_dma_buffer_alloc_block(%struct.iio_dma_buffer_queue*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
