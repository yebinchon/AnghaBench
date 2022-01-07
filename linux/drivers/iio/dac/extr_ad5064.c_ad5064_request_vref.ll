; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_request_vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_request_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5064_state = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AD5064_CONFIG_INT_VREF_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to enable internal vref: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5064_state*, %struct.device*)* @ad5064_request_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5064_request_vref(%struct.ad5064_state* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5064_state*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad5064_state* %0, %struct.ad5064_state** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %11 = call i32 @ad5064_num_vref(%struct.ad5064_state* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ad5064_vref_name(%struct.ad5064_state* %14, i32 %15)
  %17 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %16, i32* %23, align 4
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %29 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %37 = call i32 @ad5064_num_vref(%struct.ad5064_state* %36)
  %38 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %39 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @devm_regulator_bulk_get(%struct.device* %35, i32 %37, %struct.TYPE_4__* %40)
  store i32 %41, i32* %3, align 4
  br label %87

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @devm_regulator_get_optional(%struct.device* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %46 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %51 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IS_ERR(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %87

59:                                               ; preds = %42
  %60 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %61 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %59
  %74 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %75 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.ad5064_state*, %struct.ad5064_state** %4, align 8
  %77 = load i32, i32* @AD5064_CONFIG_INT_VREF_ENABLE, align 4
  %78 = call i32 @ad5064_set_config(%struct.ad5064_state* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %73
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %71, %58, %34
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ad5064_num_vref(%struct.ad5064_state*) #1

declare dso_local i32 @ad5064_vref_name(%struct.ad5064_state*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ad5064_set_config(%struct.ad5064_state*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
