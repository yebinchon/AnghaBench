; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_find_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_find_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_pkey_cache* }
%struct.ib_pkey_cache = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_cached_pkey(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @rdma_is_port_valid(%struct.ib_device* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %93

24:                                               ; preds = %4
  %25 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @read_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %36, align 8
  store %struct.ib_pkey_cache* %37, %struct.ib_pkey_cache** %10, align 8
  %38 = load i32*, i32** %9, align 8
  store i32 -1, i32* %38, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %74, %24
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %42 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %47 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 32767
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 32767
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %45
  %58 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %59 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 32768
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %13, align 4
  br label %77

70:                                               ; preds = %57
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %39

77:                                               ; preds = %67, %39
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %80, %77
  %87 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %88 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @read_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %86, %21
  %94 = load i32, i32* %5, align 4
  ret i32 %94
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
