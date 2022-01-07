; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_gpio_ext_get_of_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_gpio_ext_get_of_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.netxbig_gpio_ext = type { i32*, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"addr-gpios\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to count GPIOs in DT property addr-gpios\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"data-gpios\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to count GPIOs in DT property data-gpios\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"enable-gpio\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to get GPIO from DT property enable-gpio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.netxbig_gpio_ext*)* @gpio_ext_get_of_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ext_get_of_pdata(%struct.device* %0, %struct.device_node* %1, %struct.netxbig_gpio_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.netxbig_gpio_ext*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.netxbig_gpio_ext* %2, %struct.netxbig_gpio_ext** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_gpio_named_count(%struct.device_node* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %4, align 4
  br label %122

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @devm_kcalloc(%struct.device* %24, i32 %25, i32 4, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %122

33:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @of_get_named_gpio(%struct.device_node* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %122

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %7, align 8
  %58 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %7, align 8
  %61 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i32 @of_gpio_named_count(%struct.device_node* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %122

70:                                               ; preds = %55
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32* @devm_kcalloc(%struct.device* %72, i32 %73, i32 4, i32 %74)
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %122

81:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %100, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @of_get_named_gpio(%struct.device_node* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %122

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %82

103:                                              ; preds = %82
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %7, align 8
  %106 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %7, align 8
  %109 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.device_node*, %struct.device_node** %6, align 8
  %111 = call i32 @of_get_named_gpio(%struct.device_node* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %4, align 4
  br label %122

118:                                              ; preds = %103
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %7, align 8
  %121 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %114, %92, %78, %66, %44, %30, %18
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @of_gpio_named_count(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
