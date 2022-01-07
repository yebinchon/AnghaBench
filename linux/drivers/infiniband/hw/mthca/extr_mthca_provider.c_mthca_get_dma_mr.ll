; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.mthca_mr = type { %struct.ib_mr, i32* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32)* @mthca_get_dma_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @mthca_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_mr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mthca_mr* @kmalloc(i32 16, i32 %8)
  store %struct.mthca_mr* %9, %struct.mthca_mr** %6, align 8
  %10 = load %struct.mthca_mr*, %struct.mthca_mr** %6, align 8
  %11 = icmp ne %struct.mthca_mr* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_mr* @ERR_PTR(i32 %14)
  store %struct.ib_mr* %15, %struct.ib_mr** %3, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @to_mdev(i32 %19)
  %21 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %22 = call %struct.TYPE_2__* @to_mpd(%struct.ib_pd* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @convert_access(i32 %25)
  %27 = load %struct.mthca_mr*, %struct.mthca_mr** %6, align 8
  %28 = call i32 @mthca_mr_alloc_notrans(i32 %20, i32 %24, i32 %26, %struct.mthca_mr* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.mthca_mr*, %struct.mthca_mr** %6, align 8
  %33 = call i32 @kfree(%struct.mthca_mr* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.ib_mr* @ERR_PTR(i32 %34)
  store %struct.ib_mr* %35, %struct.ib_mr** %3, align 8
  br label %41

36:                                               ; preds = %16
  %37 = load %struct.mthca_mr*, %struct.mthca_mr** %6, align 8
  %38 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.mthca_mr*, %struct.mthca_mr** %6, align 8
  %40 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %39, i32 0, i32 0
  store %struct.ib_mr* %40, %struct.ib_mr** %3, align 8
  br label %41

41:                                               ; preds = %36, %31, %12
  %42 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %42
}

declare dso_local %struct.mthca_mr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @mthca_mr_alloc_notrans(i32, i32, i32, %struct.mthca_mr*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @kfree(%struct.mthca_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
