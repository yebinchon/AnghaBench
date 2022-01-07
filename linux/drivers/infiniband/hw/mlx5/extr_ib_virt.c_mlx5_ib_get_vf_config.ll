; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_virt.c_mlx5_ib_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_virt.c_mlx5_ib_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ifla_vf_info = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_hca_vport_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to query port policy for vf %d (%d)\0A\00", align 1
@__IFLA_VF_LINK_STATE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_get_vf_config(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ifla_vf_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifla_vf_info*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_core_dev*, align 8
  %12 = alloca %struct.mlx5_hca_vport_context*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ifla_vf_info* %3, %struct.ifla_vf_info** %9, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %14)
  store %struct.mlx5_ib_dev* %15, %struct.mlx5_ib_dev** %10, align 8
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %11, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mlx5_hca_vport_context* @kzalloc(i32 4, i32 %19)
  store %struct.mlx5_hca_vport_context* %20, %struct.mlx5_hca_vport_context** %12, align 8
  %21 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %12, align 8
  %22 = icmp ne %struct.mlx5_hca_vport_context* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %12, align 8
  %31 = call i32 @mlx5_query_hca_vport_context(%struct.mlx5_core_dev* %27, i32 1, i32 1, i32 %29, %struct.mlx5_hca_vport_context* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %57

39:                                               ; preds = %26
  %40 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %41 = call i32 @memset(%struct.ifla_vf_info* %40, i32 0, i32 4)
  %42 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %12, align 8
  %43 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlx_to_net_policy(i32 %44)
  %46 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %47 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %49 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @__IFLA_VF_LINK_STATE_MAX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %39
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %12, align 8
  %59 = call i32 @kfree(%struct.mlx5_hca_vport_context* %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx5_hca_vport_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_query_hca_vport_context(%struct.mlx5_core_dev*, i32, i32, i32, %struct.mlx5_hca_vport_context*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.ifla_vf_info*, i32, i32) #1

declare dso_local i32 @mlx_to_net_policy(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_hca_vport_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
