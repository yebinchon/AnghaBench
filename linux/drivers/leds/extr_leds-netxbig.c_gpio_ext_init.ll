; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_gpio_ext_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_gpio_ext_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.netxbig_gpio_ext = type { i32, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GPIO extension addr\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GPIO extension data\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GPIO extension enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.netxbig_gpio_ext*)* @gpio_ext_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ext_init(%struct.platform_device* %0, %struct.netxbig_gpio_ext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.netxbig_gpio_ext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.netxbig_gpio_ext* %1, %struct.netxbig_gpio_ext** %5, align 8
  %8 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %5, align 8
  %9 = icmp ne %struct.netxbig_gpio_ext* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %5, align 8
  %21 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %5, align 8
  %28 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %35 = call i32 @devm_gpio_request_one(i32* %26, i32 %33, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %18

44:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %5, align 8
  %48 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %5, align 8
  %55 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %62 = call i32 @devm_gpio_request_one(i32* %53, i32 %60, i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %84

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %5, align 8
  %75 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %78 = call i32 @devm_gpio_request_one(i32* %73, i32 %76, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %81, %65, %38, %14
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
