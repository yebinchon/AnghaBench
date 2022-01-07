; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_free_iova_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_free_iova_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_domain = type { i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iova_domain*)* @free_iova_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_iova_flush_queue(%struct.iova_domain* %0) #0 {
  %2 = alloca %struct.iova_domain*, align 8
  store %struct.iova_domain* %0, %struct.iova_domain** %2, align 8
  %3 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %4 = call i32 @has_iova_flush_queue(%struct.iova_domain* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %9 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %8, i32 0, i32 3
  %10 = call i64 @timer_pending(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %14 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %13, i32 0, i32 3
  %15 = call i32 @del_timer(i32* %14)
  br label %16

16:                                               ; preds = %12, %7
  %17 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %18 = call i32 @fq_destroy_all_entries(%struct.iova_domain* %17)
  %19 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %20 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free_percpu(i32* %21)
  %23 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %24 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %26 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.iova_domain*, %struct.iova_domain** %2, align 8
  %28 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @has_iova_flush_queue(%struct.iova_domain*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @fq_destroy_all_entries(%struct.iova_domain*) #1

declare dso_local i32 @free_percpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
