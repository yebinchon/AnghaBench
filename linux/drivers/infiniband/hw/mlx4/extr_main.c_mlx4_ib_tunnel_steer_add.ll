; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_tunnel_steer_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_tunnel_steer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_flow_attr = type { i32, i32, i32 }
%union.ib_flow_spec = type { i64 }
%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.mlx4_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MLX4_TUNNEL_OFFLOAD_MODE_VXLAN = common dso_local global i64 0, align 8
@MLX4_STEERING_DMFS_A0_STATIC = common dso_local global i64 0, align 8
@IB_FLOW_SPEC_ETH = common dso_local global i64 0, align 8
@MLX4_DOMAIN_UVERBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_flow_attr*, i32*)* @mlx4_ib_tunnel_steer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_tunnel_steer_add(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_flow_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.ib_flow_spec*, align 8
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_8__* @to_mdev(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %16, align 8
  store %struct.mlx4_dev* %17, %struct.mlx4_dev** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MLX4_TUNNEL_OFFLOAD_MODE_VXLAN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MLX4_STEERING_DMFS_A0_STATIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %3
  store i32 0, i32* %4, align 4
  br label %76

32:                                               ; preds = %24
  %33 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %33, i64 1
  %35 = bitcast %struct.ib_flow_attr* %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %37, %union.ib_flow_spec** %9, align 8
  %38 = load %union.ib_flow_spec*, %union.ib_flow_spec** %9, align 8
  %39 = bitcast %union.ib_flow_spec* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IB_FLOW_SPEC_ETH, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %32
  store i32 0, i32* %4, align 4
  br label %76

49:                                               ; preds = %43
  %50 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %51 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_8__* @to_mdev(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %54, align 8
  %56 = load %union.ib_flow_spec*, %union.ib_flow_spec** %9, align 8
  %57 = bitcast %union.ib_flow_spec* %56 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %65 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MLX4_DOMAIN_UVERBS, align 4
  %68 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @mlx4_tunnel_steer_add(%struct.mlx4_dev* %55, i32 %60, i32 %63, i32 %66, i32 %72, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %49, %48, %31
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_8__* @to_mdev(i32) #1

declare dso_local i32 @mlx4_tunnel_steer_add(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
