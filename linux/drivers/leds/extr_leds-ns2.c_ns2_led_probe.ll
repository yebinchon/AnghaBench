; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_ns2_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_ns2_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ns2_led_platform_data = type { i32, i32* }
%struct.ns2_led_priv = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ns2_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ns2_led_platform_data*, align 8
  %5 = alloca %struct.ns2_led_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.ns2_led_platform_data* @dev_get_platdata(i32* %9)
  store %struct.ns2_led_platform_data* %10, %struct.ns2_led_platform_data** %4, align 8
  %11 = load %struct.ns2_led_platform_data*, %struct.ns2_led_platform_data** %4, align 8
  %12 = icmp ne %struct.ns2_led_platform_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %87

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.ns2_led_platform_data*, %struct.ns2_led_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.ns2_led_platform_data, %struct.ns2_led_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sizeof_ns2_led_priv(i32 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(i32* %18, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.ns2_led_priv*
  store %struct.ns2_led_priv* %25, %struct.ns2_led_priv** %5, align 8
  %26 = load %struct.ns2_led_priv*, %struct.ns2_led_priv** %5, align 8
  %27 = icmp ne %struct.ns2_led_priv* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %87

31:                                               ; preds = %16
  %32 = load %struct.ns2_led_platform_data*, %struct.ns2_led_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.ns2_led_platform_data, %struct.ns2_led_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ns2_led_priv*, %struct.ns2_led_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ns2_led_priv, %struct.ns2_led_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %80, %31
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ns2_led_priv*, %struct.ns2_led_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ns2_led_priv, %struct.ns2_led_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %37
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.ns2_led_priv*, %struct.ns2_led_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ns2_led_priv, %struct.ns2_led_priv* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.ns2_led_platform_data*, %struct.ns2_led_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.ns2_led_platform_data, %struct.ns2_led_platform_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @create_ns2_led(%struct.platform_device* %44, i32* %50, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %43
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %74, %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.ns2_led_priv*, %struct.ns2_led_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ns2_led_priv, %struct.ns2_led_priv* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @delete_ns2_led(i32* %72)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %63

77:                                               ; preds = %63
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %87

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %37

83:                                               ; preds = %37
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.ns2_led_priv*, %struct.ns2_led_priv** %5, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.ns2_led_priv* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %77, %28, %13
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ns2_led_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sizeof_ns2_led_priv(i32) #1

declare dso_local i32 @create_ns2_led(%struct.platform_device*, i32*, i32*) #1

declare dso_local i32 @delete_ns2_led(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ns2_led_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
