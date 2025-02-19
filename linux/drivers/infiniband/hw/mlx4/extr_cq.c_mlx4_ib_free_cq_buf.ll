; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_free_cq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_free_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_cq_buf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq_buf*, i32)* @mlx4_ib_free_cq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_cq_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.mlx4_ib_cq_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.mlx4_ib_cq_buf* %1, %struct.mlx4_ib_cq_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  %12 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %16, i32 0, i32 1
  %18 = call i32 @mlx4_buf_free(i32 %9, i32 %15, i32* %17)
  ret void
}

declare dso_local i32 @mlx4_buf_free(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
