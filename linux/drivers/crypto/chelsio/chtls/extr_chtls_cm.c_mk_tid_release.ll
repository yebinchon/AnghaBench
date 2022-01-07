; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_mk_tid_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_mk_tid_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cpl_tid_release = type { i32 }

@CPL_PRIORITY_SETUP = common dso_local global i32 0, align 4
@CPL_TID_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32)* @mk_tid_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_tid_release(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpl_tid_release*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @roundup(i32 4, i32 16)
  store i32 %9, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @__skb_put(%struct.sk_buff* %10, i32 %11)
  %13 = inttoptr i64 %12 to %struct.cpl_tid_release*
  store %struct.cpl_tid_release* %13, %struct.cpl_tid_release** %7, align 8
  %14 = load %struct.cpl_tid_release*, %struct.cpl_tid_release** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @memset(%struct.cpl_tid_release* %14, i32 0, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @CPL_PRIORITY_SETUP, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @set_wr_txq(%struct.sk_buff* %17, i32 %18, i32 %19)
  %21 = load %struct.cpl_tid_release*, %struct.cpl_tid_release** %7, align 8
  %22 = load i32, i32* @CPL_TID_RELEASE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @INIT_TP_WR_CPL(%struct.cpl_tid_release* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.cpl_tid_release*, i32, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @INIT_TP_WR_CPL(%struct.cpl_tid_release*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
