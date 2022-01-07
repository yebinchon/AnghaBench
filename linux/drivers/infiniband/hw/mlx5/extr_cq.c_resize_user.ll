; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_resize_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_resize_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_cq = type { %struct.ib_umem* }
%struct.ib_umem = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_resize_cq = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*, i32, %struct.ib_udata*, i32*, i32*, i32*)* @resize_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_user(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_cq* %1, i32 %2, %struct.ib_udata* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_ib_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_udata*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mlx5_ib_resize_cq, align 8
  %17 = alloca %struct.ib_umem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store %struct.mlx5_ib_cq* %1, %struct.mlx5_ib_cq** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.ib_udata*, %struct.ib_udata** %12, align 8
  %21 = call i32 @ib_copy_from_udata(%struct.mlx5_ib_resize_cq* %16, %struct.ib_udata* %20, i32 24)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %8, align 4
  br label %84

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %84

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* @SIZE_MAX, align 4
  %43 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %42, %44
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %84

52:                                               ; preds = %41, %37
  %53 = load %struct.ib_udata*, %struct.ib_udata** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %58, %60
  %62 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %63 = call %struct.ib_umem* @ib_umem_get(%struct.ib_udata* %53, i32 %55, i64 %61, i32 %62, i32 1)
  store %struct.ib_umem* %63, %struct.ib_umem** %17, align 8
  %64 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %65 = call i64 @IS_ERR(%struct.ib_umem* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %69 = call i32 @PTR_ERR(%struct.ib_umem* %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %8, align 4
  br label %84

71:                                               ; preds = %52
  %72 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @mlx5_ib_cont_pages(%struct.ib_umem* %72, i32 %74, i32 0, i32* %19, i32* %75, i32* %76, i32* null)
  %78 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %79 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %79, i32 0, i32 0
  store %struct.ib_umem* %78, %struct.ib_umem** %80, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %15, align 8
  store i32 %82, i32* %83, align 4
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %71, %67, %49, %34, %24
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @ib_copy_from_udata(%struct.mlx5_ib_resize_cq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_udata*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_umem*) #1

declare dso_local i32 @mlx5_ib_cont_pages(%struct.ib_umem*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
