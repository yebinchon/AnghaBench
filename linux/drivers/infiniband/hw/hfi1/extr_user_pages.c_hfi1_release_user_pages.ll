; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_pages.c_hfi1_release_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_pages.c_hfi1_release_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_release_user_pages(%struct.mm_struct* %0, %struct.page** %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.page**, %struct.page*** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @put_user_pages_dirty_lock(%struct.page** %9, i64 %10, i32 %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = icmp ne %struct.mm_struct* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = call i32 @atomic64_sub(i64 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @put_user_pages_dirty_lock(%struct.page**, i64, i32) #1

declare dso_local i32 @atomic64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
