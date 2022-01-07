; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_get_prox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_get_prox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tsl2772_chip = type { i32, i32, i32 }

@TSL2772_STA_ADC_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TSL2772_STA_PRX_VALID = common dso_local global i32 0, align 4
@TSL2772_PRX_LO = common dso_local global i32 0, align 4
@TSL2772_PRX_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tsl2772_get_prox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_get_prox(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.tsl2772_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %5)
  store %struct.tsl2772_chip* %6, %struct.tsl2772_chip** %3, align 8
  %7 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %11 = call i32 @tsl2772_read_status(%struct.tsl2772_chip* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %17 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %37 [
    i32 133, label %19
    i32 131, label %19
    i32 137, label %19
    i32 129, label %19
    i32 135, label %19
    i32 132, label %28
    i32 130, label %28
    i32 136, label %28
    i32 128, label %28
    i32 134, label %28
    i32 138, label %28
  ]

19:                                               ; preds = %15, %15, %15, %15, %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TSL2772_STA_ADC_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %19
  br label %37

28:                                               ; preds = %15, %15, %15, %15, %15, %15
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TSL2772_STA_PRX_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %15, %36, %27
  %38 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %39 = load i32, i32* @TSL2772_PRX_LO, align 4
  %40 = load i32, i32* @TSL2772_PRX_HI, align 4
  %41 = call i32 @tsl2772_read_autoinc_regs(%struct.tsl2772_chip* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %48 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %44, %33, %24, %14
  %50 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %51 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tsl2772_read_status(%struct.tsl2772_chip*) #1

declare dso_local i32 @tsl2772_read_autoinc_regs(%struct.tsl2772_chip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
