; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_LDP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_LDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_DMALDP = common dso_local global i32 0, align 4
@CMD_DMALDP = common dso_local global i32 0, align 4
@BURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09DMALDP%c %u\0A\00", align 1
@SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @_emit_LDP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_LDP(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* @SZ_DMALDP, align 4
  store i32 %13, i32* %5, align 4
  br label %45

14:                                               ; preds = %4
  %15 = load i32, i32* @CMD_DMALDP, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BURST, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 2
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 31
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 3
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SZ_DMALDP, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SINGLE, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 83, i32 66
  %40 = trunc i32 %39 to i8
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 3
  %43 = call i32 @PL330_DBGCMD_DUMP(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %40, i32 %42)
  %44 = load i32, i32* @SZ_DMALDP, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %26, %12
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @PL330_DBGCMD_DUMP(i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
