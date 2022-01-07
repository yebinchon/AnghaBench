; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_ib_init_ah_from_mcmember.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_ib_init_ah_from_mcmember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_gid_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_from_mcmember(%struct.ib_device* %0, i32 %1, %struct.ib_sa_mcmember_rec* %2, %struct.net_device* %3, i32 %4, %struct.rdma_ah_attr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rdma_ah_attr*, align 8
  %14 = alloca %struct.ib_gid_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ib_sa_mcmember_rec* %2, %struct.ib_sa_mcmember_rec** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.rdma_ah_attr* %5, %struct.rdma_ah_attr** %13, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @rdma_protocol_ib(%struct.ib_device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store %struct.net_device* null, %struct.net_device** %11, align 8
  br label %29

20:                                               ; preds = %6
  %21 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @rdma_protocol_roce(%struct.ib_device* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %85

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %31 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %32 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %31, i32 0, i32 7
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.net_device*, %struct.net_device** %11, align 8
  %36 = call %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device* %30, i32* %32, i32 %33, i32 %34, %struct.net_device* %35)
  store %struct.ib_gid_attr* %36, %struct.ib_gid_attr** %14, align 8
  %37 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %14, align 8
  %38 = call i64 @IS_ERR(%struct.ib_gid_attr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %14, align 8
  %42 = call i32 @PTR_ERR(%struct.ib_gid_attr* %41)
  store i32 %42, i32* %7, align 4
  br label %85

43:                                               ; preds = %29
  %44 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %45 = call i32 @memset(%struct.rdma_ah_attr* %44, i32 0, i32 4)
  %46 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @rdma_ah_find_type(%struct.ib_device* %46, i32 %47)
  %49 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %50 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %52 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %53 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be16_to_cpu(i32 %54)
  %56 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %51, i32 %55)
  %57 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %58 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %59 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %57, i32 %60)
  %62 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %62, i32 %63)
  %65 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %66 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %67 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %65, i32 %68)
  %70 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %13, align 8
  %71 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %72 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %71, i32 0, i32 3
  %73 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %74 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %78 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %10, align 8
  %81 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %14, align 8
  %84 = call i32 @rdma_move_grh_sgid_attr(%struct.rdma_ah_attr* %70, i32* %72, i32 %76, i32 %79, i32 %82, %struct.ib_gid_attr* %83)
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %43, %40, %25
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_protocol_roce(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device*, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_move_grh_sgid_attr(%struct.rdma_ah_attr*, i32*, i32, i32, i32, %struct.ib_gid_attr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
