; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_accel_data = type { i32, %struct.bmc150_accel_interrupt* }
%struct.bmc150_accel_interrupt = type { i32, %struct.bmc150_accel_interrupt_info* }
%struct.bmc150_accel_interrupt_info = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error updating reg_int_map\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Error updating reg_int_en\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*, i32, i32)* @bmc150_accel_set_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_set_interrupt(%struct.bmc150_accel_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_accel_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.bmc150_accel_interrupt*, align 8
  %10 = alloca %struct.bmc150_accel_interrupt_info*, align 8
  %11 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %13 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %17 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %16, i32 0, i32 1
  %18 = load %struct.bmc150_accel_interrupt*, %struct.bmc150_accel_interrupt** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bmc150_accel_interrupt, %struct.bmc150_accel_interrupt* %18, i64 %20
  store %struct.bmc150_accel_interrupt* %21, %struct.bmc150_accel_interrupt** %9, align 8
  %22 = load %struct.bmc150_accel_interrupt*, %struct.bmc150_accel_interrupt** %9, align 8
  %23 = getelementptr inbounds %struct.bmc150_accel_interrupt, %struct.bmc150_accel_interrupt* %22, i32 0, i32 1
  %24 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %23, align 8
  store %struct.bmc150_accel_interrupt_info* %24, %struct.bmc150_accel_interrupt_info** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.bmc150_accel_interrupt*, %struct.bmc150_accel_interrupt** %9, align 8
  %29 = getelementptr inbounds %struct.bmc150_accel_interrupt, %struct.bmc150_accel_interrupt* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc_return(i32* %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %104

33:                                               ; preds = %27
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.bmc150_accel_interrupt*, %struct.bmc150_accel_interrupt** %9, align 8
  %36 = getelementptr inbounds %struct.bmc150_accel_interrupt, %struct.bmc150_accel_interrupt* %35, i32 0, i32 0
  %37 = call i64 @atomic_dec_return(i32* %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %104

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %104

49:                                               ; preds = %41
  %50 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %51 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %10, align 8
  %54 = getelementptr inbounds %struct.bmc150_accel_interrupt_info, %struct.bmc150_accel_interrupt_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %10, align 8
  %57 = getelementptr inbounds %struct.bmc150_accel_interrupt_info, %struct.bmc150_accel_interrupt_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %10, align 8
  %63 = getelementptr inbounds %struct.bmc150_accel_interrupt_info, %struct.bmc150_accel_interrupt_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  br label %66

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  %68 = call i32 @regmap_update_bits(i32 %52, i32 %55, i32 %58, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %100

74:                                               ; preds = %66
  %75 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %76 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %10, align 8
  %79 = getelementptr inbounds %struct.bmc150_accel_interrupt_info, %struct.bmc150_accel_interrupt_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %10, align 8
  %82 = getelementptr inbounds %struct.bmc150_accel_interrupt_info, %struct.bmc150_accel_interrupt_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.bmc150_accel_interrupt_info*, %struct.bmc150_accel_interrupt_info** %10, align 8
  %88 = getelementptr inbounds %struct.bmc150_accel_interrupt_info, %struct.bmc150_accel_interrupt_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %91

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  %93 = call i32 @regmap_update_bits(i32 %77, i32 %80, i32 %83, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %8, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %104

100:                                              ; preds = %96, %71
  %101 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %102 = call i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data* %101, i32 0)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %99, %47, %39, %32
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
