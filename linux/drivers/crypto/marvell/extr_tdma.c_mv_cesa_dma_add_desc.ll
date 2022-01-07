; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mv_cesa_tdma_desc = type { %struct.mv_cesa_tdma_desc*, i32, i32 }
%struct.mv_cesa_tdma_chain = type { %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc* }

@cesa_dev = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mv_cesa_tdma_desc* (%struct.mv_cesa_tdma_chain*, i32)* @mv_cesa_dma_add_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mv_cesa_tdma_desc* @mv_cesa_dma_add_desc(%struct.mv_cesa_tdma_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %4 = alloca %struct.mv_cesa_tdma_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_tdma_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mv_cesa_tdma_desc* null, %struct.mv_cesa_tdma_desc** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cesa_dev, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.mv_cesa_tdma_desc* @dma_pool_zalloc(i32 %12, i32 %13, i32* %7)
  store %struct.mv_cesa_tdma_desc* %14, %struct.mv_cesa_tdma_desc** %6, align 8
  %15 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %16 = icmp ne %struct.mv_cesa_tdma_desc* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.mv_cesa_tdma_desc* @ERR_PTR(i32 %19)
  store %struct.mv_cesa_tdma_desc* %20, %struct.mv_cesa_tdma_desc** %3, align 8
  br label %50

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %24 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %4, align 8
  %26 = getelementptr inbounds %struct.mv_cesa_tdma_chain, %struct.mv_cesa_tdma_chain* %25, i32 0, i32 0
  %27 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %26, align 8
  %28 = icmp ne %struct.mv_cesa_tdma_desc* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %4, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_tdma_chain, %struct.mv_cesa_tdma_chain* %32, i32 0, i32 0
  %34 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %33, align 8
  %35 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  %36 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %37 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %4, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_tdma_chain, %struct.mv_cesa_tdma_chain* %37, i32 0, i32 0
  %39 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %38, align 8
  %40 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %39, i32 0, i32 0
  store %struct.mv_cesa_tdma_desc* %36, %struct.mv_cesa_tdma_desc** %40, align 8
  br label %45

41:                                               ; preds = %21
  %42 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %43 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %4, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_tdma_chain, %struct.mv_cesa_tdma_chain* %43, i32 0, i32 1
  store %struct.mv_cesa_tdma_desc* %42, %struct.mv_cesa_tdma_desc** %44, align 8
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %47 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %4, align 8
  %48 = getelementptr inbounds %struct.mv_cesa_tdma_chain, %struct.mv_cesa_tdma_chain* %47, i32 0, i32 0
  store %struct.mv_cesa_tdma_desc* %46, %struct.mv_cesa_tdma_desc** %48, align 8
  %49 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  store %struct.mv_cesa_tdma_desc* %49, %struct.mv_cesa_tdma_desc** %3, align 8
  br label %50

50:                                               ; preds = %45, %17
  %51 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  ret %struct.mv_cesa_tdma_desc* %51
}

declare dso_local %struct.mv_cesa_tdma_desc* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local %struct.mv_cesa_tdma_desc* @ERR_PTR(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
