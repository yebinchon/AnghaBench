; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_parse_3000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_parse_3000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm = type { i32*, i64, i64, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm*)* @pm_parse_3000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_parse_3000(%struct.pm* %0) #0 {
  %2 = alloca %struct.pm*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pm* %0, %struct.pm** %2, align 8
  %5 = load %struct.pm*, %struct.pm** %2, align 8
  %6 = getelementptr inbounds %struct.pm, %struct.pm* %5, i32 0, i32 4
  %7 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.pm*, %struct.pm** %2, align 8
  %9 = getelementptr inbounds %struct.pm, %struct.pm* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 206
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %94

15:                                               ; preds = %1
  %16 = load %struct.pm*, %struct.pm** %2, align 8
  %17 = getelementptr inbounds %struct.pm, %struct.pm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pm*, %struct.pm** %2, align 8
  %20 = getelementptr inbounds %struct.pm, %struct.pm* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %15
  %25 = load %struct.pm*, %struct.pm** %2, align 8
  %26 = getelementptr inbounds %struct.pm, %struct.pm* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @pm_checkpacket(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %24
  %31 = load %struct.pm*, %struct.pm** %2, align 8
  %32 = getelementptr inbounds %struct.pm, %struct.pm* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  store i32 %36, i32* %4, align 4
  %37 = load %struct.pm*, %struct.pm** %2, align 8
  %38 = getelementptr inbounds %struct.pm, %struct.pm* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 48
  %43 = load %struct.pm*, %struct.pm** %2, align 8
  %44 = getelementptr inbounds %struct.pm, %struct.pm* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  %50 = load %struct.pm*, %struct.pm** %2, align 8
  %51 = getelementptr inbounds %struct.pm, %struct.pm* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 256
  %56 = load %struct.pm*, %struct.pm** %2, align 8
  %57 = getelementptr inbounds %struct.pm, %struct.pm* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %55, %60
  %62 = load %struct.pm*, %struct.pm** %2, align 8
  %63 = getelementptr inbounds %struct.pm, %struct.pm* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %61, i32* %68, align 4
  %69 = load %struct.pm*, %struct.pm** %2, align 8
  %70 = getelementptr inbounds %struct.pm, %struct.pm* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 256
  %75 = load %struct.pm*, %struct.pm** %2, align 8
  %76 = getelementptr inbounds %struct.pm, %struct.pm* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %74, %79
  %81 = load %struct.pm*, %struct.pm** %2, align 8
  %82 = getelementptr inbounds %struct.pm, %struct.pm* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 %80, i32* %87, align 4
  %88 = load %struct.pm*, %struct.pm** %2, align 8
  %89 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %90 = call i32 @pm_mtevent(%struct.pm* %88, %struct.input_dev* %89)
  br label %91

91:                                               ; preds = %30, %24
  %92 = load %struct.pm*, %struct.pm** %2, align 8
  %93 = getelementptr inbounds %struct.pm, %struct.pm* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %15, %1
  ret void
}

declare dso_local i64 @pm_checkpacket(i32*) #1

declare dso_local i32 @pm_mtevent(%struct.pm*, %struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
