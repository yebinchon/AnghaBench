; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_alloc_resize_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_alloc_resize_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_cq = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_resize_cq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32, %struct.ib_udata*)* @mlx4_alloc_resize_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_resize_umem(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_cq* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mlx4_ib_resize_cq, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store %struct.mlx4_ib_cq* %1, %struct.mlx4_ib_cq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %12 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %68

19:                                               ; preds = %4
  %20 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %21 = call i64 @ib_copy_from_udata(%struct.mlx4_ib_resize_cq* %10, %struct.ib_udata* %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %19
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_3__* @kmalloc(i32 8, i32 %27)
  %29 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %29, i32 0, i32 0
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  %31 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %68

38:                                               ; preds = %26
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %40 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %41 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.mlx4_ib_resize_cq, %struct.mlx4_ib_resize_cq* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev* %39, %struct.ib_udata* %40, i32* %44, i64* %46, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @kfree(%struct.TYPE_3__* %56)
  %58 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %58, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %59, align 8
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %38
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %53, %35, %23, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @ib_copy_from_udata(%struct.mlx4_ib_resize_cq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev*, %struct.ib_udata*, i32*, i64*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
