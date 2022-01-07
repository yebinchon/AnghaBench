; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_get_mad_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_get_mad_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mad_rmpp_recv = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ib_rmpp_mad = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@OPA_MGMT_BASE_VERSION = common dso_local global i64 0, align 8
@OPA_MGMT_RMPP_DATA = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mad_rmpp_recv*)* @get_mad_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mad_len(%struct.mad_rmpp_recv* %0) #0 {
  %2 = alloca %struct.mad_rmpp_recv*, align 8
  %3 = alloca %struct.ib_rmpp_mad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mad_rmpp_recv* %0, %struct.mad_rmpp_recv** %2, align 8
  %8 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %9 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %18 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rdma_cap_opa_mad(i32 %16, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %28 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %32, %struct.ib_rmpp_mad** %3, align 8
  %33 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %34 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ib_get_mad_data_offset(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %1
  %41 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %42 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OPA_MGMT_BASE_VERSION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 4, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @OPA_MGMT_RMPP_DATA, align 4
  %52 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %53 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = sub nsw i32 %51, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @OPA_MGMT_RMPP_DATA, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %86

66:                                               ; preds = %40, %1
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 8, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @IB_MGMT_RMPP_DATA, align 4
  %72 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %73 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = sub nsw i32 %71, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @IB_MGMT_RMPP_DATA, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %66
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %81
  br label %86

86:                                               ; preds = %85, %65
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %89 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %87, %92
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  ret i32 %95
}

declare dso_local i32 @rdma_cap_opa_mad(i32, i32) #1

declare dso_local i32 @ib_get_mad_data_offset(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
