; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-reg.c_i2c_mux_reg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-reg.c_i2c_mux_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmux*, i32)* @i2c_mux_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_mux_reg_set(%struct.regmux* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmux*, align 8
  %5 = alloca i32, align 4
  store %struct.regmux* %0, %struct.regmux** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regmux*, %struct.regmux** %4, align 8
  %7 = getelementptr inbounds %struct.regmux, %struct.regmux* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %105

14:                                               ; preds = %2
  %15 = load %struct.regmux*, %struct.regmux** %4, align 8
  %16 = getelementptr inbounds %struct.regmux, %struct.regmux* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %104 [
    i32 4, label %19
    i32 2, label %52
    i32 1, label %85
  ]

19:                                               ; preds = %14
  %20 = load %struct.regmux*, %struct.regmux** %4, align 8
  %21 = getelementptr inbounds %struct.regmux, %struct.regmux* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.regmux*, %struct.regmux** %4, align 8
  %28 = getelementptr inbounds %struct.regmux, %struct.regmux* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iowrite32(i32 %26, i32 %30)
  br label %39

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.regmux*, %struct.regmux** %4, align 8
  %35 = getelementptr inbounds %struct.regmux, %struct.regmux* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iowrite32be(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.regmux*, %struct.regmux** %4, align 8
  %41 = getelementptr inbounds %struct.regmux, %struct.regmux* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.regmux*, %struct.regmux** %4, align 8
  %47 = getelementptr inbounds %struct.regmux, %struct.regmux* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ioread32(i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %104

52:                                               ; preds = %14
  %53 = load %struct.regmux*, %struct.regmux** %4, align 8
  %54 = getelementptr inbounds %struct.regmux, %struct.regmux* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.regmux*, %struct.regmux** %4, align 8
  %61 = getelementptr inbounds %struct.regmux, %struct.regmux* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iowrite16(i32 %59, i32 %63)
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.regmux*, %struct.regmux** %4, align 8
  %68 = getelementptr inbounds %struct.regmux, %struct.regmux* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iowrite16be(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.regmux*, %struct.regmux** %4, align 8
  %74 = getelementptr inbounds %struct.regmux, %struct.regmux* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.regmux*, %struct.regmux** %4, align 8
  %80 = getelementptr inbounds %struct.regmux, %struct.regmux* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ioread16(i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %104

85:                                               ; preds = %14
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.regmux*, %struct.regmux** %4, align 8
  %88 = getelementptr inbounds %struct.regmux, %struct.regmux* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @iowrite8(i32 %86, i32 %90)
  %92 = load %struct.regmux*, %struct.regmux** %4, align 8
  %93 = getelementptr inbounds %struct.regmux, %struct.regmux* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %85
  %98 = load %struct.regmux*, %struct.regmux** %4, align 8
  %99 = getelementptr inbounds %struct.regmux, %struct.regmux* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ioread8(i32 %101)
  br label %103

103:                                              ; preds = %97, %85
  br label %104

104:                                              ; preds = %14, %103, %84, %51
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %11
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @iowrite16be(i32, i32) #1

declare dso_local i32 @ioread16(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
