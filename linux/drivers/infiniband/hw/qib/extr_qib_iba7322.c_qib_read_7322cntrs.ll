; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_read_7322cntrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_read_7322cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@cntr7322names = common dso_local global i64 0, align 8
@cntr7322indices = common dso_local global i32* null, align 8
@_PORT_64BIT_FLAG = common dso_local global i32 0, align 4
@_PORT_CNTR_IDXMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_devdata*, i64, i8**, i32**)* @qib_read_7322cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_read_7322cntrs(%struct.qib_devdata* %0, i64 %1, i8** %2, i32** %3) #0 {
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
  %12 = load i8**, i8*** %7, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %28

24:                                               ; preds = %14
  %25 = load i64, i64* @cntr7322names, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %23
  br label %96

29:                                               ; preds = %4
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  store i64 %41, i64* %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %29
  store i64 0, i64* %9, align 8
  br label %97

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = load i32**, i32*** %8, align 8
  store i32* %50, i32** %51, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %92, %49
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %52
  %61 = load i32*, i32** @cntr7322indices, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @_PORT_64BIT_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %60
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %71 = load i32*, i32** @cntr7322indices, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @_PORT_CNTR_IDXMASK, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @read_7322_creg(%struct.qib_devdata* %70, i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %91

81:                                               ; preds = %60
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %83 = load i32*, i32** @cntr7322indices, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @read_7322_creg32(%struct.qib_devdata* %82, i32 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  br label %91

91:                                               ; preds = %81, %69
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %52

95:                                               ; preds = %52
  br label %96

96:                                               ; preds = %95, %28
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i64, i64* %9, align 8
  ret i64 %98
}

declare dso_local i32 @read_7322_creg(%struct.qib_devdata*, i32) #1

declare dso_local i32 @read_7322_creg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
