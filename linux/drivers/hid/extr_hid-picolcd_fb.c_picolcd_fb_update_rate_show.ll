; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update_rate_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update_rate_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.picolcd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.picolcd_fb_data* }
%struct.picolcd_fb_data = type { i32 }

@PICOLCDFB_UPDATE_RATE_LIMIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%u] \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @picolcd_fb_update_rate_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @picolcd_fb_update_rate_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.picolcd_data*, align 8
  %8 = alloca %struct.picolcd_fb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.picolcd_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.picolcd_data* %13, %struct.picolcd_data** %7, align 8
  %14 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %15 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %17, align 8
  store %struct.picolcd_fb_data* %18, %struct.picolcd_fb_data** %8, align 8
  %19 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %8, align 8
  %20 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %59, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PICOLCDFB_UPDATE_RATE_LIMIT, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %62

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @snprintf(i8* %38, i64 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %11, align 8
  br label %57

46:                                               ; preds = %31
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @snprintf(i8* %49, i64 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %46, %35
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %22

62:                                               ; preds = %30, %22
  %63 = load i64, i64* %11, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = call i32 @min(i64 %67, i64 %68)
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8 10, i8* %72, align 1
  br label %73

73:                                               ; preds = %65, %62
  %74 = load i64, i64* %11, align 8
  ret i64 %74
}

declare dso_local %struct.picolcd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
