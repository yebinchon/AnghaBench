; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_num_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_num_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i64, i64 }

@CWQ_ENTRY_SIZE = common dso_local global i64 0, align 8
@CWQ_NUM_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_queue*)* @spu_queue_num_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_queue_num_free(%struct.spu_queue* %0) #0 {
  %2 = alloca %struct.spu_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %2, align 8
  %7 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %8 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.spu_queue*, %struct.spu_queue** %2, align 8
  %11 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @CWQ_ENTRY_SIZE, align 8
  %14 = load i64, i64* @CWQ_NUM_ENTRIES, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %6, align 8
  br label %29

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @CWQ_ENTRY_SIZE, align 8
  %32 = udiv i64 %30, %31
  %33 = sub i64 %32, 1
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
