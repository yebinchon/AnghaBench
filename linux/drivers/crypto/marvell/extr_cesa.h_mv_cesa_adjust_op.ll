; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_adjust_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_adjust_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_engine = type { i32 }
%struct.mv_cesa_op_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@CESA_SA_SRAM_MSK = common dso_local global i32 0, align 4
@CESA_SA_DESC_MAC_DATA_MSK = common dso_local global i32 0, align 4
@CESA_SA_DESC_MAC_DIGEST_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_cesa_engine*, %struct.mv_cesa_op_ctx*)* @mv_cesa_adjust_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_adjust_op(%struct.mv_cesa_engine* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca %struct.mv_cesa_engine*, align 8
  %4 = alloca %struct.mv_cesa_op_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.mv_cesa_engine* %0, %struct.mv_cesa_engine** %3, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %4, align 8
  %6 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %7 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CESA_SA_SRAM_MSK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CESA_SA_DESC_CRYPT_DATA(i32 %11)
  %13 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @CESA_SA_DESC_CRYPT_KEY(i32 %16)
  %18 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CESA_SA_DESC_CRYPT_IV(i32 %21)
  %23 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @CESA_SA_DESC_MAC_DATA_MSK, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CESA_SA_DESC_MAC_DATA(i32 %33)
  %35 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @CESA_SA_DESC_MAC_DIGEST_MSK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CESA_SA_DESC_MAC_DIGEST(i32 %47)
  %49 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @CESA_SA_DESC_MAC_IV(i32 %54)
  %56 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  ret void
}

declare dso_local i32 @CESA_SA_DESC_CRYPT_DATA(i32) #1

declare dso_local i32 @CESA_SA_DESC_CRYPT_KEY(i32) #1

declare dso_local i32 @CESA_SA_DESC_CRYPT_IV(i32) #1

declare dso_local i32 @CESA_SA_DESC_MAC_DATA(i32) #1

declare dso_local i32 @CESA_SA_DESC_MAC_DIGEST(i32) #1

declare dso_local i32 @CESA_SA_DESC_MAC_IV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
