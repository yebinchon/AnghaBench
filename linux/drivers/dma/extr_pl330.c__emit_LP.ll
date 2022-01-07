; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_LP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_LP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_DMALP = common dso_local global i32 0, align 4
@CMD_DMALP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09DMALP_%c %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @_emit_LP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_LP(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* @SZ_DMALP, align 4
  store i32 %13, i32* %5, align 4
  br label %40

14:                                               ; preds = %4
  %15 = load i32, i32* @CMD_DMALP, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 2
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SZ_DMALP, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 49, i32 48
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @PL330_DBGCMD_DUMP(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %36, i32 %37)
  %39 = load i32, i32* @SZ_DMALP, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %25, %12
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @PL330_DBGCMD_DUMP(i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
