; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-ptn5150.c_ptn5150_init_dev_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-ptn5150.c_ptn5150_init_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptn5150_info = type { i32, i32 }

@PTN5150_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read DEVICE_ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PTN5150_REG_DEVICE_ID_VENDOR_MASK = common dso_local global i32 0, align 4
@PTN5150_REG_DEVICE_ID_VENDOR_SHIFT = common dso_local global i32 0, align 4
@PTN5150_REG_DEVICE_ID_VERSION_MASK = common dso_local global i32 0, align 4
@PTN5150_REG_DEVICE_ID_VERSION_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Device type: version: 0x%x, vendor: 0x%x\0A\00", align 1
@PTN5150_REG_INT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to read PTN5150_REG_INT_STATUS %d\0A\00", align 1
@PTN5150_REG_INT_REG_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to read PTN5150_REG_INT_REG_STATUS %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptn5150_info*)* @ptn5150_init_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptn5150_init_dev_type(%struct.ptn5150_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptn5150_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ptn5150_info* %0, %struct.ptn5150_info** %3, align 8
  %8 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %9 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PTN5150_REG_DEVICE_ID, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %17 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PTN5150_REG_DEVICE_ID_VENDOR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PTN5150_REG_DEVICE_ID_VENDOR_SHIFT, align 4
  %28 = lshr i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PTN5150_REG_DEVICE_ID_VERSION_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @PTN5150_REG_DEVICE_ID_VERSION_SHIFT, align 4
  %33 = lshr i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %35 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %41 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PTN5150_REG_INT_STATUS, align 4
  %44 = call i32 @regmap_read(i32 %42, i32 %43, i32* %4)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %23
  %48 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %49 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %23
  %56 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %57 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PTN5150_REG_INT_REG_STATUS, align 4
  %60 = call i32 @regmap_read(i32 %58, i32 %59, i32* %4)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.ptn5150_info*, %struct.ptn5150_info** %3, align 8
  %65 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %63, %47, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
