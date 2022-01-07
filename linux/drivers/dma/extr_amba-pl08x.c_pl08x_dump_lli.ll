; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_dump_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_dump_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"%-3s %-9s  %-10s %-10s %-10s %-10s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lli\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"csrc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cdst\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"clli\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cctl\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cctl2\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"%3d @%p: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@PL080_LLI_SRC = common dso_local global i64 0, align 8
@PL080_LLI_DST = common dso_local global i64 0, align 8
@PL080_LLI_LLI = common dso_local global i64 0, align 8
@PL080_LLI_CCTL = common dso_local global i64 0, align 8
@PL080S_LLI_CCTL2 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"%-3s %-9s  %-10s %-10s %-10s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"%3d @%p: 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_driver_data*, i32*, i32)* @pl08x_dump_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_dump_lli(%struct.pl08x_driver_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pl08x_driver_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %9 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %3
  %15 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %16 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %58, %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %26 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* @PL080_LLI_SRC, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* @PL080_LLI_DST, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* @PL080_LLI_LLI, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @PL080_LLI_CCTL, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* @PL080S_LLI_CCTL2, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %29, i32* %30, i32 %34, i32 %38, i32 %42, i32 %46, i32 %50)
  %52 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %53 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %24
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %20

61:                                               ; preds = %20
  br label %106

62:                                               ; preds = %3
  %63 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %64 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %102, %62
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %68
  %73 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %74 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i64, i64* @PL080_LLI_SRC, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* @PL080_LLI_DST, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* @PL080_LLI_LLI, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* @PL080_LLI_CCTL, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %77, i32* %78, i32 %82, i32 %86, i32 %90, i32 %94)
  %96 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %97 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %5, align 8
  br label %102

102:                                              ; preds = %72
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %68

105:                                              ; preds = %68
  br label %106

106:                                              ; preds = %105, %61
  ret void
}

declare dso_local i32 @dev_vdbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
