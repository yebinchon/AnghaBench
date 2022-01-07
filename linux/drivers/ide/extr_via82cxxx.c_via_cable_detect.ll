; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82cxxx_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via82cxxx_dev*, i32)* @via_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_cable_detect(%struct.via82cxxx_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.via82cxxx_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.via82cxxx_dev* %0, %struct.via82cxxx_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %3, align 8
  %7 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %120 [
    i32 130, label %11
    i32 129, label %48
    i32 128, label %84
  ]

11:                                               ; preds = %2
  store i32 24, i32* %5, align 4
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 16
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %23, %24
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 7
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 4
  %37 = sub nsw i32 1, %36
  %38 = shl i32 1, %37
  %39 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %3, align 8
  %40 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %34, %28, %22, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %5, align 4
  br label %12

47:                                               ; preds = %12
  br label %120

48:                                               ; preds = %2
  store i32 24, i32* %5, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %53, %54
  %56 = and i32 %55, 16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 7
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %79

70:                                               ; preds = %64, %52
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 4
  %73 = sub nsw i32 1, %72
  %74 = shl i32 1, %73
  %75 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %3, align 8
  %76 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %64, %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 8
  store i32 %82, i32* %5, align 4
  br label %49

83:                                               ; preds = %49
  br label %120

84:                                               ; preds = %2
  store i32 24, i32* %5, align 4
  br label %85

85:                                               ; preds = %116, %84
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %89, %90
  %92 = and i32 %91, 16
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = ashr i32 %95, %96
  %98 = and i32 %97, 32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = ashr i32 %101, %102
  %104 = and i32 %103, 7
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %106, label %115

106:                                              ; preds = %100, %88
  %107 = load i32, i32* %5, align 4
  %108 = ashr i32 %107, 4
  %109 = sub nsw i32 1, %108
  %110 = shl i32 1, %109
  %111 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %3, align 8
  %112 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %106, %100, %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %117, 8
  store i32 %118, i32* %5, align 4
  br label %85

119:                                              ; preds = %85
  br label %120

120:                                              ; preds = %2, %119, %83, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
