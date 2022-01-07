; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_find_available_queue_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_find_available_queue_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_queue_manager = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KFD_MAX_NUM_OF_QUEUES_PER_PROCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"The new slot id %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Cannot open more queues for process with pasid %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process_queue_manager*, i32*)* @find_available_queue_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_available_queue_slot(%struct.process_queue_manager* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.process_queue_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.process_queue_manager* %0, %struct.process_queue_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %8 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 8
  %11 = call i64 @find_first_zero_bit(i32 %9, i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %19 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %29 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @set_bit(i64 %27, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
