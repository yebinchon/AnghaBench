; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_config_wires.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_config_wires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.titsc = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@config_pins = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.titsc*)* @titsc_config_wires to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titsc_config_wires(%struct.titsc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.titsc*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.titsc* %0, %struct.titsc** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %63, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = load %struct.titsc*, %struct.titsc** %3, align 8
  %15 = getelementptr inbounds %struct.titsc, %struct.titsc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 240
  %22 = ashr i32 %21, 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load %struct.titsc*, %struct.titsc** %3, align 8
  %27 = getelementptr inbounds %struct.titsc, %struct.titsc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 15
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 7
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %13
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %124

48:                                               ; preds = %13
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @config_pins, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp sgt i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %124

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %10

66:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %120, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %123

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32*, i32** @config_pins, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %124

89:                                               ; preds = %70
  %90 = load i32, i32* %9, align 4
  switch i32 %90, label %119 [
    i32 0, label %91
    i32 1, label %98
    i32 2, label %105
    i32 3, label %112
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.titsc*, %struct.titsc** %3, align 8
  %94 = getelementptr inbounds %struct.titsc, %struct.titsc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.titsc*, %struct.titsc** %3, align 8
  %97 = getelementptr inbounds %struct.titsc, %struct.titsc* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %119

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.titsc*, %struct.titsc** %3, align 8
  %101 = getelementptr inbounds %struct.titsc, %struct.titsc* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.titsc*, %struct.titsc** %3, align 8
  %104 = getelementptr inbounds %struct.titsc, %struct.titsc* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  br label %119

105:                                              ; preds = %89
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.titsc*, %struct.titsc** %3, align 8
  %108 = getelementptr inbounds %struct.titsc, %struct.titsc* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.titsc*, %struct.titsc** %3, align 8
  %111 = getelementptr inbounds %struct.titsc, %struct.titsc* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  br label %119

112:                                              ; preds = %89
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.titsc*, %struct.titsc** %3, align 8
  %115 = getelementptr inbounds %struct.titsc, %struct.titsc* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.titsc*, %struct.titsc** %3, align 8
  %118 = getelementptr inbounds %struct.titsc, %struct.titsc* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %89, %112, %105, %98, %91
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %67

123:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %86, %59, %45
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
