; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_ahash_rx_sg_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_ahash_rx_sg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.spu_hw }
%struct.spu_hw = type { i32 (...)* }
%struct.brcm_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.iproc_reqctx_s = type { %struct.TYPE_5__, i32, %struct.iproc_ctx_s* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.iproc_ctx_s = type { i32 }

@iproc_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SPU_RX_STATUS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcm_message*, %struct.iproc_reqctx_s*, i32, i32, i32)* @spu_ahash_rx_sg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_ahash_rx_sg_create(%struct.brcm_message* %0, %struct.iproc_reqctx_s* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcm_message*, align 8
  %8 = alloca %struct.iproc_reqctx_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spu_hw*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.iproc_ctx_s*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %7, align 8
  store %struct.iproc_reqctx_s* %1, %struct.iproc_reqctx_s** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 0), %struct.spu_hw** %12, align 8
  %15 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %16 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %15, i32 0, i32 2
  %17 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %16, align 8
  store %struct.iproc_ctx_s* %17, %struct.iproc_ctx_s** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %20 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.scatterlist* @kcalloc(i32 %18, i32 4, i32 %21)
  %23 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %24 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.scatterlist* %22, %struct.scatterlist** %25, align 8
  %26 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %27 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  %30 = icmp ne %struct.scatterlist* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %88

34:                                               ; preds = %5
  %35 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %36 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.scatterlist*, %struct.scatterlist** %37, align 8
  store %struct.scatterlist* %38, %struct.scatterlist** %13, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @sg_init_table(%struct.scatterlist* %39, i32 %40)
  %42 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 1
  store %struct.scatterlist* %43, %struct.scatterlist** %13, align 8
  %44 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %45 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %14, align 8
  %49 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sg_set_buf(%struct.scatterlist* %42, i32 %47, i32 %50)
  %52 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %53 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i32 1
  store %struct.scatterlist* %53, %struct.scatterlist** %13, align 8
  %54 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %55 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @sg_set_buf(%struct.scatterlist* %52, i32 %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %34
  %63 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 1
  store %struct.scatterlist* %64, %struct.scatterlist** %13, align 8
  %65 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %66 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sg_set_buf(%struct.scatterlist* %63, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %34
  %72 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %73 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SPU_RX_STATUS_LEN, align 4
  %77 = call i32 @memset(i32 %75, i32 0, i32 %76)
  %78 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %79 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %8, align 8
  %80 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.spu_hw*, %struct.spu_hw** %12, align 8
  %84 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  %87 = call i32 @sg_set_buf(%struct.scatterlist* %78, i32 %82, i32 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %71, %31
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.scatterlist* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
