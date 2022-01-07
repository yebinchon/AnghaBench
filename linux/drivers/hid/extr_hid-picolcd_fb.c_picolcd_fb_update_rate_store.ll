; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update_rate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update_rate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.picolcd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.picolcd_fb_data* }
%struct.TYPE_3__ = type { i32 }
%struct.picolcd_fb_data = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@PICOLCDFB_UPDATE_RATE_LIMIT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@PICOLCDFB_UPDATE_RATE_DEFAULT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @picolcd_fb_update_rate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @picolcd_fb_update_rate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.picolcd_data*, align 8
  %11 = alloca %struct.picolcd_fb_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.picolcd_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.picolcd_data* %15, %struct.picolcd_data** %10, align 8
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %17 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %19, align 8
  store %struct.picolcd_fb_data* %20, %struct.picolcd_fb_data** %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %66

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %66

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @PICOLCDFB_UPDATE_RATE_LIMIT, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* @ERANGE, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %66

44:                                               ; preds = %37
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @PICOLCDFB_UPDATE_RATE_DEFAULT, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %11, align 8
  %53 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @HZ, align 4
  %55 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %11, align 8
  %56 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = udiv i32 %54, %57
  %59 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %60 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 4
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %50, %41, %34, %26
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.picolcd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
