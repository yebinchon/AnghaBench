; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_qp_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_qp_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*)* @destroy_qp_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_qp_kernel(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %4, align 8
  %5 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kvfree(i32 %8)
  %10 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kvfree(i32 %13)
  %15 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kvfree(i32 %18)
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kvfree(i32 %23)
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kvfree(i32 %28)
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %33, i32 0, i32 1
  %35 = call i32 @mlx5_db_free(i32 %32, i32* %34)
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %39, i32 0, i32 0
  %41 = call i32 @mlx5_frag_buf_free(i32 %38, i32* %40)
  ret void
}

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @mlx5_db_free(i32, i32*) #1

declare dso_local i32 @mlx5_frag_buf_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
