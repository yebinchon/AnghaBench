; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_get_triple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_get_triple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 (i32, i64, i64, i16*)* }
%struct.axis_triple = type { i8*, i8*, i8* }

@DATAX0 = common dso_local global i64 0, align 8
@DATAZ1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adxl34x*, %struct.axis_triple*)* @adxl34x_get_triple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adxl34x_get_triple(%struct.adxl34x* %0, %struct.axis_triple* %1) #0 {
  %3 = alloca %struct.adxl34x*, align 8
  %4 = alloca %struct.axis_triple*, align 8
  %5 = alloca [3 x i16], align 2
  store %struct.adxl34x* %0, %struct.adxl34x** %3, align 8
  store %struct.axis_triple* %1, %struct.axis_triple** %4, align 8
  %6 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %7 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i32, i64, i64, i16*)*, i32 (i32, i64, i64, i16*)** %9, align 8
  %11 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %12 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* @DATAX0, align 8
  %15 = load i64, i64* @DATAZ1, align 8
  %16 = load i64, i64* @DATAX0, align 8
  %17 = sub nsw i64 %15, %16
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %20 = call i32 %10(i32 %13, i64 %14, i64 %18, i16* %19)
  %21 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %22 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %25 = load i16, i16* %24, align 2
  %26 = call i64 @le16_to_cpu(i16 signext %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %29 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %32 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.axis_triple*, %struct.axis_triple** %4, align 8
  %36 = getelementptr inbounds %struct.axis_triple, %struct.axis_triple* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  %38 = load i16, i16* %37, align 2
  %39 = call i64 @le16_to_cpu(i16 signext %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %42 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %45 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.axis_triple*, %struct.axis_triple** %4, align 8
  %49 = getelementptr inbounds %struct.axis_triple, %struct.axis_triple* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  %51 = load i16, i16* %50, align 2
  %52 = call i64 @le16_to_cpu(i16 signext %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %55 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %58 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.axis_triple*, %struct.axis_triple** %4, align 8
  %62 = getelementptr inbounds %struct.axis_triple, %struct.axis_triple* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.adxl34x*, %struct.adxl34x** %3, align 8
  %64 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @le16_to_cpu(i16 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
