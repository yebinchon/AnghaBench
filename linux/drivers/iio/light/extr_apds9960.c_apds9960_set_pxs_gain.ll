; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_set_pxs_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_set_pxs_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9960_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@apds9960_pxs_gain_map = common dso_local global i32* null, align 8
@APDS9960_REG_CONTROL = common dso_local global i32 0, align 4
@APDS9960_REG_CONTROL_PGAIN_MASK = common dso_local global i32 0, align 4
@APDS9960_REG_CONTROL_PGAIN_MASK_SHIFT = common dso_local global i32 0, align 4
@APDS9960_REG_CONFIG_2 = common dso_local global i32 0, align 4
@APDS9960_REG_CONFIG_2_GGAIN_MASK = common dso_local global i32 0, align 4
@APDS9960_REG_CONFIG_2_GGAIN_MASK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9960_data*, i32)* @apds9960_set_pxs_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_set_pxs_gain(%struct.apds9960_data* %0, i32 %1) #0 {
  %3 = alloca %struct.apds9960_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apds9960_data* %0, %struct.apds9960_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %62, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** @apds9960_pxs_gain_map, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %9
  %15 = load i32*, i32** @apds9960_pxs_gain_map, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %14
  %23 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %24 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %27 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @APDS9960_REG_CONTROL, align 4
  %30 = load i32, i32* @APDS9960_REG_CONTROL_PGAIN_MASK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @APDS9960_REG_CONTROL_PGAIN_MASK_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %39 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %43 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @APDS9960_REG_CONFIG_2, align 4
  %46 = load i32, i32* @APDS9960_REG_CONFIG_2_GGAIN_MASK, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @APDS9960_REG_CONFIG_2_GGAIN_MASK_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %56 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %59 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %65

61:                                               ; preds = %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %9

65:                                               ; preds = %57, %37, %9
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
