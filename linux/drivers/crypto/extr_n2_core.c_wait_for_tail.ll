; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_wait_for_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_wait_for_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i64, i64, i32 }

@HV_EOK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Hypervisor error on gethead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spu_queue*)* @wait_for_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wait_for_tail(%struct.spu_queue* %0) #0 {
  %2 = alloca %struct.spu_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %2, align 8
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %7 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @sun4v_ncs_gethead(i32 %8, i64* %3)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @HV_EOK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %27

15:                                               ; preds = %5
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %18 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %24 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  br i1 true, label %5, label %27

27:                                               ; preds = %26, %21, %13
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i64 @sun4v_ncs_gethead(i32, i64*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
