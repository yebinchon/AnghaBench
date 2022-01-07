; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-array.c_dma_fence_array_enable_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence-array.c_dma_fence_array_enable_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.dma_fence_array = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.dma_fence_array_cb = type { i32, %struct.dma_fence_array* }

@dma_fence_array_cb_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @dma_fence_array_enable_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_fence_array_enable_signaling(%struct.dma_fence* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.dma_fence_array*, align 8
  %5 = alloca %struct.dma_fence_array_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %8 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %9 = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %8)
  store %struct.dma_fence_array* %9, %struct.dma_fence_array** %4, align 8
  %10 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %11 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %10, i64 1
  %12 = bitcast %struct.dma_fence_array* %11 to i8*
  %13 = bitcast i8* %12 to %struct.dma_fence_array_cb*
  store %struct.dma_fence_array_cb* %13, %struct.dma_fence_array_cb** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %70, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %17 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %22 = load %struct.dma_fence_array_cb*, %struct.dma_fence_array_cb** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %22, i64 %24
  %26 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %25, i32 0, i32 1
  store %struct.dma_fence_array* %21, %struct.dma_fence_array** %26, align 8
  %27 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %28 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %27, i32 0, i32 2
  %29 = call i32 @dma_fence_get(i32* %28)
  %30 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %31 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.dma_fence_array_cb*, %struct.dma_fence_array_cb** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %37, i64 %39
  %41 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %40, i32 0, i32 0
  %42 = load i32, i32* @dma_fence_array_cb_func, align 4
  %43 = call i64 @dma_fence_add_callback(%struct.TYPE_2__* %36, i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %20
  %46 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %47 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dma_fence_array_set_pending_error(%struct.dma_fence_array* %55, i32 %56)
  %58 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %59 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %58, i32 0, i32 2
  %60 = call i32 @dma_fence_put(i32* %59)
  %61 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %62 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %61, i32 0, i32 1
  %63 = call i64 @atomic_dec_and_test(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %45
  %66 = load %struct.dma_fence_array*, %struct.dma_fence_array** %4, align 8
  %67 = call i32 @dma_fence_array_clear_pending_error(%struct.dma_fence_array* %66)
  store i32 0, i32* %2, align 4
  br label %74

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68, %20
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %14

73:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i64 @dma_fence_add_callback(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dma_fence_array_set_pending_error(%struct.dma_fence_array*, i32) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @dma_fence_array_clear_pending_error(%struct.dma_fence_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
