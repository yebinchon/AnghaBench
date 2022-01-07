; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_pd = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.ib_udata*)* @mthca_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.mthca_pd*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  store %struct.ib_device* %11, %struct.ib_device** %6, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %13 = call %struct.mthca_pd* @to_mpd(%struct.ib_pd* %12)
  store %struct.mthca_pd* %13, %struct.mthca_pd** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call i32 @to_mdev(%struct.ib_device* %14)
  %16 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %17 = icmp ne %struct.ib_udata* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %21 = call i32 @mthca_pd_alloc(i32 %15, i32 %19, %struct.mthca_pd* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %28 = icmp ne %struct.ib_udata* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %31 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %32 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %31, i32 0, i32 0
  %33 = call i64 @ib_copy_to_udata(%struct.ib_udata* %30, i32* %32, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %37 = call i32 @to_mdev(%struct.ib_device* %36)
  %38 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %39 = call i32 @mthca_pd_free(i32 %37, %struct.mthca_pd* %38)
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %26
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %35, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.mthca_pd* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mthca_pd_alloc(i32, i32, %struct.mthca_pd*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mthca_pd_free(i32, %struct.mthca_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
