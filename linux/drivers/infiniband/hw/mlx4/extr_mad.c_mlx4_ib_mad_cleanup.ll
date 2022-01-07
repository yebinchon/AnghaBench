; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_mad_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_mad_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, i64*, %struct.ib_mad_agent*** }
%struct.ib_mad_agent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_mad_cleanup(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %66, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 2
  %19 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %19, i64 %21
  %23 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %23, i64 %25
  %27 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %26, align 8
  store %struct.ib_mad_agent* %27, %struct.ib_mad_agent** %3, align 8
  %28 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %29 = icmp ne %struct.ib_mad_agent* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %16
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 2
  %33 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %33, i64 %35
  %37 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %37, i64 %39
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %40, align 8
  %41 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %42 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %41)
  br label %43

43:                                               ; preds = %30, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @rdma_destroy_ah(i64 %63, i32 0)
  br label %65

65:                                               ; preds = %56, %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %6

69:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

declare dso_local i32 @rdma_destroy_ah(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
