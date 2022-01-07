; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_is_extcon_property_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_is_extcon_property_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { %struct.extcon_cable* }
%struct.extcon_cable = type { i32, i32, i32, i32 }

@EXTCON_PROP_USB_MIN = common dso_local global i32 0, align 4
@EXTCON_PROP_CHG_MIN = common dso_local global i32 0, align 4
@EXTCON_PROP_JACK_MIN = common dso_local global i32 0, align 4
@EXTCON_PROP_DISP_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extcon_dev*, i32, i32, i32)* @is_extcon_property_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_extcon_property_capability(%struct.extcon_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extcon_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extcon_cable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.extcon_dev* %0, %struct.extcon_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @get_extcon_type(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %21 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %20, i32 0, i32 0
  %22 = load %struct.extcon_cable*, %struct.extcon_cable** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %22, i64 %24
  store %struct.extcon_cable* %25, %struct.extcon_cable** %10, align 8
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %59 [
    i32 128, label %27
    i32 131, label %35
    i32 129, label %43
    i32 130, label %51
  ]

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @EXTCON_PROP_USB_MIN, align 4
  %30 = sub i32 %28, %29
  %31 = load %struct.extcon_cable*, %struct.extcon_cable** %10, align 8
  %32 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @test_bit(i32 %30, i32 %33)
  store i32 %34, i32* %12, align 4
  br label %62

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EXTCON_PROP_CHG_MIN, align 4
  %38 = sub i32 %36, %37
  %39 = load %struct.extcon_cable*, %struct.extcon_cable** %10, align 8
  %40 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @test_bit(i32 %38, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %62

43:                                               ; preds = %19
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @EXTCON_PROP_JACK_MIN, align 4
  %46 = sub i32 %44, %45
  %47 = load %struct.extcon_cable*, %struct.extcon_cable** %10, align 8
  %48 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @test_bit(i32 %46, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %62

51:                                               ; preds = %19
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @EXTCON_PROP_DISP_MIN, align 4
  %54 = sub i32 %52, %53
  %55 = load %struct.extcon_cable*, %struct.extcon_cable** %10, align 8
  %56 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @test_bit(i32 %54, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %62

59:                                               ; preds = %19
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %51, %43, %35, %27
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @get_extcon_type(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
