; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_init_ah_attr_from_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_init_ah_attr_from_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.sa_path_rec = type { i64, i32, i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_gid_attr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_attr_from_path(%struct.ib_device* %0, i32 %1, %struct.sa_path_rec* %2, %struct.rdma_ah_attr* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sa_path_rec*, align 8
  %10 = alloca %struct.rdma_ah_attr*, align 8
  %11 = alloca %struct.ib_gid_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sa_path_rec* %2, %struct.sa_path_rec** %9, align 8
  store %struct.rdma_ah_attr* %3, %struct.rdma_ah_attr** %10, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %14 = call i32 @memset(%struct.rdma_ah_attr* %13, i32 0, i32 8)
  %15 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @rdma_ah_find_type(%struct.ib_device* %15, i32 %16)
  %18 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %19 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %21 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %22 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %20, i32 %23)
  %25 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %25, i32 %26)
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %29 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %30 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %28, i32 %31)
  %33 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %34 = call i64 @sa_path_is_roce(%struct.sa_path_rec* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %5
  %37 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %38 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %39 = call i32 @roce_resolve_route_from_path(%struct.sa_path_rec* %37, %struct.ib_gid_attr* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %99

44:                                               ; preds = %36
  %45 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %46 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %50 = call i32 @sa_path_get_dmac(%struct.sa_path_rec* %49)
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %48, i32 %50, i32 %51)
  br label %81

53:                                               ; preds = %5
  %54 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %55 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %56 = call i32 @sa_path_get_dlid(%struct.sa_path_rec* %55)
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %54, i32 %57)
  %59 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %60 = call i64 @sa_path_is_opa(%struct.sa_path_rec* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %64 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %63)
  %65 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %66 = call i64 @be16_to_cpu(i32 %65)
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %70 = call i32 @rdma_ah_set_make_grd(%struct.rdma_ah_attr* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %62, %53
  %72 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %73 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %74 = call i32 @sa_path_get_slid(%struct.sa_path_rec* %73)
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @get_src_path_mask(%struct.ib_device* %76, i32 %77)
  %79 = and i32 %75, %78
  %80 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %72, i32 %79)
  br label %81

81:                                               ; preds = %71, %44
  %82 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %83 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %88 = call i64 @sa_path_is_roce(%struct.sa_path_rec* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86, %81
  %91 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.sa_path_rec*, %struct.sa_path_rec** %9, align 8
  %94 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %95 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %96 = call i32 @init_ah_attr_grh_fields(%struct.ib_device* %91, i32 %92, %struct.sa_path_rec* %93, %struct.rdma_ah_attr* %94, %struct.ib_gid_attr* %95)
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %90, %86
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %42
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @sa_path_is_roce(%struct.sa_path_rec*) #1

declare dso_local i32 @roce_resolve_route_from_path(%struct.sa_path_rec*, %struct.ib_gid_attr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sa_path_get_dmac(%struct.sa_path_rec*) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sa_path_get_dlid(%struct.sa_path_rec*) #1

declare dso_local i64 @sa_path_is_opa(%struct.sa_path_rec*) #1

declare dso_local i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_make_grd(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @sa_path_get_slid(%struct.sa_path_rec*) #1

declare dso_local i32 @get_src_path_mask(%struct.ib_device*, i32) #1

declare dso_local i32 @init_ah_attr_grh_fields(%struct.ib_device*, i32, %struct.sa_path_rec*, %struct.rdma_ah_attr*, %struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
