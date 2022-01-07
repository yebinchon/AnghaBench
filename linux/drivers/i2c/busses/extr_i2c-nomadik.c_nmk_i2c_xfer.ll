; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.nmk_i2c_dev = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @nmk_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nmk_i2c_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.nmk_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.nmk_i2c_dev* %13, %struct.nmk_i2c_dev** %10, align 8
  %14 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %15 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_get_sync(i32* %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %87, %3
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %90

22:                                               ; preds = %19
  %23 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %24 = call i32 @setup_i2c_controller(%struct.nmk_i2c_dev* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %79, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %25
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 %32
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %37 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %41
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %46 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %55 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 1
  %63 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %64 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %66 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @nmk_i2c_xfer_one(%struct.nmk_i2c_dev* %67, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %29
  br label %82

78:                                               ; preds = %29
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %25

82:                                               ; preds = %77, %25
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %90

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %19

90:                                               ; preds = %85, %19
  %91 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %10, align 8
  %92 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_put_sync(i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.nmk_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @setup_i2c_controller(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @nmk_i2c_xfer_one(%struct.nmk_i2c_dev*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
