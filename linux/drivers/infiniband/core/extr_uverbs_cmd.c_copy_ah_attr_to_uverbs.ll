; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_copy_ah_attr_to_uverbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_copy_ah_attr_to_uverbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_qp_dest = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uverbs_qp_dest*, %struct.rdma_ah_attr*)* @copy_ah_attr_to_uverbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ah_attr_to_uverbs(%struct.ib_uverbs_qp_dest* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_uverbs_qp_dest*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.ib_global_route*, align 8
  store %struct.ib_uverbs_qp_dest* %0, %struct.ib_uverbs_qp_dest** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %6 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %7 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %6)
  %8 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %9 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %8, i32 0, i32 10
  store i32 %7, i32* %9, align 4
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %11 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %10)
  %12 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %13 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %15 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %14)
  %16 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %17 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %19 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %18)
  %20 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %23 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %22)
  %24 = load i32, i32* @IB_AH_GRH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %31 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %2
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %38 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %37)
  store %struct.ib_global_route* %38, %struct.ib_global_route** %5, align 8
  %39 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %40 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %43 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %45, i32 16)
  %47 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %48 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %51 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %53 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %56 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %58 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %63 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %66 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %36, %2
  %68 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %69 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %68)
  %70 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %3, align 8
  %71 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
