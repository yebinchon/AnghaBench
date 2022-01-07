; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_matcher_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_matcher_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_ib_flow_matcher = type { i32 }

@MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX = common dso_local global i32 0, align 4
@MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE = common dso_local global i32 0, align 4
@MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_FLAGS_EGRESS = common dso_local global i32 0, align 4
@MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, %struct.mlx5_ib_flow_matcher*)* @mlx5_ib_matcher_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_matcher_ns(%struct.uverbs_attr_bundle* %0, %struct.mlx5_ib_flow_matcher* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uverbs_attr_bundle*, align 8
  %5 = alloca %struct.mlx5_ib_flow_matcher*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %4, align 8
  store %struct.mlx5_ib_flow_matcher* %1, %struct.mlx5_ib_flow_matcher** %5, align 8
  %9 = load i32, i32* @MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %11 = load i32, i32* @MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE, align 4
  %12 = call i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %16 = load i32, i32* @MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS, align 4
  %17 = call i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %14, %2
  %23 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %24 = load i32, i32* @MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE, align 4
  %25 = call i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %29 = load i32, i32* @MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE, align 4
  %30 = call i32 @uverbs_get_const(i32* %6, %struct.uverbs_attr_bundle* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %37, i32 0, i32 0
  %39 = call i32 @mlx5_ib_ft_type_to_namespace(i32 %36, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %72

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %72

45:                                               ; preds = %22
  %46 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %47 = load i32, i32* @MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS, align 4
  %48 = call i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %52 = load i32, i32* @MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS, align 4
  %53 = load i32, i32* @IB_FLOW_ATTR_FLAGS_EGRESS, align 4
  %54 = call i32 @uverbs_get_flags32(i64* %7, %struct.uverbs_attr_bundle* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %50
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX, align 4
  %64 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %64, i32 0, i32 0
  %66 = call i32 @mlx5_ib_ft_type_to_namespace(i32 %63, i32* %65)
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* @MLX5_FLOW_NAMESPACE_BYPASS, align 4
  %70 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %62, %57, %44, %42, %33, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @uverbs_get_const(i32*, %struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @mlx5_ib_ft_type_to_namespace(i32, i32*) #1

declare dso_local i32 @uverbs_get_flags32(i64*, %struct.uverbs_attr_bundle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
