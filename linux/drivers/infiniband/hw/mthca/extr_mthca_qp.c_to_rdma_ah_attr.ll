; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_to_rdma_ah_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_to_rdma_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.mthca_qp_path = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.rdma_ah_attr*, %struct.mthca_qp_path*)* @to_rdma_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_rdma_ah_attr(%struct.mthca_dev* %0, %struct.rdma_ah_attr* %1, %struct.mthca_qp_path* %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.mthca_qp_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.mthca_qp_path* %2, %struct.mthca_qp_path** %6, align 8
  %9 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %10 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32_to_cpu(i32 %11)
  %13 = ashr i32 %12, 24
  %14 = and i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %17 = call i32 @memset(%struct.rdma_ah_attr* %16, i32 0, i32 4)
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %3
  br label %100

28:                                               ; preds = %20
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @rdma_ah_find_type(i32* %30, i64 %31)
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %34 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %35, i64 %36)
  %38 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %39 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %40 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %38, i32 %42)
  %44 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %45 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %46 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = ashr i32 %48, 28
  %50 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %44, i32 %49)
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %52 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %53 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 127
  %56 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %51, i32 %55)
  %57 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %59 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %60 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @mthca_rate_to_ib(%struct.mthca_dev* %58, i32 %62, i64 %63)
  %65 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %57, i32 %64)
  %66 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %67 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %28
  %72 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %73 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 1048575
  %79 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %80 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %83 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %81, %86
  %88 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %89 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 20
  %93 = and i32 %92, 255
  %94 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %76, i32* null, i32 %78, i32 %87, i32 %90, i32 %93)
  %95 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %96 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %97 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %95, i32 %98)
  br label %100

100:                                              ; preds = %27, %71, %28
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(i32*, i64) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @mthca_rate_to_ib(%struct.mthca_dev*, i32, i64) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
