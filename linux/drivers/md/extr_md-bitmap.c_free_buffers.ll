; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffers(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PagePrivate(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call %struct.buffer_head* @page_buffers(%struct.page* %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %3, align 8
  br label %12

12:                                               ; preds = %15, %9
  %13 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %14 = icmp ne %struct.buffer_head* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %18, %struct.buffer_head** %4, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %20 = call i32 @free_buffer_head(%struct.buffer_head* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  store %struct.buffer_head* %21, %struct.buffer_head** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @__clear_page_buffers(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @put_page(%struct.page* %25)
  br label %27

27:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

declare dso_local i32 @__clear_page_buffers(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
