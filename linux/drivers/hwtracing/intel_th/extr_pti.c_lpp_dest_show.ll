; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pti.c_lpp_dest_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pti.c_lpp_dest_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pti_device = type { i32, i32 }

@lpp_dest_str = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpp_dest_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpp_dest_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pti_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.pti_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.pti_device* %12, %struct.pti_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** @lpp_dest_str, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %55, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load %struct.pti_device*, %struct.pti_device** %7, align 8
  %21 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.pti_device*, %struct.pti_device** %7, align 8
  %28 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  br label %55

35:                                               ; preds = %19
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = load i8*, i8** %10, align 8
  %45 = load i32*, i32** @lpp_dest_str, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @scnprintf(i8* %39, i64 %43, i8* %44, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %35, %34
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %16

58:                                               ; preds = %16
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 10, i8* %66, align 1
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local %struct.pti_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
