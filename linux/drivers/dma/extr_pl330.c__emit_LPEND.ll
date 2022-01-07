; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_LPEND.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__emit_LPEND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._arg_LPEND = type { i32, i32, i32, i32 }

@SZ_DMALPEND = common dso_local global i32 0, align 4
@CMD_DMALPEND = common dso_local global i32 0, align 4
@SINGLE = common dso_local global i32 0, align 4
@BURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09DMALP%s%c_%c bjmpto_%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FE\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct._arg_LPEND*)* @_emit_LPEND to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_emit_LPEND(i32 %0, i32* %1, %struct._arg_LPEND* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct._arg_LPEND*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct._arg_LPEND* %2, %struct._arg_LPEND** %7, align 8
  %12 = load %struct._arg_LPEND*, %struct._arg_LPEND** %7, align 8
  %13 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct._arg_LPEND*, %struct._arg_LPEND** %7, align 8
  %16 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct._arg_LPEND*, %struct._arg_LPEND** %7, align 8
  %19 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct._arg_LPEND*, %struct._arg_LPEND** %7, align 8
  %22 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SZ_DMALPEND, align 4
  store i32 %27, i32* %4, align 4
  br label %96

28:                                               ; preds = %3
  %29 = load i32, i32* @CMD_DMALPEND, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 4
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 16
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SINGLE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %66

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BURST, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 3
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @SZ_DMALPEND, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SINGLE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %85

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @BURST, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 66, i32 65
  br label %85

85:                                               ; preds = %79, %78
  %86 = phi i32 [ 83, %78 ], [ %84, %79 ]
  %87 = trunc i32 %86 to i8
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 49, i32 48
  %92 = trunc i32 %91 to i8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @PL330_DBGCMD_DUMP(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %74, i8 signext %87, i8 signext %92, i32 %93)
  %95 = load i32, i32* @SZ_DMALPEND, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %85, %26
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @PL330_DBGCMD_DUMP(i32, i8*, i8*, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
