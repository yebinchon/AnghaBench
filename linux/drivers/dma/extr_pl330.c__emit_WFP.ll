; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_WFP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_WFP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_DMAWFP = common dso_local global i32 0, align 4
@CMD_DMAWFP = common dso_local global i32 0, align 4
@SINGLE = common dso_local global i32 0, align 4
@BURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09DMAWFP%c %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @_emit_WFP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_WFP(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @SZ_DMAWFP, align 4
  store i32 %13, i32* %5, align 4
  br label %66

14:                                               ; preds = %4
  %15 = load i32, i32* @CMD_DMAWFP, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SINGLE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %23, align 4
  br label %40

25:                                               ; preds = %14
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BURST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* %31, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 31
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 3
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SZ_DMAWFP, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SINGLE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %59

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @BURST, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 66, i32 80
  br label %59

59:                                               ; preds = %53, %52
  %60 = phi i32 [ 83, %52 ], [ %58, %53 ]
  %61 = trunc i32 %60 to i8
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 3
  %64 = call i32 @PL330_DBGCMD_DUMP(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %61, i32 %63)
  %65 = load i32, i32* @SZ_DMAWFP, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %12
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @PL330_DBGCMD_DUMP(i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
