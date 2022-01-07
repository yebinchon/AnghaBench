; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iser_conn*, i32 }
%struct.iser_conn = type { i64, i32, %struct.iscsi_conn* }
%struct.iscsi_endpoint = type { %struct.iser_conn* }

@.str = private unnamed_addr constant [21 x i8] c"can't bind eph %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISER_CONN_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"iser_conn %p state is %d, teardown started\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"binding iscsi conn %p to iser_conn %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i64, i32)* @iscsi_iser_conn_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_conn_bind(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iser_conn*, align 8
  %12 = alloca %struct.iscsi_endpoint*, align 8
  %13 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %15 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %10, align 8
  %17 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %18 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @iscsi_conn_bind(%struct.iscsi_cls_session* %17, %struct.iscsi_cls_conn* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %79

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i64 %26)
  store %struct.iscsi_endpoint* %27, %struct.iscsi_endpoint** %12, align 8
  %28 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %12, align 8
  %29 = icmp ne %struct.iscsi_endpoint* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %79

35:                                               ; preds = %25
  %36 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %12, align 8
  %37 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %36, i32 0, i32 0
  %38 = load %struct.iser_conn*, %struct.iser_conn** %37, align 8
  store %struct.iser_conn* %38, %struct.iser_conn** %11, align 8
  %39 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %40 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %43 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ISER_CONN_UP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  %50 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %51 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %52 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.iser_conn* %50, i64 %53)
  br label %74

55:                                               ; preds = %35
  %56 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @iser_alloc_rx_descriptors(%struct.iser_conn* %56, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %66 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %67 = call i32 @iser_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.iscsi_conn* %65, %struct.iser_conn* %66)
  %68 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %70 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %69, i32 0, i32 0
  store %struct.iser_conn* %68, %struct.iser_conn** %70, align 8
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %72 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %73 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %72, i32 0, i32 2
  store %struct.iscsi_conn* %71, %struct.iscsi_conn** %73, align 8
  br label %74

74:                                               ; preds = %64, %63, %47
  %75 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  %76 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %30, %23
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i64) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iser_alloc_rx_descriptors(%struct.iser_conn*, i32) #1

declare dso_local i32 @iser_info(i8*, %struct.iscsi_conn*, %struct.iser_conn*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
