; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_set_max_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_set_max_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_magn_data = type { i32, i32, i32 }

@BMC150_MAGN_REG_REP_XY = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_REP_Z = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Can't set oversampling with sampling freq %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_data*, i32, i32, i32)* @bmc150_magn_set_max_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_set_max_odr(%struct.bmc150_magn_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmc150_magn_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bmc150_magn_data* %0, %struct.bmc150_magn_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %6, align 8
  %17 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BMC150_MAGN_REG_REP_XY, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %11)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %78

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @BMC150_MAGN_REGVAL_TO_REPXY(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %6, align 8
  %33 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BMC150_MAGN_REG_REP_Z, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %11)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @BMC150_MAGN_REGVAL_TO_REPZ(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %28
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %6, align 8
  %49 = call i32 @bmc150_magn_get_odr(%struct.bmc150_magn_data* %48, i32* %9)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %78

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 145, %56
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 500, %58
  %60 = add nsw i32 %57, %59
  %61 = add nsw i32 %60, 980
  %62 = sdiv i32 1000000, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %6, align 8
  %68 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %55
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %6, align 8
  %77 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %66, %52, %39, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BMC150_MAGN_REGVAL_TO_REPXY(i32) #1

declare dso_local i32 @BMC150_MAGN_REGVAL_TO_REPZ(i32) #1

declare dso_local i32 @bmc150_magn_get_odr(%struct.bmc150_magn_data*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
