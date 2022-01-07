; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_find_exact_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_find_exact_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_pkey_cache* }
%struct.ib_pkey_cache = type { i32, i64* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_exact_cached_pkey(%struct.ib_device* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @rdma_is_port_valid(%struct.ib_device* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %69

23:                                               ; preds = %4
  %24 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %25 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @read_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %30 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %35, align 8
  store %struct.ib_pkey_cache* %36, %struct.ib_pkey_cache** %10, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 -1, i64* %37, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %59, %23
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %41 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %46 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %13, align 4
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %38

62:                                               ; preds = %54, %38
  %63 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %64 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @read_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
