; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_has_smi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_has_smi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_hca_vport_context = type { i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_IB = common dso_local global i64 0, align 8
@ib_virt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"query_hca_vport_context for port=%d failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @set_has_smi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_has_smi_cap(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_hca_vport_context, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %81, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %13)
  %15 = icmp sle i32 %8, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %7
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* @port_type, align 4
  %31 = call i64 @MLX5_CAP_GEN(%struct.TYPE_4__* %29, i32 %30)
  %32 = load i64, i64* @MLX5_CAP_PORT_TYPE_IB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %16
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* @ib_virt, align 4
  %39 = call i64 @MLX5_CAP_GEN(%struct.TYPE_4__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %34
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mlx5_query_hca_vport_context(%struct.TYPE_4__* %44, i32 0, i32 %45, i32 0, %struct.mlx5_hca_vport_context* %4)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %57, i32* %67, align 4
  br label %79

68:                                               ; preds = %34
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %55
  br label %80

80:                                               ; preds = %79, %16
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %7

84:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %49
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx5_query_hca_vport_context(%struct.TYPE_4__*, i32, i32, i32, %struct.mlx5_hca_vport_context*) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
