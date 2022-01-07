; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_setup_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_setup_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.input_dev*, i32)* @hgpk_setup_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_setup_input_device(%struct.input_dev* %0, %struct.input_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %8 = icmp ne %struct.input_dev* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %9, %3
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memset(i32 %39, i32 0, i32 4)
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memset(i32 %43, i32 0, i32 4)
  %45 = load i32, i32* @EV_KEY, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__set_bit(i32 %45, i32 %48)
  %50 = load i32, i32* @BTN_LEFT, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__set_bit(i32 %50, i32 %53)
  %55 = load i32, i32* @BTN_RIGHT, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__set_bit(i32 %55, i32 %58)
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %136 [
    i32 129, label %61
    i32 130, label %77
    i32 128, label %108
  ]

61:                                               ; preds = %32
  %62 = load i32, i32* @EV_REL, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  %67 = load i32, i32* @REL_X, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @__set_bit(i32 %67, i32 %70)
  %72 = load i32, i32* @REL_Y, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__set_bit(i32 %72, i32 %75)
  br label %138

77:                                               ; preds = %32
  %78 = load i32, i32* @BTN_TOUCH, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__set_bit(i32 %78, i32 %81)
  %83 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__set_bit(i32 %83, i32 %86)
  %88 = load i32, i32* @EV_ABS, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @__set_bit(i32 %88, i32 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %94 = load i32, i32* @ABS_PRESSURE, align 4
  %95 = call i32 @input_set_abs_params(%struct.input_dev* %93, i32 %94, i32 0, i32 15, i32 0, i32 0)
  %96 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %97 = load i32, i32* @ABS_X, align 4
  %98 = call i32 @input_set_abs_params(%struct.input_dev* %96, i32 %97, i32 0, i32 399, i32 0, i32 0)
  %99 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %100 = load i32, i32* @ABS_Y, align 4
  %101 = call i32 @input_set_abs_params(%struct.input_dev* %99, i32 %100, i32 0, i32 290, i32 0, i32 0)
  %102 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %103 = load i32, i32* @ABS_X, align 4
  %104 = call i32 @input_abs_set_res(%struct.input_dev* %102, i32 %103, i32 8)
  %105 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %106 = load i32, i32* @ABS_Y, align 4
  %107 = call i32 @input_abs_set_res(%struct.input_dev* %105, i32 %106, i32 8)
  br label %138

108:                                              ; preds = %32
  %109 = load i32, i32* @BTN_TOUCH, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @__set_bit(i32 %109, i32 %112)
  %114 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @__set_bit(i32 %114, i32 %117)
  %119 = load i32, i32* @EV_ABS, align 4
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @__set_bit(i32 %119, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %125 = load i32, i32* @ABS_X, align 4
  %126 = call i32 @input_set_abs_params(%struct.input_dev* %124, i32 %125, i32 0, i32 999, i32 0, i32 0)
  %127 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %128 = load i32, i32* @ABS_Y, align 4
  %129 = call i32 @input_set_abs_params(%struct.input_dev* %127, i32 %128, i32 5, i32 239, i32 0, i32 0)
  %130 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %131 = load i32, i32* @ABS_X, align 4
  %132 = call i32 @input_abs_set_res(%struct.input_dev* %130, i32 %131, i32 6)
  %133 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %134 = load i32, i32* @ABS_Y, align 4
  %135 = call i32 @input_abs_set_res(%struct.input_dev* %133, i32 %134, i32 8)
  br label %138

136:                                              ; preds = %32
  %137 = call i32 (...) @BUG()
  br label %138

138:                                              ; preds = %136, %108, %77, %61
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
