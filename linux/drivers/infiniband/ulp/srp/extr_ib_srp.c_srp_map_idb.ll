; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_map_idb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_map_idb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { %struct.srp_target_port* }
%struct.srp_target_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.srp_device* }
%struct.srp_device = type { i32, i64, i64 }
%struct.srp_request = type { i32, i32 }
%struct.srp_map_state = type { i32, i32*, i32, i32, %struct.scatterlist*, i32, %struct.srp_map_state*, %struct.TYPE_4__ }
%struct.scatterlist = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i8**, i8** }
%struct.srp_direct_buf = type { i32, i32*, i32, i32, %struct.scatterlist*, i32, %struct.srp_direct_buf*, %struct.TYPE_4__ }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*, %struct.srp_request*, i8**, i8**, i32, i32*)* @srp_map_idb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_map_idb(%struct.srp_rdma_ch* %0, %struct.srp_request* %1, i8** %2, i8** %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.srp_rdma_ch*, align 8
  %9 = alloca %struct.srp_request*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.srp_target_port*, align 8
  %15 = alloca %struct.srp_device*, align 8
  %16 = alloca %struct.srp_map_state, align 8
  %17 = alloca %struct.srp_direct_buf, align 8
  %18 = alloca [1 x i32], align 4
  %19 = alloca [1 x %struct.scatterlist], align 4
  %20 = alloca i32, align 4
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %8, align 8
  store %struct.srp_request* %1, %struct.srp_request** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %22 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %21, i32 0, i32 0
  %23 = load %struct.srp_target_port*, %struct.srp_target_port** %22, align 8
  store %struct.srp_target_port* %23, %struct.srp_target_port** %14, align 8
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %14, align 8
  %25 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.srp_device*, %struct.srp_device** %27, align 8
  store %struct.srp_device* %28, %struct.srp_device** %15, align 8
  %29 = call i32 @memset(%struct.srp_map_state* %16, i32 0, i32 64)
  %30 = bitcast %struct.srp_direct_buf* %17 to %struct.srp_map_state*
  %31 = call i32 @memset(%struct.srp_map_state* %30, i32 0, i32 64)
  %32 = load i8**, i8*** %10, align 8
  %33 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8** %32, i8*** %34, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8** %35, i8*** %37, align 8
  %38 = bitcast %struct.srp_direct_buf* %17 to %struct.srp_map_state*
  %39 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 6
  store %struct.srp_map_state* %38, %struct.srp_map_state** %39, align 8
  %40 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %41 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load %struct.srp_device*, %struct.srp_device** %15, align 8
  %47 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %6
  %51 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %52 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 4
  store %struct.scatterlist* %51, %struct.scatterlist** %52, align 8
  %53 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %54 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %55 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @sg_init_one(%struct.scatterlist* %53, i32 %56, i32 %57)
  %59 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %60 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %65 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %66 = call i32 @srp_map_finish_fr(%struct.srp_map_state* %16, %struct.srp_request* %64, %struct.srp_rdma_ch* %65, i32 1, i32* null)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i32, i32* %20, align 4
  store i32 %70, i32* %7, align 4
  br label %110

71:                                               ; preds = %50
  %72 = load i32, i32* %20, align 4
  %73 = icmp slt i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN_ON_ONCE(i32 %74)
  br label %106

76:                                               ; preds = %6
  %77 = load %struct.srp_device*, %struct.srp_device** %15, align 8
  %78 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 0
  %83 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 1
  store i32* %82, i32** %83, align 8
  %84 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %85 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.srp_device*, %struct.srp_device** %15, align 8
  %88 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %86, %89
  %91 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %90, i32* %93, align 4
  %94 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %16, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %96 = call i32 @srp_map_finish_fmr(%struct.srp_map_state* %16, %struct.srp_rdma_ch* %95)
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %81
  %100 = load i32, i32* %20, align 4
  store i32 %100, i32* %7, align 4
  br label %110

101:                                              ; preds = %81
  br label %105

102:                                              ; preds = %76
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %110

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %71
  %107 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %17, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %102, %99, %69
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.srp_map_state*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @srp_map_finish_fr(%struct.srp_map_state*, %struct.srp_request*, %struct.srp_rdma_ch*, i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @srp_map_finish_fmr(%struct.srp_map_state*, %struct.srp_rdma_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
