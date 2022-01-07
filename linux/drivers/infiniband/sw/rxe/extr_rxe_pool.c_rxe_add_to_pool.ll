; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_add_to_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_add_to_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pool = type { i32, i64, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rxe_pool_entry = type { i32, %struct.rxe_pool* }

@RXE_POOL_ATOMIC = common dso_local global i32 0, align 4
@RXE_POOL_STATE_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_add_to_pool(%struct.rxe_pool* %0, %struct.rxe_pool_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_pool*, align 8
  %5 = alloca %struct.rxe_pool_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.rxe_pool* %0, %struct.rxe_pool** %4, align 8
  store %struct.rxe_pool_entry* %1, %struct.rxe_pool_entry** %5, align 8
  %7 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %8 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RXE_POOL_ATOMIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @might_sleep_if(i32 %14)
  %16 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %17 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %16, i32 0, i32 5
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @read_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %21 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RXE_POOL_STATE_VALID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %27 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %26, i32 0, i32 5
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @read_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %77

32:                                               ; preds = %2
  %33 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %34 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %33, i32 0, i32 6
  %35 = call i32 @kref_get(i32* %34)
  %36 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %37 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %36, i32 0, i32 5
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @read_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %41 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @ib_device_try_get(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  br label %72

47:                                               ; preds = %32
  %48 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %49 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %48, i32 0, i32 4
  %50 = call i64 @atomic_inc_return(i32* %49)
  %51 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %63

56:                                               ; preds = %47
  %57 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %58 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %5, align 8
  %59 = getelementptr inbounds %struct.rxe_pool_entry, %struct.rxe_pool_entry* %58, i32 0, i32 1
  store %struct.rxe_pool* %57, %struct.rxe_pool** %59, align 8
  %60 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %5, align 8
  %61 = getelementptr inbounds %struct.rxe_pool_entry, %struct.rxe_pool_entry* %60, i32 0, i32 0
  %62 = call i32 @kref_init(i32* %61)
  store i32 0, i32* %3, align 4
  br label %77

63:                                               ; preds = %55
  %64 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %65 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %64, i32 0, i32 4
  %66 = call i32 @atomic_dec(i32* %65)
  %67 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %68 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @ib_device_put(i32* %70)
  br label %72

72:                                               ; preds = %63, %46
  %73 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %74 = call i32 @rxe_pool_put(%struct.rxe_pool* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %56, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @ib_device_try_get(i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_device_put(i32*) #1

declare dso_local i32 @rxe_pool_put(%struct.rxe_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
