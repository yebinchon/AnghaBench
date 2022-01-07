; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@log_max_uctx = common dso_local global i32 0, align 4
@MLX5_SHARED_RESOURCE_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"couldn't allocate queue counter for port %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_alloc_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_alloc_counters(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @log_max_uctx, align 4
  %12 = call i64 @MLX5_CAP_GEN(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @is_mdev_switchdev_mode(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %21, %20
  %26 = phi i32 [ 1, %20 ], [ %24, %21 ]
  store i32 %26, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %101, %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %27
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @__mlx5_ib_alloc_counters(%struct.mlx5_ib_dev* %32, %struct.TYPE_4__* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %105

44:                                               ; preds = %31
  %45 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %46 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mlx5_ib_fill_counters(%struct.mlx5_ib_dev* %45, i32 %54, i32 %63)
  %65 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %44
  %79 = load i32, i32* @MLX5_SHARED_RESOURCE_UID, align 4
  br label %81

80:                                               ; preds = %44
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = call i32 @mlx5_cmd_alloc_q_counter(i32 %67, i32* %75, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %105

92:                                               ; preds = %81
  %93 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %27

104:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %109

105:                                              ; preds = %86, %43
  %106 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %107 = call i32 @mlx5_ib_dealloc_counters(%struct.mlx5_ib_dev* %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %104
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i64 @is_mdev_switchdev_mode(i32) #1

declare dso_local i32 @__mlx5_ib_alloc_counters(%struct.mlx5_ib_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @mlx5_ib_fill_counters(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_alloc_q_counter(i32, i32*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_ib_dealloc_counters(%struct.mlx5_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
