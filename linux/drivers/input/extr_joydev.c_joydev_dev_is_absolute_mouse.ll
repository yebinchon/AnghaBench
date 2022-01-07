; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_dev_is_absolute_mouse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_dev_is_absolute_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@jd_scratch = common dso_local global i32 0, align 4
@KEY_CNT = common dso_local global i64 0, align 8
@ABS_CNT = common dso_local global i64 0, align 8
@EV_CNT = common dso_local global i64 0, align 8
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BUS_AMIGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @joydev_dev_is_absolute_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joydev_dev_is_absolute_mouse(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %5 = load i32, i32* @jd_scratch, align 4
  %6 = load i64, i64* @KEY_CNT, align 8
  %7 = call i32 @DECLARE_BITMAP(i32 %5, i64 %6)
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* @ABS_CNT, align 8
  %9 = load i64, i64* @KEY_CNT, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @EV_CNT, align 8
  %13 = load i64, i64* @KEY_CNT, align 8
  %14 = icmp sgt i64 %12, %13
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i32, i32* @jd_scratch, align 4
  %20 = load i64, i64* @EV_CNT, align 8
  %21 = call i32 @bitmap_zero(i32 %19, i64 %20)
  %22 = load i32, i32* @EV_ABS, align 4
  %23 = load i32, i32* @jd_scratch, align 4
  %24 = call i32 @__set_bit(i32 %22, i32 %23)
  %25 = load i32, i32* @EV_KEY, align 4
  %26 = load i32, i32* @jd_scratch, align 4
  %27 = call i32 @__set_bit(i32 %25, i32 %26)
  %28 = load i32, i32* @EV_SYN, align 4
  %29 = load i32, i32* @jd_scratch, align 4
  %30 = call i32 @__set_bit(i32 %28, i32 %29)
  %31 = load i32, i32* @jd_scratch, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @EV_CNT, align 8
  %36 = call i64 @bitmap_equal(i32 %31, i32 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* @EV_MSC, align 4
  %41 = load i32, i32* @jd_scratch, align 4
  %42 = call i32 @__set_bit(i32 %40, i32 %41)
  %43 = load i32, i32* @jd_scratch, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @EV_CNT, align 8
  %48 = call i64 @bitmap_equal(i32 %43, i32 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* @EV_REL, align 4
  %53 = load i32, i32* @jd_scratch, align 4
  %54 = call i32 @__set_bit(i32 %52, i32 %53)
  %55 = load i32, i32* @jd_scratch, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @EV_CNT, align 8
  %60 = call i64 @bitmap_equal(i32 %55, i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %115

67:                                               ; preds = %63
  %68 = load i32, i32* @jd_scratch, align 4
  %69 = load i64, i64* @ABS_CNT, align 8
  %70 = call i32 @bitmap_zero(i32 %68, i64 %69)
  %71 = load i32, i32* @ABS_X, align 4
  %72 = load i32, i32* @jd_scratch, align 4
  %73 = call i32 @__set_bit(i32 %71, i32 %72)
  %74 = load i32, i32* @ABS_Y, align 4
  %75 = load i32, i32* @jd_scratch, align 4
  %76 = call i32 @__set_bit(i32 %74, i32 %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @jd_scratch, align 4
  %81 = load i64, i64* @ABS_CNT, align 8
  %82 = call i64 @bitmap_equal(i32 %79, i32 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %115

85:                                               ; preds = %67
  %86 = load i32, i32* @jd_scratch, align 4
  %87 = load i64, i64* @KEY_CNT, align 8
  %88 = call i32 @bitmap_zero(i32 %86, i64 %87)
  %89 = load i32, i32* @BTN_LEFT, align 4
  %90 = load i32, i32* @jd_scratch, align 4
  %91 = call i32 @__set_bit(i32 %89, i32 %90)
  %92 = load i32, i32* @BTN_RIGHT, align 4
  %93 = load i32, i32* @jd_scratch, align 4
  %94 = call i32 @__set_bit(i32 %92, i32 %93)
  %95 = load i32, i32* @BTN_MIDDLE, align 4
  %96 = load i32, i32* @jd_scratch, align 4
  %97 = call i32 @__set_bit(i32 %95, i32 %96)
  %98 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @jd_scratch, align 4
  %102 = load i64, i64* @KEY_CNT, align 8
  %103 = call i64 @bitmap_equal(i32 %100, i32 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %115

106:                                              ; preds = %85
  %107 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BUS_AMIGA, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %115

114:                                              ; preds = %106
  store i32 1, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %113, %105, %84, %66
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @DECLARE_BITMAP(i32, i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @bitmap_equal(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
