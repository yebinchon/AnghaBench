; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_param.h_rxe_mtu_int_to_enum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_param.h_rxe_mtu_int_to_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_MTU_256 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rxe_mtu_int_to_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_mtu_int_to_enum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @IB_MTU_256, align 4
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 1024
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @IB_MTU_512, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2048
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 4096
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @IB_MTU_2048, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @IB_MTU_4096, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %20, %15, %10, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
