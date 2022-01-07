; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_debug.c_sync_print_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_debug.c_sync_print_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dma_fence = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dma_fence*, i8*, i32)*, i32 (%struct.dma_fence*, i8*, i32)* }
%struct.sync_timeline = type { i8* }
%struct.timespec64 = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"  %s%sfence %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@DMA_FENCE_FLAG_TIMESTAMP_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"@%lld.%09ld\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" / %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.dma_fence*, i32)* @sync_print_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_print_fence(%struct.seq_file* %0, %struct.dma_fence* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sync_timeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %13 = call %struct.sync_timeline* @dma_fence_parent(%struct.dma_fence* %12)
  store %struct.sync_timeline* %13, %struct.sync_timeline** %7, align 8
  %14 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %15 = call i32 @dma_fence_get_status_locked(%struct.dma_fence* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.sync_timeline*, %struct.sync_timeline** %7, align 8
  %21 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sync_status_str(i32 %30)
  %32 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %29, i32 %31)
  %33 = load i32, i32* @DMA_FENCE_FLAG_TIMESTAMP_BIT, align 4
  %34 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %35 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %34, i32 0, i32 2
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %24
  %39 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %40 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call { i32, i64 } @ktime_to_timespec64(i32 %41)
  %43 = bitcast %struct.timespec64* %9 to { i32, i64 }*
  %44 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %43, i32 0, i32 0
  %45 = extractvalue { i32, i64 } %42, 0
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %43, i32 0, i32 1
  %47 = extractvalue { i32, i64 } %42, 1
  store i64 %47, i64* %46, align 8
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %55)
  br label %57

57:                                               ; preds = %38, %24
  %58 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %59 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dma_fence*, i8*, i32)*, i32 (%struct.dma_fence*, i8*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.dma_fence*, i8*, i32)* %62, null
  br i1 %63, label %64, label %105

64:                                               ; preds = %57
  %65 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %66 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.dma_fence*, i8*, i32)*, i32 (%struct.dma_fence*, i8*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.dma_fence*, i8*, i32)* %69, null
  br i1 %70, label %71, label %105

71:                                               ; preds = %64
  %72 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %73 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32 (%struct.dma_fence*, i8*, i32)*, i32 (%struct.dma_fence*, i8*, i32)** %75, align 8
  %77 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %79 = call i32 %76(%struct.dma_fence* %77, i8* %78, i32 64)
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %81 = call i32 @strlen(i8* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %71
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %87 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %89 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dma_fence*, i8*, i32)*, i32 (%struct.dma_fence*, i8*, i32)** %91, align 8
  %93 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %95 = call i32 %92(%struct.dma_fence* %93, i8* %94, i32 64)
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %97 = call i32 @strlen(i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %84
  %100 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %102 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %84
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %64, %57
  %106 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %107 = call i32 @seq_putc(%struct.seq_file* %106, i8 signext 10)
  ret void
}

declare dso_local %struct.sync_timeline* @dma_fence_parent(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_get_status_locked(%struct.dma_fence*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @sync_status_str(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local { i32, i64 } @ktime_to_timespec64(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
