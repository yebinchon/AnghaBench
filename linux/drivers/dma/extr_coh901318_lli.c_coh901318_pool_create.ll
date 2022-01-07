; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_pool = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"lli_pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coh901318_pool_create(%struct.coh901318_pool* %0, %struct.device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.coh901318_pool*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.coh901318_pool* %0, %struct.coh901318_pool** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.coh901318_pool*, %struct.coh901318_pool** %5, align 8
  %10 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.coh901318_pool*, %struct.coh901318_pool** %5, align 8
  %14 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %13, i32 0, i32 1
  store %struct.device* %12, %struct.device** %14, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.device* %15, i64 %16, i64 %17, i32 0)
  %19 = load %struct.coh901318_pool*, %struct.coh901318_pool** %5, align 8
  %20 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.coh901318_pool*, %struct.coh901318_pool** %5, align 8
  %22 = call i32 @DEBUGFS_POOL_COUNTER_RESET(%struct.coh901318_pool* %21)
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_pool_create(i8*, %struct.device*, i64, i64, i32) #1

declare dso_local i32 @DEBUGFS_POOL_COUNTER_RESET(%struct.coh901318_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
