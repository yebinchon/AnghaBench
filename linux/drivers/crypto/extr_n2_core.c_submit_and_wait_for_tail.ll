; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_submit_and_wait_for_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_submit_and_wait_for_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i32 }
%struct.cwq_initial_entry = type { i32 }

@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spu_queue*, %struct.cwq_initial_entry*)* @submit_and_wait_for_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @submit_and_wait_for_tail(%struct.spu_queue* %0, %struct.cwq_initial_entry* %1) #0 {
  %3 = alloca %struct.spu_queue*, align 8
  %4 = alloca %struct.cwq_initial_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %3, align 8
  store %struct.cwq_initial_entry* %1, %struct.cwq_initial_entry** %4, align 8
  %6 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %7 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %4, align 8
  %8 = call i64 @spu_queue_submit(%struct.spu_queue* %6, %struct.cwq_initial_entry* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @HV_EOK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %14 = call i64 @wait_for_tail(%struct.spu_queue* %13)
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %5, align 8
  ret i64 %16
}

declare dso_local i64 @spu_queue_submit(%struct.spu_queue*, %struct.cwq_initial_entry*) #1

declare dso_local i64 @wait_for_tail(%struct.spu_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
