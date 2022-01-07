; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_dma_add_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_dma_add_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_tdma_chain = type { i32 }
%struct.mv_cesa_op_ctx = type { i32 }

@CESA_SA_DESC_CFG_MID_FRAG = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_FRAG_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mv_cesa_op_ctx* (%struct.mv_cesa_tdma_chain*, %struct.mv_cesa_op_ctx*, i32, i32)* @mv_cesa_dma_add_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_op_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mv_cesa_op_ctx*, align 8
  %6 = alloca %struct.mv_cesa_tdma_chain*, align 8
  %7 = alloca %struct.mv_cesa_op_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mv_cesa_op_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_tdma_chain** %6, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %6, align 8
  %13 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_op(%struct.mv_cesa_tdma_chain* %12, %struct.mv_cesa_op_ctx* %13, i32 0, i32 %14)
  store %struct.mv_cesa_op_ctx* %15, %struct.mv_cesa_op_ctx** %10, align 8
  %16 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mv_cesa_op_ctx* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %10, align 8
  store %struct.mv_cesa_op_ctx* %20, %struct.mv_cesa_op_ctx** %5, align 8
  br label %44

21:                                               ; preds = %4
  %22 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mv_cesa_set_mac_op_frag_len(%struct.mv_cesa_op_ctx* %22, i32 %23)
  %25 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mv_cesa_dma_add_dummy_launch(%struct.mv_cesa_tdma_chain* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.mv_cesa_op_ctx* @ERR_PTR(i32 %31)
  store %struct.mv_cesa_op_ctx* %32, %struct.mv_cesa_op_ctx** %5, align 8
  br label %44

33:                                               ; preds = %21
  %34 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %7, align 8
  %35 = call i64 @mv_cesa_mac_op_is_first_frag(%struct.mv_cesa_op_ctx* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %7, align 8
  %39 = load i32, i32* @CESA_SA_DESC_CFG_MID_FRAG, align 4
  %40 = load i32, i32* @CESA_SA_DESC_CFG_FRAG_MSK, align 4
  %41 = call i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %10, align 8
  store %struct.mv_cesa_op_ctx* %43, %struct.mv_cesa_op_ctx** %5, align 8
  br label %44

44:                                               ; preds = %42, %30, %19
  %45 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  ret %struct.mv_cesa_op_ctx* %45
}

declare dso_local %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_op(%struct.mv_cesa_tdma_chain*, %struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @mv_cesa_set_mac_op_frag_len(%struct.mv_cesa_op_ctx*, i32) #1

declare dso_local i32 @mv_cesa_dma_add_dummy_launch(%struct.mv_cesa_tdma_chain*, i32) #1

declare dso_local %struct.mv_cesa_op_ctx* @ERR_PTR(i32) #1

declare dso_local i64 @mv_cesa_mac_op_is_first_frag(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
