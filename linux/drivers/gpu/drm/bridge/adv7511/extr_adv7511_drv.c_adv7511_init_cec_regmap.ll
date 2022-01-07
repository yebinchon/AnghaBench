; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_init_cec_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_init_cec_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@ADV7511_CEC_I2C_ADDR_DEFAULT = common dso_local global i32 0, align 4
@adv7511_cec_regmap_config = common dso_local global i32 0, align 4
@ADV7533 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*)* @adv7511_init_cec_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_init_cec_regmap(%struct.adv7511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  %5 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %6 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ADV7511_CEC_I2C_ADDR_DEFAULT, align 4
  %9 = call i32 @i2c_new_ancillary_device(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %11 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %13 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %19 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %24 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %27 = call i32 @i2c_set_clientdata(i32 %25, %struct.adv7511* %26)
  %28 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %29 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @devm_regmap_init_i2c(i32 %30, i32* @adv7511_cec_regmap_config)
  %32 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %33 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %35 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %41 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %22
  %45 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %46 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ADV7533, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %52 = call i32 @adv7533_patch_cec_registers(%struct.adv7511* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %58

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %44
  store i32 0, i32* %2, align 4
  br label %64

58:                                               ; preds = %55, %39
  %59 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %60 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @i2c_unregister_device(i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %57, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @i2c_new_ancillary_device(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(i32, %struct.adv7511*) #1

declare dso_local i32 @devm_regmap_init_i2c(i32, i32*) #1

declare dso_local i32 @adv7533_patch_cec_registers(%struct.adv7511*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
