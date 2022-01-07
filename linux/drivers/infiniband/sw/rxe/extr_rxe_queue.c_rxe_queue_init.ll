; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_queue.c_rxe_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_queue.c_rxe_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_queue = type { i32, i32, i64, %struct.TYPE_2__*, i32, %struct.rxe_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rxe_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxe_queue* @rxe_queue_init(%struct.rxe_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rxe_queue*, align 8
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxe_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %88

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rxe_queue* @kmalloc(i32 40, i32 %16)
  store %struct.rxe_queue* %17, %struct.rxe_queue** %8, align 8
  %18 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %19 = icmp ne %struct.rxe_queue* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %88

21:                                               ; preds = %15
  %22 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %23 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %24 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %23, i32 0, i32 5
  store %struct.rxe_dev* %22, %struct.rxe_dev** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %27 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (...) @cache_line_size()
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (...) @cache_line_size()
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @roundup_pow_of_two(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @order_base_2(i32 %36)
  %38 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %39 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @roundup_pow_of_two(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %45, 1
  %47 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %48 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = add i64 4, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call %struct.TYPE_2__* @vmalloc_user(i64 %54)
  %56 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %57 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %56, i32 0, i32 3
  store %struct.TYPE_2__* %55, %struct.TYPE_2__** %57, align 8
  %58 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %59 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp ne %struct.TYPE_2__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %33
  br label %85

63:                                               ; preds = %33
  %64 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %65 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %68 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %72 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %75 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %80 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sub i32 %81, 1
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  store %struct.rxe_queue* %84, %struct.rxe_queue** %4, align 8
  br label %89

85:                                               ; preds = %62
  %86 = load %struct.rxe_queue*, %struct.rxe_queue** %8, align 8
  %87 = call i32 @kfree(%struct.rxe_queue* %86)
  br label %88

88:                                               ; preds = %85, %20, %14
  store %struct.rxe_queue* null, %struct.rxe_queue** %4, align 8
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.rxe_queue*, %struct.rxe_queue** %4, align 8
  ret %struct.rxe_queue* %90
}

declare dso_local %struct.rxe_queue* @kmalloc(i32, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local %struct.TYPE_2__* @vmalloc_user(i64) #1

declare dso_local i32 @kfree(%struct.rxe_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
