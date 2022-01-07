; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_handle_caching_state_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_handle_caching_state_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, i32, i32, %struct.page**, i32)* @ttm_handle_caching_state_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_handle_caching_state_failure(%struct.list_head* %0, i32 %1, i32 %2, %struct.page** %3, i32 %4) #0 {
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %30, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.page**, %struct.page*** %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.page*, %struct.page** %17, i64 %19
  %21 = load %struct.page*, %struct.page** %20, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.page**, %struct.page*** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %26
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = call i32 @__free_page(%struct.page* %28)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %12

33:                                               ; preds = %12
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
