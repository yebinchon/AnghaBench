; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_gpio = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynq_gpio*)* @zynq_gpio_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_gpio_restore_context(%struct.zynq_gpio* %0) #0 {
  %2 = alloca %struct.zynq_gpio*, align 8
  %3 = alloca i32, align 4
  store %struct.zynq_gpio* %0, %struct.zynq_gpio** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %118, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %7 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %121

12:                                               ; preds = %4
  %13 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %14 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %22 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @ZYNQ_GPIO_DATA_LSW_OFFSET(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writel_relaxed(i32 %20, i64 %26)
  %28 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %29 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %37 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @ZYNQ_GPIO_DATA_MSW_OFFSET(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writel_relaxed(i32 %35, i64 %41)
  %43 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %44 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %52 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @ZYNQ_GPIO_DIRM_OFFSET(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @writel_relaxed(i32 %50, i64 %56)
  %58 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %59 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %67 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @ZYNQ_GPIO_INTEN_OFFSET(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writel_relaxed(i32 %65, i64 %71)
  %73 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %74 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %82 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i64 @ZYNQ_GPIO_INTTYPE_OFFSET(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @writel_relaxed(i32 %80, i64 %86)
  %88 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %89 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %97 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i64 @ZYNQ_GPIO_INTPOL_OFFSET(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @writel_relaxed(i32 %95, i64 %101)
  %103 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %104 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.zynq_gpio*, %struct.zynq_gpio** %2, align 8
  %112 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i64 @ZYNQ_GPIO_INTANY_OFFSET(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = call i32 @writel_relaxed(i32 %110, i64 %116)
  br label %118

118:                                              ; preds = %12
  %119 = load i32, i32* %3, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %4

121:                                              ; preds = %4
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ZYNQ_GPIO_DATA_LSW_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_DATA_MSW_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_DIRM_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_INTEN_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_INTTYPE_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_INTPOL_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_INTANY_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
