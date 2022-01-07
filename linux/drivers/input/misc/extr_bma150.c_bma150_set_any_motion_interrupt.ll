; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_set_any_motion_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_set_any_motion_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { i32 }

@BMA150_ANY_MOTION_DUR_POS = common dso_local global i32 0, align 4
@BMA150_ANY_MOTION_DUR_MSK = common dso_local global i32 0, align 4
@BMA150_ANY_MOTION_DUR_REG = common dso_local global i32 0, align 4
@BMA150_ANY_MOTION_THRES_REG = common dso_local global i32 0, align 4
@BMA150_ADV_INT_EN_POS = common dso_local global i32 0, align 4
@BMA150_ADV_INT_EN_MSK = common dso_local global i32 0, align 4
@BMA150_ADV_INT_EN_REG = common dso_local global i32 0, align 4
@BMA150_ANY_MOTION_EN_POS = common dso_local global i32 0, align 4
@BMA150_ANY_MOTION_EN_MSK = common dso_local global i32 0, align 4
@BMA150_ANY_MOTION_EN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*, i32, i32, i32)* @bma150_set_any_motion_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_set_any_motion_interrupt(%struct.bma150_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bma150_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bma150_data*, %struct.bma150_data** %6, align 8
  %12 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BMA150_ANY_MOTION_DUR_POS, align 4
  %16 = load i32, i32* @BMA150_ANY_MOTION_DUR_MSK, align 4
  %17 = load i32, i32* @BMA150_ANY_MOTION_DUR_REG, align 4
  %18 = call i32 @bma150_set_reg_bits(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.bma150_data*, %struct.bma150_data** %6, align 8
  %25 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BMA150_ANY_MOTION_THRES_REG, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @bma150_write_byte(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %64

34:                                               ; preds = %23
  %35 = load %struct.bma150_data*, %struct.bma150_data** %6, align 8
  %36 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @BMA150_ADV_INT_EN_POS, align 4
  %44 = load i32, i32* @BMA150_ADV_INT_EN_MSK, align 4
  %45 = load i32, i32* @BMA150_ADV_INT_EN_REG, align 4
  %46 = call i32 @bma150_set_reg_bits(i32 %37, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %64

51:                                               ; preds = %34
  %52 = load %struct.bma150_data*, %struct.bma150_data** %6, align 8
  %53 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @BMA150_ANY_MOTION_EN_POS, align 4
  %61 = load i32, i32* @BMA150_ANY_MOTION_EN_MSK, align 4
  %62 = load i32, i32* @BMA150_ANY_MOTION_EN_REG, align 4
  %63 = call i32 @bma150_set_reg_bits(i32 %54, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %51, %49, %32, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @bma150_set_reg_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bma150_write_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
