; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_register_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_register_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.input_dev*, %struct.input_dev*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @wacom_register_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_register_inputs(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.wacom_wac*, align 8
  %8 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %9 = load %struct.wacom*, %struct.wacom** %3, align 8
  %10 = getelementptr inbounds %struct.wacom, %struct.wacom* %9, i32 0, i32 0
  store %struct.wacom_wac* %10, %struct.wacom_wac** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 0
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %4, align 8
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 1
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 2
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %6, align 8
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = icmp ne %struct.input_dev* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %94

31:                                               ; preds = %25
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %34 = call i32 @wacom_setup_pen_input_capabilities(%struct.input_dev* %32, %struct.wacom_wac* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %39 = call i32 @input_free_device(%struct.input_dev* %38)
  %40 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %41 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %40, i32 0, i32 0
  store %struct.input_dev* null, %struct.input_dev** %41, align 8
  store %struct.input_dev* null, %struct.input_dev** %4, align 8
  br label %49

42:                                               ; preds = %31
  %43 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %44 = call i32 @input_register_device(%struct.input_dev* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %86

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %51 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %52 = call i32 @wacom_setup_touch_input_capabilities(%struct.input_dev* %50, %struct.wacom_wac* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = call i32 @input_free_device(%struct.input_dev* %56)
  %58 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %59 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %58, i32 0, i32 1
  store %struct.input_dev* null, %struct.input_dev** %59, align 8
  store %struct.input_dev* null, %struct.input_dev** %5, align 8
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = call i32 @input_register_device(%struct.input_dev* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %86

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %69 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %70 = call i32 @wacom_setup_pad_input_capabilities(%struct.input_dev* %68, %struct.wacom_wac* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = call i32 @input_free_device(%struct.input_dev* %74)
  %76 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %77 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %76, i32 0, i32 2
  store %struct.input_dev* null, %struct.input_dev** %77, align 8
  store %struct.input_dev* null, %struct.input_dev** %6, align 8
  br label %85

78:                                               ; preds = %67
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = call i32 @input_register_device(%struct.input_dev* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %86

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %73
  store i32 0, i32* %2, align 4
  br label %94

86:                                               ; preds = %83, %65, %47
  %87 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %88 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %87, i32 0, i32 2
  store %struct.input_dev* null, %struct.input_dev** %88, align 8
  %89 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %90 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %89, i32 0, i32 1
  store %struct.input_dev* null, %struct.input_dev** %90, align 8
  %91 = load %struct.wacom_wac*, %struct.wacom_wac** %7, align 8
  %92 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %91, i32 0, i32 0
  store %struct.input_dev* null, %struct.input_dev** %92, align 8
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %85, %28
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @wacom_setup_pen_input_capabilities(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @wacom_setup_touch_input_capabilities(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @wacom_setup_pad_input_capabilities(%struct.input_dev*, %struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
