; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_map_sg_fr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_map_sg_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_map_state = type { %struct.scatterlist*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.srp_rdma_ch = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.srp_request = type { i64 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_map_state*, %struct.srp_rdma_ch*, %struct.srp_request*, %struct.scatterlist*, i32)* @srp_map_sg_fr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_map_sg_fr(%struct.srp_map_state* %0, %struct.srp_rdma_ch* %1, %struct.srp_request* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.srp_map_state*, align 8
  %8 = alloca %struct.srp_rdma_ch*, align 8
  %9 = alloca %struct.srp_request*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.srp_map_state* %0, %struct.srp_map_state** %7, align 8
  store %struct.srp_rdma_ch* %1, %struct.srp_rdma_ch** %8, align 8
  store %struct.srp_request* %2, %struct.srp_request** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %16 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.srp_map_state*, %struct.srp_map_state** %7, align 8
  %19 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %22 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %25 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = load %struct.srp_map_state*, %struct.srp_map_state** %7, align 8
  %31 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %34 = load %struct.srp_map_state*, %struct.srp_map_state** %7, align 8
  %35 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %34, i32 0, i32 0
  store %struct.scatterlist* %33, %struct.scatterlist** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %76

39:                                               ; preds = %5
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load %struct.srp_map_state*, %struct.srp_map_state** %7, align 8
  %45 = load %struct.srp_request*, %struct.srp_request** %9, align 8
  %46 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @srp_map_finish_fr(%struct.srp_map_state* %44, %struct.srp_request* %45, %struct.srp_rdma_ch* %46, i32 %47, i32* %12)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %76

56:                                               ; preds = %43
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %71, %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.srp_map_state*, %struct.srp_map_state** %7, align 8
  %66 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %65, i32 0, i32 0
  %67 = load %struct.scatterlist*, %struct.scatterlist** %66, align 8
  %68 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %67)
  %69 = load %struct.srp_map_state*, %struct.srp_map_state** %7, align 8
  %70 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %69, i32 0, i32 0
  store %struct.scatterlist* %68, %struct.scatterlist** %70, align 8
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %60

74:                                               ; preds = %60
  br label %40

75:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %54, %38
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @srp_map_finish_fr(%struct.srp_map_state*, %struct.srp_request*, %struct.srp_rdma_ch*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
