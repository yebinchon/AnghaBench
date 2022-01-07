; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_queue.c_print_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_queue.c_print_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Printing queue:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Queue Type: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Queue Size: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Queue percent: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Queue Address: 0x%llX\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Queue Id: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Queue Process Vmid: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Queue Read Pointer: 0x%px\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Queue Write Pointer: 0x%px\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Queue Doorbell Pointer: 0x%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Queue Doorbell Offset: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Queue MQD Address: 0x%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Queue MQD Gart: 0x%llX\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Queue Process Address: 0x%p\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Queue Device Address: 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_queue(%struct.queue* %0) #0 {
  %2 = alloca %struct.queue*, align 8
  store %struct.queue* %0, %struct.queue** %2, align 8
  %3 = load %struct.queue*, %struct.queue** %2, align 8
  %4 = icmp ne %struct.queue* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %74

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.queue*, %struct.queue** %2, align 8
  %9 = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.queue*, %struct.queue** %2, align 8
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.queue*, %struct.queue** %2, align 8
  %19 = getelementptr inbounds %struct.queue, %struct.queue* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load %struct.queue*, %struct.queue** %2, align 8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.queue*, %struct.queue** %2, align 8
  %29 = getelementptr inbounds %struct.queue, %struct.queue* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load %struct.queue*, %struct.queue** %2, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = load %struct.queue*, %struct.queue** %2, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load %struct.queue*, %struct.queue** %2, align 8
  %44 = getelementptr inbounds %struct.queue, %struct.queue* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = load %struct.queue*, %struct.queue** %2, align 8
  %49 = getelementptr inbounds %struct.queue, %struct.queue* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  %53 = load %struct.queue*, %struct.queue** %2, align 8
  %54 = getelementptr inbounds %struct.queue, %struct.queue* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %56)
  %58 = load %struct.queue*, %struct.queue** %2, align 8
  %59 = getelementptr inbounds %struct.queue, %struct.queue* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %60)
  %62 = load %struct.queue*, %struct.queue** %2, align 8
  %63 = getelementptr inbounds %struct.queue, %struct.queue* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %64)
  %66 = load %struct.queue*, %struct.queue** %2, align 8
  %67 = getelementptr inbounds %struct.queue, %struct.queue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %68)
  %70 = load %struct.queue*, %struct.queue** %2, align 8
  %71 = getelementptr inbounds %struct.queue, %struct.queue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
