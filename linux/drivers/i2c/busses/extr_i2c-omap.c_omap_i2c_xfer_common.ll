; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_xfer_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_xfer_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.omap_i2c_dev = type { i32, i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32)* @omap_i2c_xfer_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_xfer_common(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_i2c_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.omap_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.omap_i2c_dev* %13, %struct.omap_i2c_dev** %9, align 8
  %14 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %15 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %95

21:                                               ; preds = %4
  %22 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %23 = call i32 @omap_i2c_wait_for_bb_valid(%struct.omap_i2c_dev* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %95

27:                                               ; preds = %21
  %28 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %29 = call i32 @omap_i2c_wait_for_bb(%struct.omap_i2c_dev* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %95

33:                                               ; preds = %27
  %34 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %35 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %34, i32 0, i32 2
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = icmp ne i32 (i32, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %40 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %39, i32 0, i32 2
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %43 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %46 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %33
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @omap_i2c_xfer_msg(%struct.i2c_adapter* %55, %struct.i2c_msg* %59, i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %74

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %50

74:                                               ; preds = %69, %50
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %81 = call i32 @omap_i2c_wait_for_bb(%struct.omap_i2c_dev* %80)
  %82 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %83 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %82, i32 0, i32 2
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = icmp ne i32 (i32, i32)* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %88 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %87, i32 0, i32 2
  %89 = load i32 (i32, i32)*, i32 (i32, i32)** %88, align 8
  %90 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %91 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %89(i32 %92, i32 -1)
  br label %94

94:                                               ; preds = %86, %79
  br label %95

95:                                               ; preds = %94, %32, %26, %20
  %96 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %97 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pm_runtime_mark_last_busy(i32 %98)
  %100 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %9, align 8
  %101 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pm_runtime_put_autosuspend(i32 %102)
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.omap_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @omap_i2c_wait_for_bb_valid(%struct.omap_i2c_dev*) #1

declare dso_local i32 @omap_i2c_wait_for_bb(%struct.omap_i2c_dev*) #1

declare dso_local i32 @omap_i2c_xfer_msg(%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
