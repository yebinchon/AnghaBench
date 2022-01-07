; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_set_mac_op_frag_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_set_mac_op_frag_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_op_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CESA_SA_DESC_MAC_FRAG_LEN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_cesa_op_ctx*, i32)* @mv_cesa_set_mac_op_frag_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_set_mac_op_frag_len(%struct.mv_cesa_op_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_cesa_op_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.mv_cesa_op_ctx* %0, %struct.mv_cesa_op_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CESA_SA_DESC_MAC_FRAG_LEN_MSK, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %6
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @CESA_SA_DESC_MAC_FRAG_LEN(i32 %12)
  %14 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  ret void
}

declare dso_local i32 @CESA_SA_DESC_MAC_FRAG_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
