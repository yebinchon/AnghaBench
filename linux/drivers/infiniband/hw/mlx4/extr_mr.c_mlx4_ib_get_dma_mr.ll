; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_8__, %struct.ib_mr, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_mr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlx4_ib_mr* @kzalloc(i32 24, i32 %8)
  store %struct.mlx4_ib_mr* %9, %struct.mlx4_ib_mr** %6, align 8
  %10 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %11 = icmp ne %struct.mlx4_ib_mr* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_mr* @ERR_PTR(i32 %14)
  store %struct.ib_mr* %15, %struct.ib_mr** %3, align 8
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_7__* @to_mdev(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %24 = call %struct.TYPE_6__* @to_mpd(%struct.ib_pd* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @convert_access(i32 %27)
  %29 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %29, i32 0, i32 0
  %31 = call i32 @mlx4_mr_alloc(i32 %22, i32 %26, i32 0, i64 -1, i32 %28, i32 0, i32 0, %struct.TYPE_8__* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %73

35:                                               ; preds = %16
  %36 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %37 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_7__* @to_mdev(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %42, i32 0, i32 0
  %44 = call i32 @mlx4_mr_enable(i32 %41, %struct.TYPE_8__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %63

48:                                               ; preds = %35
  %49 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  %59 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %61, i32 0, i32 1
  store %struct.ib_mr* %62, %struct.ib_mr** %3, align 8
  br label %78

63:                                               ; preds = %47
  %64 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %65 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_7__* @to_mdev(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %70, i32 0, i32 0
  %72 = call i32 @mlx4_mr_free(i32 %69, %struct.TYPE_8__* %71)
  br label %73

73:                                               ; preds = %63, %34
  %74 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %75 = call i32 @kfree(%struct.mlx4_ib_mr* %74)
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.ib_mr* @ERR_PTR(i32 %76)
  store %struct.ib_mr* %77, %struct.ib_mr** %3, align 8
  br label %78

78:                                               ; preds = %73, %48, %12
  %79 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %79
}

declare dso_local %struct.mlx4_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @to_mdev(i32) #1

declare dso_local %struct.TYPE_6__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
