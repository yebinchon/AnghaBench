; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_get_zero_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_get_zero_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { %struct.iop3xx_desc_aau* }
%struct.iop3xx_desc_aau = type { %struct.iop3xx_aau_desc_ctrl }
%struct.iop3xx_aau_desc_ctrl = type { i32, i64, i64 }

@SUM_CHECK_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iop_adma_desc_slot*)* @iop_desc_get_zero_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_desc_get_zero_result(%struct.iop_adma_desc_slot* %0) #0 {
  %2 = alloca %struct.iop_adma_desc_slot*, align 8
  %3 = alloca %struct.iop3xx_desc_aau*, align 8
  %4 = alloca %struct.iop3xx_aau_desc_ctrl, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %2, align 8
  %5 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %2, align 8
  %6 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %5, i32 0, i32 0
  %7 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %6, align 8
  store %struct.iop3xx_desc_aau* %7, %struct.iop3xx_desc_aau** %3, align 8
  %8 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %3, align 8
  %9 = getelementptr inbounds %struct.iop3xx_desc_aau, %struct.iop3xx_desc_aau* %8, i32 0, i32 0
  %10 = bitcast %struct.iop3xx_aau_desc_ctrl* %4 to i8*
  %11 = bitcast %struct.iop3xx_aau_desc_ctrl* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.iop3xx_aau_desc_ctrl, %struct.iop3xx_aau_desc_ctrl* %4, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.iop3xx_aau_desc_ctrl, %struct.iop3xx_aau_desc_ctrl* %4, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ false, %1 ], [ %18, %15 ]
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @iop_paranoia(i32 %22)
  %24 = getelementptr inbounds %struct.iop3xx_aau_desc_ctrl, %struct.iop3xx_aau_desc_ctrl* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SUM_CHECK_P, align 4
  %27 = shl i32 %25, %26
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @iop_paranoia(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
