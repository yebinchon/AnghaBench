; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_get_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_get_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAD_REGADDR = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i16)* @qat_hal_get_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @qat_hal_get_reg_addr(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %58 [
    i32 139, label %7
    i32 137, label %7
    i32 138, label %13
    i32 136, label %13
    i32 130, label %18
    i32 128, label %18
    i32 129, label %18
    i32 131, label %24
    i32 142, label %31
    i32 140, label %31
    i32 141, label %31
    i32 143, label %37
    i32 133, label %44
    i32 135, label %50
    i32 134, label %51
    i32 132, label %52
  ]

7:                                                ; preds = %2, %2
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 127
  %11 = or i32 128, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %5, align 2
  br label %60

13:                                               ; preds = %2, %2
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 31
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  br label %60

18:                                               ; preds = %2, %2, %2
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 31
  %22 = or i32 384, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %5, align 2
  br label %60

24:                                               ; preds = %2
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 3
  %28 = shl i32 %27, 1
  %29 = or i32 320, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %5, align 2
  br label %60

31:                                               ; preds = %2, %2, %2
  %32 = load i16, i16* %4, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 31
  %35 = or i32 448, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %5, align 2
  br label %60

37:                                               ; preds = %2
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 3
  %41 = shl i32 %40, 1
  %42 = or i32 256, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %5, align 2
  br label %60

44:                                               ; preds = %2
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 31
  %48 = or i32 640, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %5, align 2
  br label %60

50:                                               ; preds = %2
  store i16 512, i16* %5, align 2
  br label %60

51:                                               ; preds = %2
  store i16 544, i16* %5, align 2
  br label %60

52:                                               ; preds = %2
  %53 = load i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 255
  %56 = or i32 768, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %5, align 2
  br label %60

58:                                               ; preds = %2
  %59 = load i16, i16* @BAD_REGADDR, align 2
  store i16 %59, i16* %5, align 2
  br label %60

60:                                               ; preds = %58, %52, %51, %50, %44, %37, %31, %24, %18, %13, %7
  %61 = load i16, i16* %5, align 2
  ret i16 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
