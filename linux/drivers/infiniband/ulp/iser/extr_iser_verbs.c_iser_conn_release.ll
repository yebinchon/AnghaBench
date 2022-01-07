; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iser_conn = type { i64, i32, i32, i32, %struct.ib_conn }
%struct.ib_conn = type { i32* }

@ig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ISER_CONN_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"iser conn %p state %d, expected state down.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_release(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.ib_conn*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %4 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %4, i32 0, i32 4
  store %struct.ib_conn* %5, %struct.ib_conn** %3, align 8
  %6 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %7 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 3
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %11 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISER_CONN_DOWN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %21 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iser_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %20, i64 %23)
  %25 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iscsi_destroy_endpoint(i32 %27)
  %29 = load i64, i64* @ISER_CONN_DOWN, align 8
  %30 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %31 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %34 = call i32 @iser_free_ib_conn_res(%struct.iser_conn* %33, i32 1)
  %35 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %36 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %39 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %44 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @rdma_destroy_id(i32* %45)
  %47 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %48 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %32
  %50 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %51 = call i32 @kfree(%struct.iser_conn* %50)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iser_warn(i8*, %struct.iser_conn*, i64) #1

declare dso_local i32 @iscsi_destroy_endpoint(i32) #1

declare dso_local i32 @iser_free_ib_conn_res(%struct.iser_conn*, i32) #1

declare dso_local i32 @rdma_destroy_id(i32*) #1

declare dso_local i32 @kfree(%struct.iser_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
