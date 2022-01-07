; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_post_send_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_post_send_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.umr_common }
%struct.umr_common = type { i32, i32 }
%struct.mlx5_umr_wr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ib_send_wr = type { i32 }
%struct.mlx5_ib_umr_context = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"UMR post send failed, err %d\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"reg umr failed (%u)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_umr_wr*)* @mlx5_ib_post_send_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_post_send_wait(%struct.mlx5_ib_dev* %0, %struct.mlx5_umr_wr* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_umr_wr*, align 8
  %5 = alloca %struct.umr_common*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_umr_context, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_umr_wr* %1, %struct.mlx5_umr_wr** %4, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  store %struct.umr_common* %10, %struct.umr_common** %5, align 8
  %11 = call i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context* %8)
  %12 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 2
  %13 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* %12, i32** %15, align 8
  %16 = load %struct.umr_common*, %struct.umr_common** %5, align 8
  %17 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %16, i32 0, i32 0
  %18 = call i32 @down(i32* %17)
  %19 = load %struct.umr_common*, %struct.umr_common** %5, align 8
  %20 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %22, i32 0, i32 0
  %24 = call i32 @ib_post_send(i32 %21, %struct.TYPE_2__* %23, %struct.ib_send_wr** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %46

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 1
  %33 = call i32 @wait_for_completion(i32* %32)
  %34 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IB_WC_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_umr_context, %struct.mlx5_ib_umr_context* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.umr_common*, %struct.umr_common** %5, align 8
  %48 = getelementptr inbounds %struct.umr_common, %struct.umr_common* %47, i32 0, i32 0
  %49 = call i32 @up(i32* %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @mlx5_ib_init_umr_context(%struct.mlx5_ib_umr_context*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_2__*, %struct.ib_send_wr**) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
