; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_send_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_send_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.ib_sa_query** }

@queries = common dso_local global i32 0, align 4
@xa_limit_32b = common dso_local global i32 0, align 4
@IB_SA_ENABLE_LOCAL_SERVICE = common dso_local global i32 0, align 4
@IB_SA_QUERY_OPA = common dso_local global i32 0, align 4
@RDMA_NL_GROUP_LS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i64, i32)* @send_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mad(%struct.ib_sa_query* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_query*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @xa_lock_irqsave(i32* @queries, i64 %11)
  %13 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %14 = load i32, i32* @xa_limit_32b, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @__xa_alloc(i32* @queries, i32* %10, %struct.ib_sa_query* %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @xa_unlock_irqrestore(i32* @queries, i64 %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %90

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %26 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %30 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %31 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %33, align 8
  %35 = getelementptr inbounds %struct.ib_sa_query*, %struct.ib_sa_query** %34, i64 0
  store %struct.ib_sa_query* %29, %struct.ib_sa_query** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %38 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %40 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IB_SA_ENABLE_LOCAL_SERVICE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %23
  %46 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %47 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_SA_QUERY_OPA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @RDMA_NL_GROUP_LS, align 4
  %54 = call i64 @rdma_nl_chk_listeners(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ib_nl_make_request(%struct.ib_sa_query* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %90

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %66 = call i32 @ib_sa_disable_local_svc(%struct.ib_sa_query* %65)
  br label %67

67:                                               ; preds = %64, %45, %23
  %68 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %69 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @ib_post_send_mad(%struct.TYPE_2__* %70, i32* null)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @xa_lock_irqsave(i32* @queries, i64 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @__xa_erase(i32* @queries, i32 %77)
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @xa_unlock_irqrestore(i32* @queries, i64 %79)
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %61, %21
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__xa_alloc(i32*, i32*, %struct.ib_sa_query*, i32, i32) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @rdma_nl_chk_listeners(i32) #1

declare dso_local i32 @ib_nl_make_request(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @ib_sa_disable_local_svc(%struct.ib_sa_query*) #1

declare dso_local i32 @ib_post_send_mad(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @__xa_erase(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
