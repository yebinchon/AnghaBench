; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_copy_ah_attr_from_uverbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_copy_ah_attr_from_uverbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_uverbs_qp_dest = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.rdma_ah_attr*, %struct.ib_uverbs_qp_dest*)* @copy_ah_attr_from_uverbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ah_attr_from_uverbs(%struct.ib_device* %0, %struct.rdma_ah_attr* %1, %struct.ib_uverbs_qp_dest* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.ib_uverbs_qp_dest*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.ib_uverbs_qp_dest* %2, %struct.ib_uverbs_qp_dest** %6, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %9 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @rdma_ah_find_type(%struct.ib_device* %7, i32 %10)
  %12 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %13 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %15 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %20 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %19, i32* null, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %34 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %35 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %33, i32 %36)
  br label %41

38:                                               ; preds = %3
  %39 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %40 = call i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %18
  %42 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %43 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %42, i32 %45)
  %47 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %48 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %49 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %47, i32 %50)
  %52 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %53 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %54 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %52, i32 %55)
  %57 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %58 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %59 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %57, i32 %60)
  %62 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %63 = load %struct.ib_uverbs_qp_dest*, %struct.ib_uverbs_qp_dest** %6, align 8
  %64 = getelementptr inbounds %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %62, i32 %65)
  %67 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %68 = call i32 @rdma_ah_set_make_grd(%struct.rdma_ah_attr* %67, i32 0)
  ret void
}

declare dso_local i32 @rdma_ah_find_type(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_make_grd(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
