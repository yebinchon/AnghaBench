; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_pool_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_pool_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pool = type { i32, i32, i32 }

@RXE_POOL_STATE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s pool destroyed with unfree'd elem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_pool_cleanup(%struct.rxe_pool* %0) #0 {
  %2 = alloca %struct.rxe_pool*, align 8
  %3 = alloca i64, align 8
  store %struct.rxe_pool* %0, %struct.rxe_pool** %2, align 8
  %4 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %5 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @write_lock_irqsave(i32* %5, i64 %6)
  %8 = load i32, i32* @RXE_POOL_STATE_INVALID, align 4
  %9 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %10 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %12 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %17 = call i32 @pool_name(%struct.rxe_pool* %16)
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %21 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @write_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %25 = call i32 @rxe_pool_put(%struct.rxe_pool* %24)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pool_name(%struct.rxe_pool*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rxe_pool_put(%struct.rxe_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
