; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_6__, %struct.ib_mr, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@MLX4_MAX_FAST_REG_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.mlx4_ib_mr*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx4_ib_dev* @to_mdev(i32 %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MLX4_MAX_FAST_REG_PAGES, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.ib_mr* @ERR_PTR(i32 %26)
  store %struct.ib_mr* %27, %struct.ib_mr** %5, align 8
  br label %111

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mlx4_ib_mr* @kzalloc(i32 32, i32 %29)
  store %struct.mlx4_ib_mr* %30, %struct.mlx4_ib_mr** %11, align 8
  %31 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %32 = icmp ne %struct.mlx4_ib_mr* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.ib_mr* @ERR_PTR(i32 %35)
  store %struct.ib_mr* %36, %struct.ib_mr** %5, align 8
  br label %111

37:                                               ; preds = %28
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %42 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %46, i32 0, i32 0
  %48 = call i32 @mlx4_mr_alloc(i32 %40, i32 %44, i32 0, i32 0, i32 0, i32 %45, i32 0, %struct.TYPE_6__* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %106

52:                                               ; preds = %37
  %53 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %54 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mlx4_alloc_priv_pages(i32 %55, %struct.mlx4_ib_mr* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %99

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %69, i32 0, i32 0
  %71 = call i32 @mlx4_mr_enable(i32 %68, %struct.TYPE_6__* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %90

75:                                               ; preds = %62
  %76 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %84, i32 0, i32 2
  store i32 %79, i32* %85, align 4
  %86 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %88, i32 0, i32 1
  store %struct.ib_mr* %89, %struct.ib_mr** %5, align 8
  br label %111

90:                                               ; preds = %74
  %91 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %92 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %98 = call i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr* %97)
  br label %99

99:                                               ; preds = %90, %61
  %100 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %103, i32 0, i32 0
  %105 = call i32 @mlx4_mr_free(i32 %102, %struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %99, %51
  %107 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %11, align 8
  %108 = call i32 @kfree(%struct.mlx4_ib_mr* %107)
  %109 = load i32, i32* %12, align 4
  %110 = call %struct.ib_mr* @ERR_PTR(i32 %109)
  store %struct.ib_mr* %110, %struct.ib_mr** %5, align 8
  br label %111

111:                                              ; preds = %106, %75, %33, %24
  %112 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %112
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx4_alloc_priv_pages(i32, %struct.mlx4_ib_mr*, i32) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
