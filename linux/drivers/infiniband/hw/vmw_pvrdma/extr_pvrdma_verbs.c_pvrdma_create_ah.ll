; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32 }
%struct.rdma_ah_attr = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pvrdma_ah = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.TYPE_12__ = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_create_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.pvrdma_dev*, align 8
  %11 = alloca %struct.pvrdma_ah*, align 8
  %12 = alloca %struct.ib_global_route*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %15 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pvrdma_dev* @to_vdev(i32 %16)
  store %struct.pvrdma_dev* %17, %struct.pvrdma_dev** %10, align 8
  %18 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %19 = call %struct.pvrdma_ah* @to_vah(%struct.ib_ah* %18)
  store %struct.pvrdma_ah* %19, %struct.pvrdma_ah** %11, align 8
  %20 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %21 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %23 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %22)
  %24 = load i32, i32* @IB_AH_GRH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %128

30:                                               ; preds = %4
  %31 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %32 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %31)
  store %struct.ib_global_route* %32, %struct.ib_global_route** %12, align 8
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %34 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %40 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.in6_addr*
  %44 = call i64 @rdma_is_multicast_addr(%struct.in6_addr* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %128

49:                                               ; preds = %38
  %50 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %51 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %50, i32 0, i32 1
  %52 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %53 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @atomic_add_unless(i32* %51, i32 1, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %128

63:                                               ; preds = %49
  %64 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %65 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_12__* @to_vpd(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = shl i32 %70, 24
  %72 = or i32 %69, %71
  %73 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %74 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %77 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %76)
  %78 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %79 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %82 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 128
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %87 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %90 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %93 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %96 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 4
  %98 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %99 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 20
  %102 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %103 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %107 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 4
  %109 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %110 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %114 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @memcpy(i32 %112, i64 %116, i32 16)
  %118 = load %struct.pvrdma_ah*, %struct.pvrdma_ah** %11, align 8
  %119 = getelementptr inbounds %struct.pvrdma_ah, %struct.pvrdma_ah* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %123 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @ETH_ALEN, align 4
  %127 = call i32 @memcpy(i32 %121, i64 %125, i32 %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %63, %60, %46, %27
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local %struct.pvrdma_ah* @to_vah(%struct.ib_ah*) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @to_vpd(i32) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
