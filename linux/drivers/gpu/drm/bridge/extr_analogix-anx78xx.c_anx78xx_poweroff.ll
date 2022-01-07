; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32, %struct.anx78xx_platform_data }
%struct.anx78xx_platform_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Failed to disable DVDD10 regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anx78xx*)* @anx78xx_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anx78xx_poweroff(%struct.anx78xx* %0) #0 {
  %2 = alloca %struct.anx78xx*, align 8
  %3 = alloca %struct.anx78xx_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %2, align 8
  %5 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %6 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %5, i32 0, i32 1
  store %struct.anx78xx_platform_data* %6, %struct.anx78xx_platform_data** %3, align 8
  %7 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %8 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_set_value_cansleep(i32 %19, i32 1)
  %21 = call i32 @usleep_range(i32 1000, i32 2000)
  %22 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %23 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpiod_set_value_cansleep(i32 %24, i32 1)
  %26 = call i32 @usleep_range(i32 1000, i32 2000)
  %27 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %28 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %16
  %32 = load %struct.anx78xx_platform_data*, %struct.anx78xx_platform_data** %3, align 8
  %33 = getelementptr inbounds %struct.anx78xx_platform_data, %struct.anx78xx_platform_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @regulator_disable(i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %46

41:                                               ; preds = %31
  %42 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %43

43:                                               ; preds = %41, %16
  %44 = load %struct.anx78xx*, %struct.anx78xx** %2, align 8
  %45 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %38, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
