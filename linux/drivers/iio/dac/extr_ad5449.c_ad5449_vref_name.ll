; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5449.c_ad5449_vref_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5449.c_ad5449_vref_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5449 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"VREF\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VREFA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VREFB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ad5449*, i32)* @ad5449_vref_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ad5449_vref_name(%struct.ad5449* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ad5449*, align 8
  %5 = alloca i32, align 4
  store %struct.ad5449* %0, %struct.ad5449** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ad5449*, %struct.ad5449** %4, align 8
  %7 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %16, %12
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
