; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_ring_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_ring_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ring = type { i64, i64, i64, i64 }
%struct.mtk_desc = type { i32 }

@MTK_DESC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ring*, %struct.mtk_desc**, %struct.mtk_desc**, i32*)* @mtk_sha_ring_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_sha_ring_shift(%struct.mtk_ring* %0, %struct.mtk_desc** %1, %struct.mtk_desc** %2, i32* %3) #0 {
  %5 = alloca %struct.mtk_ring*, align 8
  %6 = alloca %struct.mtk_desc**, align 8
  %7 = alloca %struct.mtk_desc**, align 8
  %8 = alloca i32*, align 8
  store %struct.mtk_ring* %0, %struct.mtk_ring** %5, align 8
  store %struct.mtk_desc** %1, %struct.mtk_desc*** %6, align 8
  store %struct.mtk_desc** %2, %struct.mtk_desc*** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = inttoptr i64 %11 to %struct.mtk_desc*
  %14 = load %struct.mtk_desc**, %struct.mtk_desc*** %6, align 8
  store %struct.mtk_desc* %13, %struct.mtk_desc** %14, align 8
  %15 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %16 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = inttoptr i64 %17 to %struct.mtk_desc*
  %20 = load %struct.mtk_desc**, %struct.mtk_desc*** %7, align 8
  store %struct.mtk_desc* %19, %struct.mtk_desc** %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MTK_DESC_NUM, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %4
  %34 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %38 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %40 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
