; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_alloc_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_alloc_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { i64, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.rdma_ah_attr = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@free_sm_ah = common dso_local global i32 0, align 4
@IB_MGMT_SA_HDR = common dso_local global i32 0, align 4
@IB_MGMT_SA_DATA = common dso_local global i32 0, align 4
@IB_SA_QUERY_OPA = common dso_local global i64 0, align 8
@OPA_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i32)* @alloc_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_mad(%struct.ib_sa_query* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_sa_query*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdma_ah_attr, align 4
  %7 = alloca i64, align 8
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %9 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %15 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %22 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %122

29:                                               ; preds = %2
  %30 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %31 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = call i32 @kref_get(i32* %35)
  %37 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %38 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %43 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %42, i32 0, i32 1
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %45 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %51 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @rdma_query_ah(i32 %54, %struct.rdma_ah_attr* %6)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %29
  %58 = call i32 @rdma_is_valid_unicast_lid(%struct.rdma_ah_attr* %6)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57, %29
  %61 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %62 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* @free_sm_ah, align 4
  %66 = call i32 @kref_put(i32* %64, i32 %65)
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %122

69:                                               ; preds = %57
  %70 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %71 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %76 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IB_MGMT_SA_HDR, align 4
  %81 = load i32, i32* @IB_MGMT_SA_DATA, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %84 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_SA_QUERY_OPA, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  %90 = load i32, i32* @OPA_MGMT_BASE_VERSION, align 4
  br label %93

91:                                               ; preds = %69
  %92 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call %struct.TYPE_7__* @ib_create_send_mad(i32 %74, i32 1, i32 %79, i32 0, i32 %80, i32 %81, i32 %82, i32 %94)
  %96 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %97 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %96, i32 0, i32 2
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %97, align 8
  %98 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %99 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = call i64 @IS_ERR(%struct.TYPE_7__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %93
  %104 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %105 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* @free_sm_ah, align 4
  %109 = call i32 @kref_put(i32* %107, i32 %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %122

112:                                              ; preds = %93
  %113 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %114 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %119 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 4
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %112, %103, %60, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @rdma_query_ah(i32, %struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_is_valid_unicast_lid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @ib_create_send_mad(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
