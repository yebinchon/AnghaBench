; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rxe_get_key.key = internal global i32 1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rxe_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_get_key() #0 {
  %1 = load i32, i32* @rxe_get_key.key, align 4
  %2 = shl i32 %1, 1
  store i32 %2, i32* @rxe_get_key.key, align 4
  %3 = load i32, i32* @rxe_get_key.key, align 4
  %4 = and i32 %3, 256
  %5 = icmp ne i32 0, %4
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @rxe_get_key.key, align 4
  %8 = and i32 %7, 16
  %9 = icmp ne i32 0, %8
  %10 = zext i1 %9 to i32
  %11 = xor i32 %6, %10
  %12 = load i32, i32* @rxe_get_key.key, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 0, %13
  %15 = zext i1 %14 to i32
  %16 = xor i32 %11, %15
  %17 = load i32, i32* @rxe_get_key.key, align 4
  %18 = and i32 %17, 64
  %19 = icmp ne i32 0, %18
  %20 = zext i1 %19 to i32
  %21 = xor i32 %16, %20
  %22 = load i32, i32* @rxe_get_key.key, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @rxe_get_key.key, align 4
  %24 = load i32, i32* @rxe_get_key.key, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* @rxe_get_key.key, align 4
  %26 = load i32, i32* @rxe_get_key.key, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
