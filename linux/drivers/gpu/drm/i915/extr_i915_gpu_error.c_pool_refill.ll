; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_pool_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_pool_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pagevec*, i32)* @pool_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_refill(%struct.pagevec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pagevec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %9 = call i64 @pagevec_space(%struct.pagevec* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.page* @alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %6, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @pagevec_add(%struct.pagevec* %20, %struct.page* %21)
  br label %7

23:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @pagevec_space(%struct.pagevec*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
