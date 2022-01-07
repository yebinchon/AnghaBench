; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_qp.c_alloc_host_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_qp.c_alloc_host_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.t4_sq = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, %struct.t4_sq*)* @alloc_host_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_host_sq(%struct.c4iw_rdev* %0, %struct.t4_sq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_rdev*, align 8
  %5 = alloca %struct.t4_sq*, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %4, align 8
  store %struct.t4_sq* %1, %struct.t4_sq** %5, align 8
  %6 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %7 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %12 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %15 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @dma_alloc_coherent(i32* %10, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %19 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %21 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %29 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @virt_to_phys(i32 %30)
  %32 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %33 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %35 = load i32, i32* @mapping, align 4
  %36 = load %struct.t4_sq*, %struct.t4_sq** %5, align 8
  %37 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_unmap_addr_set(%struct.t4_sq* %34, i32 %35, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.t4_sq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
