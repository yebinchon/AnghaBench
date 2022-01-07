; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_mr_cache_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_mr_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_mr_cache }
%struct.mlx5_mr_cache = type { i32, %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i32, i32, i32, i32, i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32 }

@MAX_MR_CACHE_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_mr_cache_free(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca %struct.mlx5_mr_cache*, align 8
  %6 = alloca %struct.mlx5_cache_ent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %4, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  store %struct.mlx5_mr_cache* %10, %struct.mlx5_mr_cache** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %18 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @order2idx(%struct.mlx5_ib_dev* %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MAX_MR_CACHE_ENTRIES, align 4
  %27 = icmp sge i32 %25, %26
  br label %28

28:                                               ; preds = %24, %16
  %29 = phi i1 [ true, %16 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %33 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %34 = call i64 @unreg_umr(%struct.mlx5_ib_dev* %32, %struct.mlx5_ib_mr* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %28
  %37 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %41 = call i32 @destroy_mkey(%struct.mlx5_ib_dev* %39, %struct.mlx5_ib_mr* %40)
  %42 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %42, i32 0, i32 1
  %44 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %44, i64 %46
  store %struct.mlx5_cache_ent* %47, %struct.mlx5_cache_ent** %6, align 8
  %48 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %36
  %56 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %59, i32 0, i32 2
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %55, %36
  br label %104

63:                                               ; preds = %28
  %64 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %64, i32 0, i32 1
  %66 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %66, i64 %68
  store %struct.mlx5_cache_ent* %69, %struct.mlx5_cache_ent** %6, align 8
  %70 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %71 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %70, i32 0, i32 3
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %73, i32 0, i32 1
  %75 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %76 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %75, i32 0, i32 4
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  %78 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %86 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 2, %87
  %89 = icmp sgt i32 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %93 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %92, i32 0, i32 3
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %6, align 8
  %102 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %101, i32 0, i32 2
  %103 = call i32 @queue_work(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %15, %62, %97, %91
  ret void
}

declare dso_local i32 @order2idx(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unreg_umr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @destroy_mkey(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
