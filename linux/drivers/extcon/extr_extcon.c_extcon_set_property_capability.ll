; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_set_property_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_set_property_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { %struct.extcon_cable* }
%struct.extcon_cable = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_MIN = common dso_local global i32 0, align 4
@EXTCON_PROP_CHG_MIN = common dso_local global i32 0, align 4
@EXTCON_PROP_JACK_MIN = common dso_local global i32 0, align 4
@EXTCON_PROP_DISP_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extcon_set_property_capability(%struct.extcon_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.extcon_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.extcon_cable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.extcon_dev* %0, %struct.extcon_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %13 = icmp ne %struct.extcon_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @is_extcon_property_supported(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @find_cable_index_by_id(%struct.extcon_dev* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %85

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @get_extcon_type(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %85

40:                                               ; preds = %33
  %41 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %42 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %41, i32 0, i32 0
  %43 = load %struct.extcon_cable*, %struct.extcon_cable** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %43, i64 %45
  store %struct.extcon_cable* %46, %struct.extcon_cable** %8, align 8
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %80 [
    i32 128, label %48
    i32 131, label %56
    i32 129, label %64
    i32 130, label %72
  ]

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @EXTCON_PROP_USB_MIN, align 4
  %51 = sub i32 %49, %50
  %52 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %53 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__set_bit(i32 %51, i32 %54)
  br label %83

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @EXTCON_PROP_CHG_MIN, align 4
  %59 = sub i32 %57, %58
  %60 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %61 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__set_bit(i32 %59, i32 %62)
  br label %83

64:                                               ; preds = %40
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @EXTCON_PROP_JACK_MIN, align 4
  %67 = sub i32 %65, %66
  %68 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %69 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @__set_bit(i32 %67, i32 %70)
  br label %83

72:                                               ; preds = %40
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @EXTCON_PROP_DISP_MIN, align 4
  %75 = sub i32 %73, %74
  %76 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %77 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  br label %83

80:                                               ; preds = %40
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %72, %64, %56, %48
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %38, %31, %22, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @is_extcon_property_supported(i32, i32) #1

declare dso_local i32 @find_cable_index_by_id(%struct.extcon_dev*, i32) #1

declare dso_local i32 @get_extcon_type(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
