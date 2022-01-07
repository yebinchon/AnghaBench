; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iser_dif_prot_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iser_dif_prot_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_PROT_T10DIF_TYPE_1 = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE0_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@IB_PROT_T10DIF_TYPE_2 = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE2_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE2_PROTECTION = common dso_local global i32 0, align 4
@IB_PROT_T10DIF_TYPE_3 = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE3_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE3_PROTECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iser_dif_prot_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_dif_prot_caps(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @IB_PROT_T10DIF_TYPE_1, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %9 = load i32, i32* @SHOST_DIX_TYPE0_PROTECTION, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %12 = or i32 %10, %11
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ %12, %7 ], [ 0, %13 ]
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IB_PROT_T10DIF_TYPE_2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @SHOST_DIF_TYPE2_PROTECTION, align 4
  %22 = load i32, i32* @SHOST_DIX_TYPE2_PROTECTION, align 4
  %23 = or i32 %21, %22
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  %27 = or i32 %15, %26
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @IB_PROT_T10DIF_TYPE_3, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @SHOST_DIF_TYPE3_PROTECTION, align 4
  %34 = load i32, i32* @SHOST_DIX_TYPE3_PROTECTION, align 4
  %35 = or i32 %33, %34
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %39 = or i32 %27, %38
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
