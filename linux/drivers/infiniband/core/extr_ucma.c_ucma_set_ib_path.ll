; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_set_ib_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_set_ib_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_path_rec_data = type { i32, i32 }
%struct.sa_path_rec = type { i32, i32 }
%struct.rdma_cm_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_PATH_GMP = common dso_local global i32 0, align 4
@IB_PATH_PRIMARY = common dso_local global i32 0, align 4
@IB_PATH_BIDIRECTIONAL = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucma_context*, %struct.ib_path_rec_data*, i64)* @ucma_set_ib_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_set_ib_path(%struct.ucma_context* %0, %struct.ib_path_rec_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucma_context*, align 8
  %6 = alloca %struct.ib_path_rec_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sa_path_rec, align 4
  %9 = alloca %struct.rdma_cm_event, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sa_path_rec, align 4
  store %struct.ucma_context* %0, %struct.ucma_context** %5, align 8
  store %struct.ib_path_rec_data* %1, %struct.ib_path_rec_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = urem i64 %12, 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %101

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.ib_path_rec_data*, %struct.ib_path_rec_data** %6, align 8
  %24 = getelementptr inbounds %struct.ib_path_rec_data, %struct.ib_path_rec_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IB_PATH_GMP, align 4
  %27 = load i32, i32* @IB_PATH_PRIMARY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IB_PATH_BIDIRECTIONAL, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %39

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.ib_path_rec_data*, %struct.ib_path_rec_data** %6, align 8
  %38 = getelementptr inbounds %struct.ib_path_rec_data, %struct.ib_path_rec_data* %37, i32 1
  store %struct.ib_path_rec_data* %38, %struct.ib_path_rec_data** %6, align 8
  br label %19

39:                                               ; preds = %32, %19
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %101

45:                                               ; preds = %39
  %46 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %47 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %101

55:                                               ; preds = %45
  %56 = call i32 @memset(%struct.sa_path_rec* %8, i32 0, i32 8)
  %57 = load i32, i32* @SA_PATH_REC_TYPE_IB, align 4
  %58 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ib_path_rec_data*, %struct.ib_path_rec_data** %6, align 8
  %60 = getelementptr inbounds %struct.ib_path_rec_data, %struct.ib_path_rec_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ib_sa_unpack_path(i32 %61, %struct.sa_path_rec* %8)
  %63 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %64 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %69 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @rdma_cap_opa_ah(i32 %67, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %55
  %76 = call i32 @sa_convert_path_ib_to_opa(%struct.sa_path_rec* %11, %struct.sa_path_rec* %8)
  %77 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %78 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @rdma_set_ib_path(%struct.TYPE_3__* %79, %struct.sa_path_rec* %11)
  store i32 %80, i32* %10, align 4
  br label %86

81:                                               ; preds = %55
  %82 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %83 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = call i32 @rdma_set_ib_path(%struct.TYPE_3__* %84, %struct.sa_path_rec* %8)
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %81, %75
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %101

91:                                               ; preds = %86
  %92 = bitcast %struct.rdma_cm_event* %9 to %struct.sa_path_rec*
  %93 = call i32 @memset(%struct.sa_path_rec* %92, i32 0, i32 8)
  %94 = load i32, i32* @RDMA_CM_EVENT_ROUTE_RESOLVED, align 4
  %95 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %9, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %97 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = bitcast %struct.rdma_cm_event* %9 to %struct.sa_path_rec*
  %100 = call i32 @ucma_event_handler(%struct.TYPE_3__* %98, %struct.sa_path_rec* %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %91, %89, %52, %42, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @memset(%struct.sa_path_rec*, i32, i32) #1

declare dso_local i32 @ib_sa_unpack_path(i32, %struct.sa_path_rec*) #1

declare dso_local i64 @rdma_cap_opa_ah(i32, i32) #1

declare dso_local i32 @sa_convert_path_ib_to_opa(%struct.sa_path_rec*, %struct.sa_path_rec*) #1

declare dso_local i32 @rdma_set_ib_path(%struct.TYPE_3__*, %struct.sa_path_rec*) #1

declare dso_local i32 @ucma_event_handler(%struct.TYPE_3__*, %struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
