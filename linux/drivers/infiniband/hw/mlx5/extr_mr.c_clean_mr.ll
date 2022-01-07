; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_clean_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_clean_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_mr = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to destroy mem psv %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to destroy wire psv %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*)* @clean_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_mr(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %4, align 8
  %6 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mlx5_core_destroy_psv(i32 %16, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %27 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25, %13
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @mlx5_core_destroy_psv(i32 %37, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %48 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %46, %34
  %56 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @kfree(%struct.TYPE_6__* %58)
  %60 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %60, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %61, align 8
  br label %62

62:                                               ; preds = %55, %2
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %67 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %68 = call i32 @destroy_mkey(%struct.mlx5_ib_dev* %66, %struct.mlx5_ib_mr* %67)
  %69 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %70 = call i32 @mlx5_free_priv_descs(%struct.mlx5_ib_mr* %69)
  br label %71

71:                                               ; preds = %65, %62
  ret void
}

declare dso_local i64 @mlx5_core_destroy_psv(i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @destroy_mkey(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_free_priv_descs(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
