; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_beep_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_beep_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6683_data = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@NCT6683_LD_HWM = common dso_local global i32 0, align 4
@NCT6683_REG_CR_BEEP = common dso_local global i32 0, align 4
@NCT6683_CR_BEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @beep_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @beep_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6683_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.nct6683_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.nct6683_data* %15, %struct.nct6683_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtoul(i8* %16, i32 10, i64* %11)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %79

28:                                               ; preds = %22, %19
  %29 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %30 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %33 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @superio_enter(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  br label %74

41:                                               ; preds = %28
  %42 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %43 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NCT6683_LD_HWM, align 4
  %46 = call i32 @superio_select(i32 %44, i32 %45)
  %47 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %48 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NCT6683_REG_CR_BEEP, align 4
  %51 = call i32 @superio_inb(i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load i32, i32* @NCT6683_CR_BEEP_MASK, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %63

58:                                               ; preds = %41
  %59 = load i32, i32* @NCT6683_CR_BEEP_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %65 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NCT6683_REG_CR_BEEP, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @superio_outb(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %71 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @superio_exit(i32 %72)
  br label %74

74:                                               ; preds = %63, %38
  %75 = load %struct.nct6683_data*, %struct.nct6683_data** %10, align 8
  %76 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %74, %25
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local %struct.nct6683_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @superio_outb(i32, i32, i32) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
