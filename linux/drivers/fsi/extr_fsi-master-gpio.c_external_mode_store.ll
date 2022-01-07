; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_external_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_external_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fsi_master_gpio = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @external_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @external_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsi_master_gpio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fsi_master_gpio* @dev_get_drvdata(%struct.device* %14)
  store %struct.fsi_master_gpio* %15, %struct.fsi_master_gpio** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %11)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %65

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %29 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %33 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %38 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %22
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %45 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %47 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %52 = call i32 @fsi_master_gpio_init_external(%struct.fsi_master_gpio* %51)
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %55 = call i32 @fsi_master_gpio_init(%struct.fsi_master_gpio* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %58 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %10, align 8
  %61 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %60, i32 0, i32 1
  %62 = call i32 @fsi_master_rescan(i32* %61)
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %56, %36, %20
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.fsi_master_gpio* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fsi_master_gpio_init_external(%struct.fsi_master_gpio*) #1

declare dso_local i32 @fsi_master_gpio_init(%struct.fsi_master_gpio*) #1

declare dso_local i32 @fsi_master_rescan(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
