; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_init_av_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_init_av_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_path_rec = type { i64, i32 }
%struct.ib_gid_attr = type { i32 }
%struct.cm_av = type { i32, i64, %struct.cm_port*, i32 }
%struct.cm_port = type { i32, %struct.cm_device* }
%struct.cm_device = type { i32 }
%struct.cm_id_private = type { i32 }
%struct.rdma_ah_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_path_rec*, %struct.ib_gid_attr*, %struct.cm_av*, %struct.cm_id_private*)* @cm_init_av_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_init_av_by_path(%struct.sa_path_rec* %0, %struct.ib_gid_attr* %1, %struct.cm_av* %2, %struct.cm_id_private* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_path_rec*, align 8
  %7 = alloca %struct.ib_gid_attr*, align 8
  %8 = alloca %struct.cm_av*, align 8
  %9 = alloca %struct.cm_id_private*, align 8
  %10 = alloca %struct.rdma_ah_attr, align 4
  %11 = alloca %struct.cm_device*, align 8
  %12 = alloca %struct.cm_port*, align 8
  %13 = alloca i32, align 4
  store %struct.sa_path_rec* %0, %struct.sa_path_rec** %6, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %7, align 8
  store %struct.cm_av* %2, %struct.cm_av** %8, align 8
  store %struct.cm_id_private* %3, %struct.cm_id_private** %9, align 8
  %14 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %15 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %16 = call %struct.cm_port* @get_cm_port_from_path(%struct.sa_path_rec* %14, %struct.ib_gid_attr* %15)
  store %struct.cm_port* %16, %struct.cm_port** %12, align 8
  %17 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  %18 = icmp ne %struct.cm_port* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %80

22:                                               ; preds = %4
  %23 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  %24 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %23, i32 0, i32 1
  %25 = load %struct.cm_device*, %struct.cm_device** %24, align 8
  store %struct.cm_device* %25, %struct.cm_device** %11, align 8
  %26 = load %struct.cm_device*, %struct.cm_device** %11, align 8
  %27 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  %30 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %33 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @be16_to_cpu(i32 %34)
  %36 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %37 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %36, i32 0, i32 3
  %38 = call i32 @ib_find_cached_pkey(i32 %28, i32 %31, i32 %35, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %80

43:                                               ; preds = %22
  %44 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  %45 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %46 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %45, i32 0, i32 2
  store %struct.cm_port* %44, %struct.cm_port** %46, align 8
  %47 = load %struct.cm_device*, %struct.cm_device** %11, align 8
  %48 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  %51 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %54 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %55 = call i32 @ib_init_ah_attr_from_path(i32 %49, i32 %52, %struct.sa_path_rec* %53, %struct.rdma_ah_attr* %10, %struct.ib_gid_attr* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %5, align 4
  br label %80

60:                                               ; preds = %43
  %61 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %62 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %66 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %68 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %69 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  %70 = call i32 @add_cm_id_to_port_list(%struct.cm_id_private* %67, %struct.cm_av* %68, %struct.cm_port* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = call i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr* %10)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %80

76:                                               ; preds = %60
  %77 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %78 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %77, i32 0, i32 0
  %79 = call i32 @rdma_move_ah_attr(i32* %78, %struct.rdma_ah_attr* %10)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %73, %58, %41, %19
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.cm_port* @get_cm_port_from_path(%struct.sa_path_rec*, %struct.ib_gid_attr*) #1

declare dso_local i32 @ib_find_cached_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ib_init_ah_attr_from_path(i32, i32, %struct.sa_path_rec*, %struct.rdma_ah_attr*, %struct.ib_gid_attr*) #1

declare dso_local i32 @add_cm_id_to_port_list(%struct.cm_id_private*, %struct.cm_av*, %struct.cm_port*) #1

declare dso_local i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_move_ah_attr(i32*, %struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
