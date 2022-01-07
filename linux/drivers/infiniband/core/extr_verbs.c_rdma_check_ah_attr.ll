; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_check_ah_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_check_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_ah_attr*)* @rdma_check_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_check_ah_attr(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %7 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %8 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @rdma_is_port_valid(%struct.ib_device* %6, i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @rdma_is_grh_required(%struct.ib_device* %16, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22, %15
  %29 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IB_AH_GRH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %28, %22
  %39 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %40 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %46 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %52 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %44
  %57 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %58 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %64 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56, %44
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %38
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %67, %35, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local i64 @rdma_is_grh_required(%struct.ib_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
