; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_set_calibscale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_set_calibscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.lv0104cs_private = type { i32, i32, i32 }

@lv0104cs_calibscales = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lv0104cs_private*, i32, i32)* @lv0104cs_set_calibscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv0104cs_set_calibscale(%struct.lv0104cs_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lv0104cs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lv0104cs_private* %0, %struct.lv0104cs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %15, 1000000
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %81, %3
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 1000000
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %32, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 1000000
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %47, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %25
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %14, align 4
  br label %84

69:                                               ; preds = %63, %25
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %84

80:                                               ; preds = %73, %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %19

84:                                               ; preds = %77, %67, %19
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %86)
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %119

93:                                               ; preds = %84
  %94 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %95 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %94, i32 0, i32 1
  %96 = call i32 @mutex_lock(i32* %95)
  %97 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %98 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_calibscales, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @lv0104cs_write_reg(i32 %99, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  br label %114

110:                                              ; preds = %93
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %113 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %109
  %115 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %116 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %114, %90
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lv0104cs_write_reg(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
