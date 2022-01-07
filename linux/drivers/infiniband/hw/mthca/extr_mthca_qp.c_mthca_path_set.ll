; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_path_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_path_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rdma_ah_attr = type { i32 }
%struct.mthca_qp_path = type { i32, i64, i8*, i32, i32, i32, i32 }
%struct.ib_global_route = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sgid_index (%u) too large. max is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.rdma_ah_attr*, %struct.mthca_qp_path*, i32)* @mthca_path_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_path_set(%struct.mthca_dev* %0, %struct.rdma_ah_attr* %1, %struct.mthca_qp_path* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca %struct.mthca_qp_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_global_route*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store %struct.mthca_qp_path* %2, %struct.mthca_qp_path** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %12 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %11)
  %13 = and i32 %12, 127
  %14 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %15 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %17 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %16)
  %18 = call i32 @cpu_to_be16(i32 %17)
  %19 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %20 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %23 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mthca_get_rate(%struct.mthca_dev* %21, i32 %23, i32 %24)
  %26 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %27 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %29 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %28)
  %30 = load i32, i32* @IB_AH_GRH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %4
  %34 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %35 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %34)
  store %struct.ib_global_route* %35, %struct.ib_global_route** %10, align 8
  %36 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %37 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %38, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %46 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %47 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %50 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @mthca_dbg(%struct.mthca_dev* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %53)
  store i32 -1, i32* %5, align 4
  br label %101

55:                                               ; preds = %33
  %56 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %57 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, 128
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %61 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %64 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %66 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %69 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %71 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %70)
  %72 = shl i32 %71, 28
  %73 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %74 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 20
  %77 = or i32 %72, %76
  %78 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %79 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %84 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %86 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ib_global_route*, %struct.ib_global_route** %10, align 8
  %89 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memcpy(i32 %87, i32 %91, i32 16)
  br label %100

93:                                               ; preds = %4
  %94 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %95 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %94)
  %96 = shl i32 %95, 28
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %99 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %55
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %44
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @mthca_get_rate(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
