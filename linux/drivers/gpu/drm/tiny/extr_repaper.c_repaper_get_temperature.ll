; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repaper_epd = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to get temperature (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repaper_epd*)* @repaper_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_get_temperature(%struct.repaper_epd* %0) #0 {
  %2 = alloca %struct.repaper_epd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.repaper_epd* %0, %struct.repaper_epd** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.repaper_epd*, %struct.repaper_epd** %2, align 8
  %7 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.repaper_epd*, %struct.repaper_epd** %2, align 8
  %13 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @thermal_zone_get_temp(i32 %14, i32* %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.repaper_epd*, %struct.repaper_epd** %2, align 8
  %20 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @DRM_DEV_ERROR(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %71

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %26, 1000
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, -10
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 170, i32* %5, align 4
  br label %62

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, -5
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 120, i32* %5, align 4
  br label %61

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 80, i32* %5, align 4
  br label %60

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 40, i32* %5, align 4
  br label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 15
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 30, i32* %5, align 4
  br label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 20
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 20, i32* %5, align 4
  br label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp sle i32 %52, 40
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 10, i32* %5, align 4
  br label %56

55:                                               ; preds = %51
  store i32 7, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %34
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.repaper_epd*, %struct.repaper_epd** %2, align 8
  %64 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = mul i32 %65, %66
  %68 = udiv i32 %67, 10
  %69 = load %struct.repaper_epd*, %struct.repaper_epd** %2, align 8
  %70 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %62, %18, %10
  ret void
}

declare dso_local i32 @thermal_zone_get_temp(i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
