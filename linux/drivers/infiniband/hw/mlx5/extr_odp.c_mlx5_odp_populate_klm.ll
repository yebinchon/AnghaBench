; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_odp_populate_klm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_odp_populate_klm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_klm = type { i8*, i8*, i64 }
%struct.mlx5_ib_mr = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.ib_pd* }
%struct.ib_pd = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_dev = type { i64 }
%struct.ib_umem_odp = type { %struct.mlx5_ib_mr* }
%struct.TYPE_6__ = type { i32 }

@MLX5_IB_UPD_XLT_ZAP = common dso_local global i32 0, align 4
@MLX5_IMR_MTT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"[%d] va %lx key %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_odp_populate_klm(%struct.mlx5_klm* %0, i64 %1, i64 %2, %struct.mlx5_ib_mr* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_klm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca %struct.mlx5_ib_dev*, align 8
  %13 = alloca %struct.ib_umem_odp*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx5_ib_mr*, align 8
  store %struct.mlx5_klm* %0, %struct.mlx5_klm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mlx5_ib_mr* %3, %struct.mlx5_ib_mr** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.ib_pd*, %struct.ib_pd** %19, align 8
  store %struct.ib_pd* %20, %struct.ib_pd** %11, align 8
  %21 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %22 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.mlx5_ib_dev* @to_mdev(i32 %23)
  store %struct.mlx5_ib_dev* %24, %struct.mlx5_ib_dev** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @MLX5_IB_UPD_XLT_ZAP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i64, i64* @MLX5_IMR_MTT_SIZE, align 8
  %37 = call i8* @cpu_to_be32(i64 %36)
  %38 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @cpu_to_be32(i64 %42)
  %44 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  %51 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %51, i32 1
  store %struct.mlx5_klm* %52, %struct.mlx5_klm** %6, align 8
  br label %30

53:                                               ; preds = %30
  br label %131

54:                                               ; preds = %5
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_6__* @to_ib_umem_odp(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @lockdep_assert_held(i32* %59)
  %61 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @lockdep_assert_held(i32* %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @MLX5_IMR_MTT_SIZE, align 8
  %68 = mul i64 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @MLX5_IMR_MTT_SIZE, align 8
  %71 = mul i64 %69, %70
  %72 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %73 = call %struct.ib_umem_odp* @odp_lookup(i64 %68, i64 %71, %struct.mlx5_ib_mr* %72)
  store %struct.ib_umem_odp* %73, %struct.ib_umem_odp** %13, align 8
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %126, %54
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  %80 = load i64, i64* @MLX5_IMR_MTT_SIZE, align 8
  %81 = call i8* @cpu_to_be32(i64 %80)
  %82 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = load i64, i64* @MLX5_IMR_MTT_SIZE, align 8
  %89 = mul i64 %87, %88
  store i64 %89, i64* %14, align 8
  %90 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %13, align 8
  %91 = icmp ne %struct.ib_umem_odp* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %79
  %93 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %13, align 8
  %94 = call i64 @ib_umem_start(%struct.ib_umem_odp* %93)
  %95 = load i64, i64* %14, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %13, align 8
  %99 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %98, i32 0, i32 0
  %100 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %99, align 8
  store %struct.mlx5_ib_mr* %100, %struct.mlx5_ib_mr** %16, align 8
  %101 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %102 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @cpu_to_be32(i64 %104)
  %106 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %107 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %13, align 8
  %109 = call %struct.ib_umem_odp* @odp_next(%struct.ib_umem_odp* %108)
  store %struct.ib_umem_odp* %109, %struct.ib_umem_odp** %13, align 8
  br label %117

110:                                              ; preds = %92, %79
  %111 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @cpu_to_be32(i64 %113)
  %115 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %116 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %110, %97
  %118 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %122 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @be32_to_cpu(i8* %123)
  %125 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %119, i64 %120, i32 %124)
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = load %struct.mlx5_klm*, %struct.mlx5_klm** %6, align 8
  %130 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %129, i32 1
  store %struct.mlx5_klm* %130, %struct.mlx5_klm** %6, align 8
  br label %74

131:                                              ; preds = %53, %74
  ret void
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.TYPE_6__* @to_ib_umem_odp(i32) #1

declare dso_local %struct.ib_umem_odp* @odp_lookup(i64, i64, %struct.mlx5_ib_mr*) #1

declare dso_local i64 @ib_umem_start(%struct.ib_umem_odp*) #1

declare dso_local %struct.ib_umem_odp* @odp_next(%struct.ib_umem_odp*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i64, i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
