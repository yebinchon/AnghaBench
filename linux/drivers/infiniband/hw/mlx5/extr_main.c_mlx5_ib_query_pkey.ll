; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_query_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_query_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, i32*)* @mlx5_ib_query_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_query_pkey(%struct.ib_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %11 = call i32 @mlx5_get_vport_access_method(%struct.ib_device* %10)
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 130, label %18
    i32 128, label %18
  ]

12:                                               ; preds = %4
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @mlx5_query_mad_ifc_pkey(%struct.ib_device* %13, i32 %14, i32 %15, i32* %16)
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %4, %4
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @mlx5_query_hca_nic_pkey(%struct.ib_device* %19, i32 %20, i32 %21, i32* %22)
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %18, %12
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @mlx5_get_vport_access_method(%struct.ib_device*) #1

declare dso_local i32 @mlx5_query_mad_ifc_pkey(%struct.ib_device*, i32, i32, i32*) #1

declare dso_local i32 @mlx5_query_hca_nic_pkey(%struct.ib_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
