; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_alloc_txwin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_alloc_txwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32 }
%struct.nx842_coproc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vas_tx_win_attr = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"ibm,nx-842: Can not open TX window: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vas_window* (%struct.nx842_coproc*)* @nx842_alloc_txwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vas_window* @nx842_alloc_txwin(%struct.nx842_coproc* %0) #0 {
  %2 = alloca %struct.nx842_coproc*, align 8
  %3 = alloca %struct.vas_window*, align 8
  %4 = alloca %struct.vas_tx_win_attr, align 8
  store %struct.nx842_coproc* %0, %struct.nx842_coproc** %2, align 8
  store %struct.vas_window* null, %struct.vas_window** %3, align 8
  %5 = load %struct.nx842_coproc*, %struct.nx842_coproc** %2, align 8
  %6 = getelementptr inbounds %struct.nx842_coproc, %struct.nx842_coproc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @vas_init_tx_win_attr(%struct.vas_tx_win_attr* %4, i32 %7)
  %9 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %4, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %4, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.nx842_coproc*, %struct.nx842_coproc** %2, align 8
  %12 = getelementptr inbounds %struct.nx842_coproc, %struct.nx842_coproc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nx842_coproc*, %struct.nx842_coproc** %2, align 8
  %16 = getelementptr inbounds %struct.nx842_coproc, %struct.nx842_coproc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vas_window* @vas_tx_win_open(i32 %14, i32 %17, %struct.vas_tx_win_attr* %4)
  store %struct.vas_window* %18, %struct.vas_window** %3, align 8
  %19 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %20 = call i64 @IS_ERR(%struct.vas_window* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %24 = call i32 @PTR_ERR(%struct.vas_window* %23)
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  ret %struct.vas_window* %27
}

declare dso_local i32 @vas_init_tx_win_attr(%struct.vas_tx_win_attr*, i32) #1

declare dso_local %struct.vas_window* @vas_tx_win_open(i32, i32, %struct.vas_tx_win_attr*) #1

declare dso_local i64 @IS_ERR(%struct.vas_window*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.vas_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
