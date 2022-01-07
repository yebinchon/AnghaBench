; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_alloc_mr_from_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_alloc_mr_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_mr = type { i32, i32, %struct.TYPE_5__, %struct.ib_umem*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.ib_pd* }
%struct.ib_pd = type { i32 }
%struct.ib_umem = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"add_keys failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_mr* (%struct.ib_pd*, %struct.ib_umem*, i8*, i8*, i32, i32, i32, i32)* @alloc_mr_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_mr* @alloc_mr_from_cache(%struct.ib_pd* %0, %struct.ib_umem* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca %struct.ib_pd*, align 8
  %11 = alloca %struct.ib_umem*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca %struct.mlx5_ib_mr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %10, align 8
  store %struct.ib_umem* %1, %struct.ib_umem** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %23 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mlx5_ib_dev* @to_mdev(i32 %24)
  store %struct.mlx5_ib_dev* %25, %struct.mlx5_ib_dev** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %26

26:                                               ; preds = %54, %8
  %27 = load i32, i32* %21, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call %struct.mlx5_ib_mr* @alloc_cached_mr(%struct.mlx5_ib_dev* %30, i32 %31)
  store %struct.mlx5_ib_mr* %32, %struct.mlx5_ib_mr** %19, align 8
  %33 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %34 = icmp ne %struct.mlx5_ib_mr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %57

36:                                               ; preds = %29
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @order2idx(%struct.mlx5_ib_dev* %38, i32 %39)
  %41 = call i32 @add_keys(%struct.mlx5_ib_dev* %37, i32 %40, i32 1)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %51 = load i32, i32* %20, align 4
  %52 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %44, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %21, align 4
  br label %26

57:                                               ; preds = %49, %35, %26
  %58 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %59 = icmp ne %struct.mlx5_ib_mr* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %62)
  store %struct.mlx5_ib_mr* %63, %struct.mlx5_ib_mr** %9, align 8
  br label %93

64:                                               ; preds = %57
  %65 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %66 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.ib_pd* %65, %struct.ib_pd** %68, align 8
  %69 = load %struct.ib_umem*, %struct.ib_umem** %11, align 8
  %70 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %70, i32 0, i32 3
  store %struct.ib_umem* %69, %struct.ib_umem** %71, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %75, i32 0, i32 1
  store i32 4, i32* %76, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %86 = call %struct.TYPE_6__* @to_mpd(%struct.ib_pd* %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  store %struct.mlx5_ib_mr* %92, %struct.mlx5_ib_mr** %9, align 8
  br label %93

93:                                               ; preds = %64, %60
  %94 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  ret %struct.mlx5_ib_mr* %94
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_mr* @alloc_cached_mr(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @add_keys(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @order2idx(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local %struct.mlx5_ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_6__* @to_mpd(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
