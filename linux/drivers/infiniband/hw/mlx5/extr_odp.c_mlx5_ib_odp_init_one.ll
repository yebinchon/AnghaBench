; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_odp_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_odp_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IB_ODP_SUPPORT = common dso_local global i32 0, align 4
@mlx5_ib_dev_odp_ops = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_IMPLICIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error getting null_mkey %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_odp_init_one(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IB_ODP_SUPPORT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 4
  %17 = call i32 @ib_set_device_ops(i32* %16, i32* @mlx5_ib_dev_odp_ops)
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IB_ODP_SUPPORT_IMPLICIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %29, i32 0, i32 1
  %31 = call i32 @mlx5_cmd_null_mkey(i32 %28, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 0
  %44 = call i32 @mlx5_ib_create_pf_eq(%struct.mlx5_ib_dev* %41, i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %34, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ib_set_device_ops(i32*, i32*) #1

declare dso_local i32 @mlx5_cmd_null_mkey(i32, i32*) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_ib_create_pf_eq(%struct.mlx5_ib_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
