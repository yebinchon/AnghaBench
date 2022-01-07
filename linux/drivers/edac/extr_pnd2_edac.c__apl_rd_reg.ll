; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c__apl_rd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c__apl_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@byte = common dso_local global i32 0, align 4
@P2SB_HIDE_OFF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@dword = common dso_local global i32 0, align 4
@P2SB_ADDR_OFF = common dso_local global i32 0, align 4
@P2SB_DATA_OFF = common dso_local global i32 0, align 4
@P2SB_EADD_OFF = common dso_local global i32 0, align 4
@word = common dso_local global i32 0, align 4
@P2SB_ROUT_OFF = common dso_local global i32 0, align 4
@P2SB_STAT_OFF = common dso_local global i32 0, align 4
@P2SB_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @_apl_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_apl_rd_reg(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 255, i32* %9, align 4
  %13 = load i32, i32* @byte, align 4
  %14 = load i32, i32* @P2SB_HIDE_OFF, align 4
  %15 = call i32 @P2SB_READ(i32 %13, i32 %14, i32* %12)
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @byte, align 4
  %20 = load i32, i32* @P2SB_HIDE_OFF, align 4
  %21 = call i32 @P2SB_WRITE(i32 %19, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %18, %4
  %23 = call i64 @p2sb_is_busy(i32* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %71

28:                                               ; preds = %22
  %29 = load i32, i32* @dword, align 4
  %30 = load i32, i32* @P2SB_ADDR_OFF, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 24
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @P2SB_WRITE(i32 %29, i32 %30, i32 %34)
  %36 = load i32, i32* @dword, align 4
  %37 = load i32, i32* @P2SB_DATA_OFF, align 4
  %38 = call i32 @P2SB_WRITE(i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* @dword, align 4
  %40 = load i32, i32* @P2SB_EADD_OFF, align 4
  %41 = call i32 @P2SB_WRITE(i32 %39, i32 %40, i32 0)
  %42 = load i32, i32* @word, align 4
  %43 = load i32, i32* @P2SB_ROUT_OFF, align 4
  %44 = call i32 @P2SB_WRITE(i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* @word, align 4
  %46 = load i32, i32* @P2SB_STAT_OFF, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* @P2SB_BUSY, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @P2SB_WRITE(i32 %45, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %62, %28
  %53 = call i64 @p2sb_is_busy(i32* %11)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %71

62:                                               ; preds = %55
  br label %52

63:                                               ; preds = %52
  %64 = load i32, i32* @dword, align 4
  %65 = load i32, i32* @P2SB_DATA_OFF, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @P2SB_READ(i32 %64, i32 %65, i32* %66)
  %68 = load i32, i32* %11, align 4
  %69 = ashr i32 %68, 1
  %70 = and i32 %69, 3
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %59, %25
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* @byte, align 4
  %76 = load i32, i32* @P2SB_HIDE_OFF, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @P2SB_WRITE(i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @P2SB_READ(i32, i32, i32*) #1

declare dso_local i32 @P2SB_WRITE(i32, i32, i32) #1

declare dso_local i64 @p2sb_is_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
