; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_wqe_put_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_wqe_put_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_wqe = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SIW_WQE_INLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_wqe_put_mem(%struct.siw_wqe* %0, i32 %1) #0 {
  %3 = alloca %struct.siw_wqe*, align 8
  %4 = alloca i32, align 4
  store %struct.siw_wqe* %0, %struct.siw_wqe** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %38 [
    i32 131, label %6
    i32 128, label %6
    i32 129, label %6
    i32 130, label %6
    i32 135, label %6
    i32 134, label %6
    i32 132, label %24
    i32 133, label %33
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2
  %7 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %8 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SIW_WQE_INLINE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %6
  %15 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %16 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %19 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @siw_unref_mem_sgl(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %14, %6
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %26 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %29 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @siw_unref_mem_sgl(i32 %27, i32 %31)
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %35 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @siw_unref_mem_sgl(i32 %36, i32 1)
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %33, %24, %23
  ret void
}

declare dso_local i32 @siw_unref_mem_sgl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
