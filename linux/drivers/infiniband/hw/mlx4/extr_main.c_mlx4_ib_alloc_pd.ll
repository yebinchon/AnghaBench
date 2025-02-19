; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_pd = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.ib_udata*)* @mlx4_ib_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.mlx4_ib_pd*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %10 = call %struct.mlx4_ib_pd* @to_mpd(%struct.ib_pd* %9)
  store %struct.mlx4_ib_pd* %10, %struct.mlx4_ib_pd** %6, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  store %struct.ib_device* %13, %struct.ib_device** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %15 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %18, i32 0, i32 0
  %20 = call i32 @mlx4_pd_alloc(i32 %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %27 = icmp ne %struct.ib_udata* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %30 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %30, i32 0, i32 0
  %32 = call i64 @ib_copy_to_udata(%struct.ib_udata* %29, i32* %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %36 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mlx4_pd_free(i32 %38, i32 %41)
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %28, %25
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %34, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.mlx4_ib_pd* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx4_pd_alloc(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mlx4_pd_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
