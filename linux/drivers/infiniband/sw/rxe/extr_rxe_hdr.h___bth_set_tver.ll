; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h___bth_set_tver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h___bth_set_tver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_bth = type { i32 }

@BTH_TVER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @__bth_set_tver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bth_set_tver(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_bth*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rxe_bth*
  store %struct.rxe_bth* %7, %struct.rxe_bth** %5, align 8
  %8 = load i32, i32* @BTH_TVER_MASK, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @BTH_TVER_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.rxe_bth*, %struct.rxe_bth** %5, align 8
  %14 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = or i32 %10, %16
  %18 = load %struct.rxe_bth*, %struct.rxe_bth** %5, align 8
  %19 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
