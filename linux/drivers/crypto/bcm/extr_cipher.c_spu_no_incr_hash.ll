; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_no_incr_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_no_incr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.spu_hw }
%struct.spu_hw = type { i64 }
%struct.iproc_ctx_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@iproc_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SPU_TYPE_SPU2 = common dso_local global i64 0, align 8
@HASH_ALG_AES = common dso_local global i64 0, align 8
@HASH_MODE_XCBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_ctx_s*)* @spu_no_incr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_no_incr_hash(%struct.iproc_ctx_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_ctx_s*, align 8
  %4 = alloca %struct.spu_hw*, align 8
  store %struct.iproc_ctx_s* %0, %struct.iproc_ctx_s** %3, align 8
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iproc_priv, i32 0, i32 0), %struct.spu_hw** %4, align 8
  %5 = load %struct.spu_hw*, %struct.spu_hw** %4, align 8
  %6 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SPU_TYPE_SPU2, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %3, align 8
  %13 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HASH_ALG_AES, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %3, align 8
  %20 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HASH_MODE_XCBC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %18, %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
