; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_init_sl2vl_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_init_sl2vl_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64* }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"Unable to get default sl to vl mapping for port %d.  Using all zeroes (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*)* @mlx4_init_sl2vl_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_init_sl2vl_tbl(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %50, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %7, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %6
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %50

29:                                               ; preds = %15
  %30 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mlx4_ib_query_sl2vl(i32* %31, i32 %32, i64* %3)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i64 0, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @atomic64_set(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %40, %28
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %6

53:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mlx4_ib_query_sl2vl(i32*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
