; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_use_tunnel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_use_tunnel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i64, i32*, i64 }
%struct.mlx4_cqe = type { i32 }
%struct.mlx4_ib_proxy_sqp_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@IB_WC_WITH_VLAN = common dso_local global i32 0, align 4
@IB_WC_WITH_SMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_qp*, %struct.mlx4_ib_cq*, %struct.ib_wc*, i32, %struct.mlx4_cqe*, i32)* @use_tunnel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_tunnel_data(%struct.mlx4_ib_qp* %0, %struct.mlx4_ib_cq* %1, %struct.ib_wc* %2, i32 %3, %struct.mlx4_cqe* %4, i32 %5) #0 {
  %7 = alloca %struct.mlx4_ib_qp*, align 8
  %8 = alloca %struct.mlx4_ib_cq*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_cqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_ib_proxy_sqp_hdr*, align 8
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %7, align 8
  store %struct.mlx4_ib_cq* %1, %struct.mlx4_ib_cq** %8, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.mlx4_cqe* %4, %struct.mlx4_cqe** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @ib_dma_sync_single_for_cpu(i32 %17, i32 %25, i32 24, i32 %26)
  %28 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.mlx4_ib_proxy_sqp_hdr*
  store %struct.mlx4_ib_proxy_sqp_hdr* %36, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %37 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = and i32 %48, 16777215
  %50 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %6
  %59 = load i32, i32* @IB_WC_GRH, align 4
  br label %61

60:                                               ; preds = %6
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %68 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %61
  %72 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %73 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  %74 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be16_to_cpu(i32 %77)
  %79 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @memcpy(i32* %84, i8* %88, i32 4)
  %90 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %91 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = bitcast i32* %96 to i8*
  %98 = call i32 @memcpy(i32* %93, i8* %97, i32 2)
  %99 = load i32, i32* @IB_WC_WITH_VLAN, align 4
  %100 = load i32, i32* @IB_WC_WITH_SMAC, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %103 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %123

106:                                              ; preds = %61
  %107 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be16_to_cpu(i32 %110)
  %112 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %113 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @be16_to_cpu(i32 %117)
  %119 = ashr i32 %118, 12
  %120 = sext i32 %119 to i64
  %121 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %122 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %106, %71
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
