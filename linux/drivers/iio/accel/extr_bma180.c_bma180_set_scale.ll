; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma180_data = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to set scale\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma180_data*, i32)* @bma180_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_set_scale(%struct.bma180_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bma180_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bma180_data* %0, %struct.bma180_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %9 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %64, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %19 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %16
  %25 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %26 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %24
  %37 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %38 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %39 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %44 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @bma180_set_bits(%struct.bma180_data* %37, i32 %42, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %36
  %53 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %54 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %70

59:                                               ; preds = %36
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.bma180_data*, %struct.bma180_data** %4, align 8
  %62 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %16

67:                                               ; preds = %16
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %59, %52, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @bma180_set_bits(%struct.bma180_data*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
