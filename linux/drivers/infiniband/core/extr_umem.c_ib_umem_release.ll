; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem.c_ib_umem_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem.c_ib_umem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_umem_release(%struct.ib_umem* %0) #0 {
  %2 = alloca %struct.ib_umem*, align 8
  store %struct.ib_umem* %0, %struct.ib_umem** %2, align 8
  %3 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %4 = icmp ne %struct.ib_umem* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %8 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %13 = call i32 @to_ib_umem_odp(%struct.ib_umem* %12)
  call void @ib_umem_odp_release(i32 %13)
  br label %33

14:                                               ; preds = %6
  %15 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %16 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %19 = call i32 @__ib_umem_release(i32 %17, %struct.ib_umem* %18, i32 1)
  %20 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %21 = call i32 @ib_umem_num_pages(%struct.ib_umem* %20)
  %22 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %23 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @atomic64_sub(i32 %21, i32* %25)
  %27 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %28 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @mmdrop(%struct.TYPE_2__* %29)
  %31 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %32 = call i32 @kfree(%struct.ib_umem* %31)
  br label %33

33:                                               ; preds = %14, %11, %5
  ret void
}

declare dso_local void @ib_umem_odp_release(i32) #1

declare dso_local i32 @to_ib_umem_odp(%struct.ib_umem*) #1

declare dso_local i32 @__ib_umem_release(i32, %struct.ib_umem*, i32) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

declare dso_local i32 @ib_umem_num_pages(%struct.ib_umem*) #1

declare dso_local i32 @mmdrop(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
