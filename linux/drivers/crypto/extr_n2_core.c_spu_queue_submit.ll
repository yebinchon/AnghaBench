; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i32, i64, i32 }

@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spu_queue*, i8*)* @spu_queue_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spu_queue_submit(%struct.spu_queue* %0, i8* %1) #0 {
  %3 = alloca %struct.spu_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %10 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr i8, i8* %8, i64 %13
  %15 = call i64 @spu_next_offset(%struct.spu_queue* %7, i8* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %17 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @sun4v_ncs_settail(i32 %18, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @HV_EOK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %27 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local i64 @spu_next_offset(%struct.spu_queue*, i8*) #1

declare dso_local i64 @sun4v_ncs_settail(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
