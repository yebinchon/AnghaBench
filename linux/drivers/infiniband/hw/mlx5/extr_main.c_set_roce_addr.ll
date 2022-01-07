; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_roce_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_roce_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_1 = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_2 = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV4 = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected GID type %u\0A\00", align 1
@VLAN_CFI_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*)* @set_roce_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_roce_addr(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %struct.ib_gid_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %11, align 8
  store i32 129, i32* %12, align 4
  store i64 65535, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %25 = icmp ne %union.ib_gid* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %5
  %27 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %28 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %31 = getelementptr inbounds i32, i32* %23, i64 0
  %32 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %30, i64* %13, i32* %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %74

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %53 [
    i32 129, label %40
    i32 128, label %42
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @MLX5_ROCE_VERSION_1, align 4
  store i32 %41, i32* %14, align 4
  br label %57

42:                                               ; preds = %38
  %43 = load i32, i32* @MLX5_ROCE_VERSION_2, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %45 = bitcast %union.ib_gid* %44 to i8*
  %46 = call i32 @ipv6_addr_v4mapped(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV4, align 4
  store i32 %49, i32* %15, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV6, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %57

53:                                               ; preds = %38
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %52, %40
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %65 = bitcast %union.ib_gid* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @VLAN_CFI_MASK, align 8
  %69 = icmp slt i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @mlx5_core_roce_gid_set(i32 %60, i32 %61, i32 %62, i32 %63, i32 %66, i32* %23, i32 %70, i64 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %74

74:                                               ; preds = %57, %35
  %75 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i64*, i32*) #2

declare dso_local i32 @ipv6_addr_v4mapped(i8*) #2

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #2

declare dso_local i32 @mlx5_core_roce_gid_set(i32, i32, i32, i32, i32, i32*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
