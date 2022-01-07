; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devres.c_devm_fwnode_get_index_gpiod_from_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devres.c_devm_fwnode_get_index_gpiod_from_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }

@devm_gpiod_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_suffixes = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @devm_fwnode_get_index_gpiod_from_child(%struct.device* %0, i8* %1, i32 %2, %struct.fwnode_handle* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fwnode_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca %struct.gpio_desc**, align 8
  %16 = alloca %struct.gpio_desc*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* @devm_gpiod_release, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.gpio_desc** @devres_alloc(i32 %18, i32 8, i32 %19)
  store %struct.gpio_desc** %20, %struct.gpio_desc*** %15, align 8
  %21 = load %struct.gpio_desc**, %struct.gpio_desc*** %15, align 8
  %22 = icmp ne %struct.gpio_desc** %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.gpio_desc* @ERR_PTR(i32 %25)
  store %struct.gpio_desc* %26, %struct.gpio_desc** %7, align 8
  br label %89

27:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %71, %27
  %29 = load i32, i32* %17, align 4
  %30 = load i8**, i8*** @gpio_suffixes, align 8
  %31 = call i32 @ARRAY_SIZE(i8** %30)
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %38 = load i8*, i8** %9, align 8
  %39 = load i8**, i8*** @gpio_suffixes, align 8
  %40 = load i32, i32* %17, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %43)
  br label %53

45:                                               ; preds = %33
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %47 = load i8**, i8*** @gpio_suffixes, align 8
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %46, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %45, %36
  %54 = load %struct.fwnode_handle*, %struct.fwnode_handle** %11, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = call %struct.gpio_desc* @fwnode_get_named_gpiod(%struct.fwnode_handle* %54, i8* %55, i32 %56, i32 %57, i8* %58)
  store %struct.gpio_desc* %59, %struct.gpio_desc** %16, align 8
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %61 = call i64 @IS_ERR(%struct.gpio_desc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %65 = call i32 @PTR_ERR(%struct.gpio_desc* %64)
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %53
  br label %74

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %28

74:                                               ; preds = %69, %28
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %76 = call i64 @IS_ERR(%struct.gpio_desc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.gpio_desc**, %struct.gpio_desc*** %15, align 8
  %80 = call i32 @devres_free(%struct.gpio_desc** %79)
  %81 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  store %struct.gpio_desc* %81, %struct.gpio_desc** %7, align 8
  br label %89

82:                                               ; preds = %74
  %83 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %84 = load %struct.gpio_desc**, %struct.gpio_desc*** %15, align 8
  store %struct.gpio_desc* %83, %struct.gpio_desc** %84, align 8
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load %struct.gpio_desc**, %struct.gpio_desc*** %15, align 8
  %87 = call i32 @devres_add(%struct.device* %85, %struct.gpio_desc** %86)
  %88 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  store %struct.gpio_desc* %88, %struct.gpio_desc** %7, align 8
  br label %89

89:                                               ; preds = %82, %78, %23
  %90 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  ret %struct.gpio_desc* %90
}

declare dso_local %struct.gpio_desc** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.gpio_desc* @fwnode_get_named_gpiod(%struct.fwnode_handle*, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @devres_free(%struct.gpio_desc**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.gpio_desc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
