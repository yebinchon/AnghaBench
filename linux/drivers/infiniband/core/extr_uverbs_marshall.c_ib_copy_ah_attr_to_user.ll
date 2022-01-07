; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_ah_attr_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_ah_attr_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_uverbs_ah_attr = type { i32, i64, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { i64 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RDMA_AH_ATTR_TYPE_OPA = common dso_local global i64 0, align 8
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_copy_ah_attr_to_user(%struct.ib_device* %0, %struct.ib_uverbs_ah_attr* %1, %struct.rdma_ah_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_uverbs_ah_attr*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca %struct.rdma_ah_attr, align 8
  %9 = alloca %struct.ib_global_route*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_uverbs_ah_attr* %1, %struct.ib_uverbs_ah_attr** %5, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %6, align 8
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  store %struct.rdma_ah_attr* %10, %struct.rdma_ah_attr** %7, align 8
  %11 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %16 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RDMA_AH_ATTR_TYPE_OPA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %22 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %21)
  %23 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %24 = call i32 @be16_to_cpu(i32 %23)
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %29 = call i32 @rdma_ah_conv_opa_to_ib(%struct.ib_device* %27, %struct.rdma_ah_attr* %8, %struct.rdma_ah_attr* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store %struct.rdma_ah_attr* %8, %struct.rdma_ah_attr** %7, align 8
  br label %32

32:                                               ; preds = %31, %26, %20, %3
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %34 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %33)
  %35 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %38 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %37)
  %39 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %40 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %42 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %41)
  %43 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %46 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %45)
  %47 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %50 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %49)
  %51 = load i32, i32* @IB_AH_GRH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %57 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %59 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %32
  %63 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %64 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %63)
  store %struct.ib_global_route* %64, %struct.ib_global_route** %9, align 8
  %65 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %66 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %70 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %72, i32 4)
  %74 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %75 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %78 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %81 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %87 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %93 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %96 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %62, %32
  %99 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %100 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %99)
  %101 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %102 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %5, align 8
  %104 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_conv_opa_to_ib(%struct.ib_device*, %struct.rdma_ah_attr*, %struct.rdma_ah_attr*) #1

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
