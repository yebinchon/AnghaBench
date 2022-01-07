; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mockup.c_gpio_mockup_debugfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mockup.c_gpio_mockup_debugfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_mockup_chip = type { i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.gpio_mockup_dbgfs_private = type { i32, i32*, %struct.gpio_mockup_chip* }

@gpio_mockup_dbg_dir = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@gpio_mockup_debugfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.gpio_mockup_chip*)* @gpio_mockup_debugfs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_mockup_debugfs_setup(%struct.device* %0, %struct.gpio_mockup_chip* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gpio_mockup_chip*, align 8
  %5 = alloca %struct.gpio_mockup_dbgfs_private*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.gpio_mockup_chip* %1, %struct.gpio_mockup_chip** %4, align 8
  %10 = load %struct.gpio_mockup_chip*, %struct.gpio_mockup_chip** %4, align 8
  %11 = getelementptr inbounds %struct.gpio_mockup_chip, %struct.gpio_mockup_chip* %10, i32 0, i32 1
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i8* @dev_name(i32* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @gpio_mockup_dbg_dir, align 4
  %19 = call i32 @debugfs_create_dir(i8* %17, i32 %18)
  %20 = load %struct.gpio_mockup_chip*, %struct.gpio_mockup_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_mockup_chip, %struct.gpio_mockup_chip* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %66, %2
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @devm_kasprintf(%struct.device* %29, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %70

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.gpio_mockup_dbgfs_private* @devm_kzalloc(%struct.device* %37, i32 24, i32 %38)
  store %struct.gpio_mockup_dbgfs_private* %39, %struct.gpio_mockup_dbgfs_private** %5, align 8
  %40 = load %struct.gpio_mockup_dbgfs_private*, %struct.gpio_mockup_dbgfs_private** %5, align 8
  %41 = icmp ne %struct.gpio_mockup_dbgfs_private* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %70

43:                                               ; preds = %36
  %44 = load %struct.gpio_mockup_chip*, %struct.gpio_mockup_chip** %4, align 8
  %45 = load %struct.gpio_mockup_dbgfs_private*, %struct.gpio_mockup_dbgfs_private** %5, align 8
  %46 = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, %struct.gpio_mockup_dbgfs_private* %45, i32 0, i32 2
  store %struct.gpio_mockup_chip* %44, %struct.gpio_mockup_chip** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.gpio_mockup_dbgfs_private*, %struct.gpio_mockup_dbgfs_private** %5, align 8
  %49 = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, %struct.gpio_mockup_dbgfs_private* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.gpio_mockup_dbgfs_private*, %struct.gpio_mockup_dbgfs_private** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, %struct.gpio_mockup_dbgfs_private* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.gpio_mockup_chip*, %struct.gpio_mockup_chip** %4, align 8
  %62 = getelementptr inbounds %struct.gpio_mockup_chip, %struct.gpio_mockup_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.gpio_mockup_dbgfs_private*, %struct.gpio_mockup_dbgfs_private** %5, align 8
  %65 = call i32 @debugfs_create_file(i8* %60, i32 128, i32 %63, %struct.gpio_mockup_dbgfs_private* %64, i32* @gpio_mockup_debugfs_ops)
  br label %66

66:                                               ; preds = %43
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %22

69:                                               ; preds = %22
  br label %70

70:                                               ; preds = %69, %42, %35
  ret void
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local %struct.gpio_mockup_dbgfs_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.gpio_mockup_dbgfs_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
