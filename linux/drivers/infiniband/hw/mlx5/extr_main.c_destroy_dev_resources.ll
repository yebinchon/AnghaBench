; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_destroy_dev_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_destroy_dev_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_resources = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_resources*)* @destroy_dev_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_dev_resources(%struct.mlx5_ib_resources* %0) #0 {
  %2 = alloca %struct.mlx5_ib_resources*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_ib_resources* %0, %struct.mlx5_ib_resources** %2, align 8
  %4 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @mlx5_ib_destroy_srq(i32 %6, i32* null)
  %8 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kfree(i32 %10)
  %12 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mlx5_ib_destroy_srq(i32 %14, i32* null)
  %16 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlx5_ib_dealloc_xrcd(i32 %22, i32* null)
  %24 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlx5_ib_dealloc_xrcd(i32 %26, i32* null)
  %28 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_ib_destroy_cq(i32 %30, i32* null)
  %32 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mlx5_ib_dealloc_pd(i32 %38, i32* null)
  %40 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kfree(i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %60, %1
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %48)
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %2, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @cancel_work_sync(i32* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %44

63:                                               ; preds = %44
  ret void
}

declare dso_local i32 @mlx5_ib_destroy_srq(i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlx5_ib_dealloc_xrcd(i32, i32*) #1

declare dso_local i32 @mlx5_ib_destroy_cq(i32, i32*) #1

declare dso_local i32 @mlx5_ib_dealloc_pd(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
