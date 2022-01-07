; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_read_7220cntrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_read_7220cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@cntr7220names = common dso_local global i64 0, align 8
@cntr7220indices = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_devdata*, i64, i8**, i32**)* @qib_read_7220cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_read_7220cntrs(%struct.qib_devdata* %0, i64 %1, i8** %2, i32** %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %82

19:                                               ; preds = %4
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i64, i64* @cntr7220names, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8**, i8*** %7, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %22
  br label %81

36:                                               ; preds = %19
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %10, align 8
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  store i64 %48, i64* %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %36
  store i64 0, i64* %9, align 8
  br label %82

56:                                               ; preds = %51
  %57 = load i32*, i32** %10, align 8
  %58 = load i32**, i32*** %8, align 8
  store i32* %57, i32** %58, align 8
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %77, %56
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %69 = load i32*, i32** @cntr7220indices, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @read_7220_creg32(%struct.qib_devdata* %68, i32 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %59

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %35
  br label %82

82:                                               ; preds = %81, %55, %18
  %83 = load i64, i64* %9, align 8
  ret i64 %83
}

declare dso_local i32 @read_7220_creg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
