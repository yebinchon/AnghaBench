; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h___opa_get_lid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h___opa_get_lid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPA_MCAST_NR = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__opa_get_lid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__opa_get_lid(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hfi1_check_mcast(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %48 [
    i32 129, label %10
    i32 131, label %10
    i32 130, label %22
    i32 128, label %34
  ]

10:                                               ; preds = %2, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OPA_MCAST_NR, align 4
  %16 = call i32 @opa_get_mcast_base(i32 %15)
  %17 = sub nsw i32 %14, %16
  %18 = add nsw i32 %17, 983040
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1048575
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @OPA_MCAST_NR, align 4
  %28 = call i32 @opa_get_mcast_base(i32 %27)
  %29 = sub nsw i32 %26, %28
  %30 = add nsw i32 %29, 15728640
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 16777215
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OPA_MCAST_NR, align 4
  %40 = call i32 @opa_get_mcast_base(i32 %39)
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 65535
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %45, %37, %31, %25, %19, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @hfi1_check_mcast(i32) #1

declare dso_local i32 @opa_get_mcast_base(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
