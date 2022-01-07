; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_set_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_set_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_srq_attr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@wq_signature = common dso_local global i32 0, align 4
@MLX5_SRQ_FLAG_WQ_SIG = common dso_local global i32 0, align 4
@log_wq_pg_sz = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4
@page_offset = common dso_local global i32 0, align 4
@lwm = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5_srq_attr*)* @set_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_wq(i8* %0, %struct.mlx5_srq_attr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_srq_attr*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mlx5_srq_attr* %1, %struct.mlx5_srq_attr** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @wq_signature, align 4
  %8 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MLX5_SRQ_FLAG_WQ_SIG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @MLX5_SET(i8* %5, i8* %6, i32 %7, i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @log_wq_pg_sz, align 4
  %21 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MLX5_SET(i8* %18, i8* %19, i32 %20, i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @log_wq_stride, align 4
  %28 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 4
  %32 = call i32 @MLX5_SET(i8* %25, i8* %26, i32 %27, i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @log_wq_sz, align 4
  %36 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MLX5_SET(i8* %33, i8* %34, i32 %35, i32 %38)
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* @page_offset, align 4
  %43 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MLX5_SET(i8* %40, i8* %41, i32 %42, i32 %45)
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* @lwm, align 4
  %50 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 %52)
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @pd, align 4
  %57 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MLX5_SET(i8* %54, i8* %55, i32 %56, i32 %59)
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* @dbr_addr, align 4
  %64 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @MLX5_SET64(i8* %61, i8* %62, i32 %63, i32 %66)
  ret void
}

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
