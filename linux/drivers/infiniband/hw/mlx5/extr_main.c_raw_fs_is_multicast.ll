; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_raw_fs_is_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_raw_fs_is_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_flow_matcher = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@MATCH_CRITERIA_ENABLE_OUTER_BIT = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_flow_matcher*, i8*)* @raw_fs_is_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_fs_is_multicast(%struct.mlx5_ib_flow_matcher* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_flow_matcher*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.mlx5_ib_flow_matcher* %0, %struct.mlx5_ib_flow_matcher** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MATCH_CRITERIA_ENABLE_OUTER_BIT, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* @fte_match_param, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @outer_headers, align 4
  %29 = call i8* @MLX5_ADDR_OF(i32 %26, i8* %27, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* @fte_match_param, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @outer_headers, align 4
  %33 = call i8* @MLX5_ADDR_OF(i32 %30, i8* %31, i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @dmac_47_16, align 4
  %37 = call i8* @MLX5_ADDR_OF(i32 %34, i8* %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @dmac_47_16, align 4
  %41 = call i8* @MLX5_ADDR_OF(i32 %38, i8* %39, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @is_multicast_ether_addr(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %21
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @is_multicast_ether_addr(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %72

50:                                               ; preds = %45, %21
  %51 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %54 = call i8* @MLX5_ADDR_OF(i32 %51, i8* %52, i32 %53)
  store i8* %54, i8** %11, align 8
  %55 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %58 = call i8* @MLX5_ADDR_OF(i32 %55, i8* %56, i32 %57)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ipv4_is_multicast(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load i8*, i8** %12, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ipv4_is_multicast(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %72

71:                                               ; preds = %64, %50
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %70, %49, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
