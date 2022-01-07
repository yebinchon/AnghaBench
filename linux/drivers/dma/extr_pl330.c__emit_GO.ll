; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_GO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_GO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._arg_GO = type { i32, i32, i32 }

@SZ_DMAGO = common dso_local global i32 0, align 4
@CMD_DMAGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct._arg_GO*)* @_emit_GO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_GO(i32 %0, i32* %1, %struct._arg_GO* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct._arg_GO*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct._arg_GO* %2, %struct._arg_GO** %7, align 8
  %11 = load %struct._arg_GO*, %struct._arg_GO** %7, align 8
  %12 = getelementptr inbounds %struct._arg_GO, %struct._arg_GO* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct._arg_GO*, %struct._arg_GO** %7, align 8
  %15 = getelementptr inbounds %struct._arg_GO, %struct._arg_GO* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct._arg_GO*, %struct._arg_GO** %7, align 8
  %18 = getelementptr inbounds %struct._arg_GO, %struct._arg_GO* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @SZ_DMAGO, align 4
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load i32, i32* @CMD_DMAGO, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %28, 1
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 7
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 16
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 24
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @SZ_DMAGO, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %24, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
