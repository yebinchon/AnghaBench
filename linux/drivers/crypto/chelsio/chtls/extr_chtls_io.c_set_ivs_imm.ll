; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_set_ivs_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_set_ivs_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CIPHER_BLOCK_SIZE = common dso_local global i32 0, align 4
@TLS_WR_CPL_LEN = common dso_local global i32 0, align 4
@KEY_ON_MEM_SZ = common dso_local global i64 0, align 8
@MAX_IMM_OFLD_TX_DATA_WR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @set_ivs_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ivs_imm(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nos_ivs(%struct.sock* %8, i32 %11)
  %13 = load i32, i32* @CIPHER_BLOCK_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @TLS_WR_CPL_LEN, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @data_sgl_len(%struct.sk_buff* %16)
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @KEY_ON_MEM_SZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i64, i64* @MAX_IMM_OFLD_TX_DATA_WR_LEN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @nos_ivs(%struct.sock*, i32) #1

declare dso_local i32 @data_sgl_len(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ULP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
