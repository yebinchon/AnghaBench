; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@BANK_3 = common dso_local global i32 0, align 4
@FANCTL1_OUT_REG = common dso_local global i32 0, align 4
@FANCTL1_FMR_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @nct7904_write_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_write_pwm(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.nct7904_data* %13, %struct.nct7904_data** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %75 [
    i32 128, label %15
    i32 129, label %33
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = icmp sgt i64 %19, 255
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %18
  %25 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %26 = load i32, i32* @BANK_3, align 4
  %27 = load i32, i32* @FANCTL1_OUT_REG, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @nct7904_write_reg(%struct.nct7904_data* %25, i32 %26, i32 %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %4
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %34, 1
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %37, 2
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %40, 2
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %44 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42, %36, %33
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %78

54:                                               ; preds = %42, %39
  %55 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %56 = load i32, i32* @BANK_3, align 4
  %57 = load i32, i32* @FANCTL1_FMR_REG, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %60, 2
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %64 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  br label %71

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %62
  %72 = phi i64 [ %69, %62 ], [ 0, %70 ]
  %73 = call i32 @nct7904_write_reg(%struct.nct7904_data* %55, i32 %56, i32 %59, i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %4
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %71, %51, %24, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nct7904_write_reg(%struct.nct7904_data*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
