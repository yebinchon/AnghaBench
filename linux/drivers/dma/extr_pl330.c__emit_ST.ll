; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_ST.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_ST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_DMAST = common dso_local global i32 0, align 4
@CMD_DMAST = common dso_local global i32 0, align 4
@SINGLE = common dso_local global i32 0, align 4
@BURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\09DMAST%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @_emit_ST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_ST(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @SZ_DMAST, align 4
  store i32 %11, i32* %4, align 4
  br label %51

12:                                               ; preds = %3
  %13 = load i32, i32* @CMD_DMAST, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SINGLE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %34

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @BURST, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 3
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* @SZ_DMAST, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SINGLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BURST, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 66, i32 65
  br label %46

46:                                               ; preds = %40, %39
  %47 = phi i32 [ 83, %39 ], [ %45, %40 ]
  %48 = trunc i32 %47 to i8
  %49 = call i32 @PL330_DBGCMD_DUMP(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8 signext %48)
  %50 = load i32, i32* @SZ_DMAST, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %10
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @PL330_DBGCMD_DUMP(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
