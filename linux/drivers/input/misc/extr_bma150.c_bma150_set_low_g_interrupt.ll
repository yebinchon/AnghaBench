; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_set_low_g_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_set_low_g_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { i32 }

@BMA150_LOW_G_HYST_POS = common dso_local global i32 0, align 4
@BMA150_LOW_G_HYST_MSK = common dso_local global i32 0, align 4
@BMA150_LOW_G_HYST_REG = common dso_local global i32 0, align 4
@BMA150_LOW_G_DUR_REG = common dso_local global i32 0, align 4
@BMA150_LOW_G_THRES_REG = common dso_local global i32 0, align 4
@BMA150_LOW_G_EN_POS = common dso_local global i32 0, align 4
@BMA150_LOW_G_EN_MSK = common dso_local global i32 0, align 4
@BMA150_LOW_G_EN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*, i32, i32, i32, i32)* @bma150_set_low_g_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_set_low_g_interrupt(%struct.bma150_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bma150_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.bma150_data*, %struct.bma150_data** %7, align 8
  %14 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @BMA150_LOW_G_HYST_POS, align 4
  %18 = load i32, i32* @BMA150_LOW_G_HYST_MSK, align 4
  %19 = load i32, i32* @BMA150_LOW_G_HYST_REG, align 4
  %20 = call i32 @bma150_set_reg_bits(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %5
  %26 = load %struct.bma150_data*, %struct.bma150_data** %7, align 8
  %27 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BMA150_LOW_G_DUR_REG, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @bma150_write_byte(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %60

36:                                               ; preds = %25
  %37 = load %struct.bma150_data*, %struct.bma150_data** %7, align 8
  %38 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BMA150_LOW_G_THRES_REG, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @bma150_write_byte(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %60

47:                                               ; preds = %36
  %48 = load %struct.bma150_data*, %struct.bma150_data** %7, align 8
  %49 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @BMA150_LOW_G_EN_POS, align 4
  %57 = load i32, i32* @BMA150_LOW_G_EN_MSK, align 4
  %58 = load i32, i32* @BMA150_LOW_G_EN_REG, align 4
  %59 = call i32 @bma150_set_reg_bits(i32 %50, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %47, %45, %34, %23
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @bma150_set_reg_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bma150_write_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
