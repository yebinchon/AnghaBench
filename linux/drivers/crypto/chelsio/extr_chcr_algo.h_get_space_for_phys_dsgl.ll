; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.h_get_space_for_phys_dsgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.h_get_space_for_phys_dsgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHYSDSGL_MAX_LEN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_space_for_phys_dsgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_space_for_phys_dsgl(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 3
  %5 = load i32, i32* %2, align 4
  %6 = urem i32 %5, 8
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 1, i32 0
  %10 = add i32 %4, %9
  %11 = load i32, i32* @PHYSDSGL_MAX_LEN_SIZE, align 4
  %12 = mul i32 %10, %11
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 3
  %15 = add i32 %12, %14
  %16 = load i32, i32* %2, align 4
  %17 = urem i32 %16, 2
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = shl i32 %20, 3
  %22 = add i32 %15, %21
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
