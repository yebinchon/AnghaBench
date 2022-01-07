; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32, i32, %struct.ib_umem* }
%struct.ib_umem = type { i32 }
%struct.ib_umem_odp = type { i32 }

@system_unbound_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*)* @dereg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dereg_mr(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_umem*, align 8
  %7 = alloca %struct.ib_umem_odp*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %4, align 8
  %8 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %11, i32 0, i32 4
  %13 = load %struct.ib_umem*, %struct.ib_umem** %12, align 8
  store %struct.ib_umem* %13, %struct.ib_umem** %6, align 8
  %14 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %15 = call i64 @is_odp_mr(%struct.mlx5_ib_mr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %2
  %18 = load %struct.ib_umem*, %struct.ib_umem** %6, align 8
  %19 = call %struct.ib_umem_odp* @to_ib_umem_odp(%struct.ib_umem* %18)
  store %struct.ib_umem_odp* %19, %struct.ib_umem_odp** %7, align 8
  %20 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @WRITE_ONCE(i32 %22, i32 0)
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = call i32 @synchronize_srcu(i32* %25)
  %27 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %27, i32 0, i32 2
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @system_unbound_wq, align 4
  %33 = call i32 @flush_workqueue(i32 %32)
  br label %34

34:                                               ; preds = %31, %17
  %35 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %35, i32 0, i32 2
  %37 = call i64 @atomic_read(i32* %36)
  %38 = call i32 @WARN_ON(i64 %37)
  %39 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %7, align 8
  %40 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %7, align 8
  %45 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %7, align 8
  %46 = call i32 @ib_umem_start(%struct.ib_umem_odp* %45)
  %47 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %7, align 8
  %48 = call i32 @ib_umem_end(%struct.ib_umem_odp* %47)
  %49 = call i32 @mlx5_ib_invalidate_range(%struct.ib_umem_odp* %44, i32 %46, i32 %48)
  br label %53

50:                                               ; preds = %34
  %51 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %52 = call i32 @mlx5_ib_free_implicit_mr(%struct.mlx5_ib_mr* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %7, align 8
  %55 = call i32 @ib_umem_odp_release(%struct.ib_umem_odp* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @atomic_sub(i32 %56, i32* %61)
  store %struct.ib_umem* null, %struct.ib_umem** %6, align 8
  br label %63

63:                                               ; preds = %53, %2
  %64 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %65 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %66 = call i32 @clean_mr(%struct.mlx5_ib_dev* %64, %struct.mlx5_ib_mr* %65)
  %67 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %68 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %69 = call i32 @mlx5_mr_cache_free(%struct.mlx5_ib_dev* %67, %struct.mlx5_ib_mr* %68)
  %70 = load %struct.ib_umem*, %struct.ib_umem** %6, align 8
  %71 = call i32 @ib_umem_release(%struct.ib_umem* %70)
  %72 = load %struct.ib_umem*, %struct.ib_umem** %6, align 8
  %73 = icmp ne %struct.ib_umem* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @atomic_sub(i32 %75, i32* %80)
  br label %82

82:                                               ; preds = %74, %63
  %83 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %89 = call i32 @kfree(%struct.mlx5_ib_mr* %88)
  br label %90

90:                                               ; preds = %87, %82
  ret void
}

declare dso_local i64 @is_odp_mr(%struct.mlx5_ib_mr*) #1

declare dso_local %struct.ib_umem_odp* @to_ib_umem_odp(%struct.ib_umem*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @mlx5_ib_invalidate_range(%struct.ib_umem_odp*, i32, i32) #1

declare dso_local i32 @ib_umem_start(%struct.ib_umem_odp*) #1

declare dso_local i32 @ib_umem_end(%struct.ib_umem_odp*) #1

declare dso_local i32 @mlx5_ib_free_implicit_mr(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @ib_umem_odp_release(%struct.ib_umem_odp*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @clean_mr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_mr_cache_free(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
