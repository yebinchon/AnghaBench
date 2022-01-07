; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_ah_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_ah_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.mthca_ah = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MTHCA_AH_ON_HCA = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_ah_query(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.mthca_ah*, align 8
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %10 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %11 = call %struct.mthca_ah* @to_mah(%struct.ib_ah* %10)
  store %struct.mthca_ah* %11, %struct.mthca_ah** %6, align 8
  %12 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %13 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mthca_dev* @to_mdev(i32 %14)
  store %struct.mthca_dev* %15, %struct.mthca_dev** %7, align 8
  %16 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %17 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = ashr i32 %21, 24
  store i32 %22, i32* %8, align 4
  %23 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %24 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MTHCA_AH_ON_HCA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %119

31:                                               ; preds = %2
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %33 = call i32 @memset(%struct.rdma_ah_attr* %32, i32 0, i32 4)
  %34 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %35 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %38 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %40 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %41 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be16_to_cpu(i32 %44)
  %46 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %39, i32 %45)
  %47 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %48 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %49 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = ashr i32 %53, 28
  %55 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %47, i32 %54)
  %56 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %56, i32 %57)
  %59 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %61 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %62 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 7
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @mthca_rate_to_ib(%struct.mthca_dev* %60, i32 %66, i32 %67)
  %69 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %59, i32 %68)
  %70 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %71 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %72 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 127
  %77 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %70, i32 %76)
  %78 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %79 = call i64 @mthca_ah_grh_present(%struct.mthca_ah* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %31
  %82 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %83 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be32_to_cpu(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 1048575
  %91 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %92 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %97 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %95, %100
  %102 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %103 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = ashr i32 %107, 20
  %109 = and i32 %108, 255
  %110 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %88, i32* null, i32 %90, i32 %101, i32 %106, i32 %109)
  %111 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %112 = load %struct.mthca_ah*, %struct.mthca_ah** %6, align 8
  %113 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %111, i32 %116)
  br label %118

118:                                              ; preds = %81, %31
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %28
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.mthca_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @mthca_rate_to_ib(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @mthca_ah_grh_present(%struct.mthca_ah*) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
