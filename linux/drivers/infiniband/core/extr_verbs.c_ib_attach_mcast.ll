; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_attach_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_attach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%union.ib_gid = type { i64 }
%struct.in6_addr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_attach_mcast(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.ib_qp*, %union.ib_gid*, i32)**
  %15 = load i32 (%struct.ib_qp*, %union.ib_gid*, i32)*, i32 (%struct.ib_qp*, %union.ib_gid*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.ib_qp*, %union.ib_gid*, i32)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %22 = bitcast %union.ib_gid* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.in6_addr*
  %25 = call i32 @rdma_is_multicast_addr(%struct.in6_addr* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_QPT_UD, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @is_valid_mcast_lid(%struct.ib_qp* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %27, %20
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %33
  %42 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.ib_qp*, %union.ib_gid*, i32)**
  %48 = load i32 (%struct.ib_qp*, %union.ib_gid*, i32)*, i32 (%struct.ib_qp*, %union.ib_gid*, i32)** %47, align 8
  %49 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %50 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 %48(%struct.ib_qp* %49, %union.ib_gid* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %41
  %56 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %57 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %56, i32 0, i32 1
  %58 = call i32 @atomic_inc(i32* %57)
  br label %59

59:                                               ; preds = %55, %41
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %38, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i32 @is_valid_mcast_lid(%struct.ib_qp*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
