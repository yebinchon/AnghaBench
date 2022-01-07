; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_queue*)* @spu_queue_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_queue_destroy(%struct.spu_queue* %0) #0 {
  %2 = alloca %struct.spu_queue*, align 8
  %3 = alloca i64, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %2, align 8
  %4 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %5 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %11 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %14 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %17 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %16, i32 0, i32 2
  %18 = call i64 @sun4v_ncs_qconf(i32 %12, i32 %15, i32 0, i32* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %9
  %22 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %23 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %26 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @free_queue(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %8, %21, %9
  ret void
}

declare dso_local i64 @sun4v_ncs_qconf(i32, i32, i32, i32*) #1

declare dso_local i32 @free_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
