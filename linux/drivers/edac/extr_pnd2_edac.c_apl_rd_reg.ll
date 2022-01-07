; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_apl_rd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_apl_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Read %s port=%x off=%x op=%x\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s=%x%08x ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i64, i8*)* @apl_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apl_rd_reg(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15, i32 %16, i32 %17)
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %55 [
    i64 8, label %20
    i64 4, label %29
  ]

20:                                               ; preds = %6
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 4
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr i8, i8* %25, i64 4
  %27 = bitcast i8* %26 to i32*
  %28 = call i32 @_apl_rd_reg(i32 %21, i32 %23, i32 %24, i32* %27)
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %6, %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = call i32 @_apl_rd_reg(i32 %30, i32 %31, i32 %32, i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @KERN_DEBUG, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr i8, i8* %43, i64 4
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ %46, %42 ], [ 0, %47 ]
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @pnd2_printk(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %6, %48
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local i32 @edac_dbg(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @_apl_rd_reg(i32, i32, i32, i32*) #1

declare dso_local i32 @pnd2_printk(i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
