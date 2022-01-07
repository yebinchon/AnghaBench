; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_m560_populate_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_m560_populate_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.input_dev = type { i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_WHEEL_HI_RES = common dso_local global i32 0, align 4
@REL_HWHEEL_HI_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*, %struct.input_dev*)* @m560_populate_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m560_populate_input(%struct.hidpp_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %5 = load i32, i32* @EV_KEY, align 4
  %6 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__set_bit(i32 %5, i32 %8)
  %10 = load i32, i32* @BTN_MIDDLE, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__set_bit(i32 %10, i32 %13)
  %15 = load i32, i32* @BTN_RIGHT, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__set_bit(i32 %15, i32 %18)
  %20 = load i32, i32* @BTN_LEFT, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__set_bit(i32 %20, i32 %23)
  %25 = load i32, i32* @BTN_BACK, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__set_bit(i32 %25, i32 %28)
  %30 = load i32, i32* @BTN_FORWARD, align 4
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__set_bit(i32 %30, i32 %33)
  %35 = load i32, i32* @EV_REL, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__set_bit(i32 %35, i32 %38)
  %40 = load i32, i32* @REL_X, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__set_bit(i32 %40, i32 %43)
  %45 = load i32, i32* @REL_Y, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__set_bit(i32 %45, i32 %48)
  %50 = load i32, i32* @REL_WHEEL, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__set_bit(i32 %50, i32 %53)
  %55 = load i32, i32* @REL_HWHEEL, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__set_bit(i32 %55, i32 %58)
  %60 = load i32, i32* @REL_WHEEL_HI_RES, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__set_bit(i32 %60, i32 %63)
  %65 = load i32, i32* @REL_HWHEEL_HI_RES, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__set_bit(i32 %65, i32 %68)
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
