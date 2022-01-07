; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_apply_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_apply_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, %struct.input_dev* }
%struct.input_dev = type { i32, i32, i32, i32, i32, i32 }

@EV_CNT = common dso_local global i32 0, align 4
@KEY_CNT = common dso_local global i32 0, align 4
@REL_CNT = common dso_local global i32 0, align 4
@ABS_CNT = common dso_local global i32 0, align 4
@MSC_CNT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@psmouse_protocols = common dso_local global i32* null, align 8
@psmouse_set_rate = common dso_local global i32 0, align 4
@psmouse_set_resolution = common dso_local global i32 0, align 4
@psmouse_set_scale = common dso_local global i32 0, align 4
@psmouse_poll = common dso_local global i32 0, align 4
@psmouse_process_byte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @psmouse_apply_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_apply_defaults(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 13
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EV_CNT, align 4
  %11 = call i32 @bitmap_zero(i32 %9, i32 %10)
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KEY_CNT, align 4
  %16 = call i32 @bitmap_zero(i32 %14, i32 %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REL_CNT, align 4
  %21 = call i32 @bitmap_zero(i32 %19, i32 %20)
  %22 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ABS_CNT, align 4
  %26 = call i32 @bitmap_zero(i32 %24, i32 %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MSC_CNT, align 4
  %31 = call i32 @bitmap_zero(i32 %29, i32 %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = load i32, i32* @EV_KEY, align 4
  %34 = load i32, i32* @BTN_LEFT, align 4
  %35 = call i32 @input_set_capability(%struct.input_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %37 = load i32, i32* @EV_KEY, align 4
  %38 = load i32, i32* @BTN_RIGHT, align 4
  %39 = call i32 @input_set_capability(%struct.input_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %41 = load i32, i32* @EV_REL, align 4
  %42 = load i32, i32* @REL_X, align 4
  %43 = call i32 @input_set_capability(%struct.input_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = load i32, i32* @EV_REL, align 4
  %46 = load i32, i32* @REL_Y, align 4
  %47 = call i32 @input_set_capability(%struct.input_dev* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__set_bit(i32 %48, i32 %51)
  %53 = load i32*, i32** @psmouse_protocols, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %56 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %55, i32 0, i32 12
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* @psmouse_set_rate, align 4
  %58 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %59 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @psmouse_set_resolution, align 4
  %61 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %62 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @psmouse_set_scale, align 4
  %64 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %65 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @psmouse_poll, align 4
  %67 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %68 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @psmouse_process_byte, align 4
  %70 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %71 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %73 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %72, i32 0, i32 0
  store i32 3, i32* %73, align 8
  %74 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %75 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %74, i32 0, i32 6
  store i32* null, i32** %75, align 8
  %76 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %81 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %85 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
