; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_dh_fn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_dh_fn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKE_DH_G2_1536 = common dso_local global i64 0, align 8
@PKE_DH_1536 = common dso_local global i64 0, align 8
@PKE_DH_G2_2048 = common dso_local global i64 0, align 8
@PKE_DH_2048 = common dso_local global i64 0, align 8
@PKE_DH_G2_3072 = common dso_local global i64 0, align 8
@PKE_DH_3072 = common dso_local global i64 0, align 8
@PKE_DH_G2_4096 = common dso_local global i64 0, align 8
@PKE_DH_4096 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @qat_dh_fn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qat_dh_fn_id(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 %7, 3
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %46 [
    i32 1536, label %10
    i32 2048, label %19
    i32 3072, label %28
    i32 4096, label %37
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i64, i64* @PKE_DH_G2_1536, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load i64, i64* @PKE_DH_1536, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %3, align 8
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @PKE_DH_G2_2048, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @PKE_DH_2048, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %3, align 8
  br label %47

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @PKE_DH_G2_3072, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @PKE_DH_3072, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %3, align 8
  br label %47

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @PKE_DH_G2_4096, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @PKE_DH_4096, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %3, align 8
  br label %47

46:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %46, %44, %35, %26, %17
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
