; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devprop.c_devprop_gpiochip_set_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devprop.c_devprop_gpiochip_set_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { %struct.gpio_device* }
%struct.gpio_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"gpio-line-names\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to read GPIO line names\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devprop_gpiochip_set_names(%struct.gpio_chip* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.gpio_device*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %4, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 0
  %12 = load %struct.gpio_device*, %struct.gpio_device** %11, align 8
  store %struct.gpio_device* %12, %struct.gpio_device** %5, align 8
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %14 = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** null, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %72

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.gpio_device*, %struct.gpio_device** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.gpio_device*, %struct.gpio_device** %5, align 8
  %26 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8** @kcalloc(i32 %29, i32 8, i32 %30)
  store i8** %31, i8*** %6, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %72

35:                                               ; preds = %28
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.gpio_device*, %struct.gpio_device** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %43, i32 0, i32 2
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8**, i8*** %6, align 8
  %47 = call i32 @kfree(i8** %46)
  br label %72

48:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i8**, i8*** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.gpio_device*, %struct.gpio_device** %5, align 8
  %60 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* %58, i8** %65, align 8
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load i8**, i8*** %6, align 8
  %71 = call i32 @kfree(i8** %70)
  br label %72

72:                                               ; preds = %69, %42, %34, %17
  ret void
}

declare dso_local i32 @fwnode_property_read_string_array(%struct.fwnode_handle*, i8*, i8**, i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
