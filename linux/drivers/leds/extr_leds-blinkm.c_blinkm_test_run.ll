; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_test_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.blinkm_data = type { i32, i32, i32, i32, i32, i32 }

@BLM_GO_RGB = common dso_local global i32 0, align 4
@BLM_FADE_RGB = common dso_local global i32 0, align 4
@BLM_FADE_HSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @blinkm_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blinkm_test_run(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blinkm_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.blinkm_data* %7, %struct.blinkm_data** %5, align 8
  %8 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %9 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %11 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %10, i32 0, i32 1
  store i32 5, i32* %11, align 4
  %12 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %13 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %12, i32 0, i32 2
  store i32 16, i32* %13, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = load i32, i32* @BLM_GO_RGB, align 4
  %16 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  %22 = call i32 @msleep(i32 2000)
  %23 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %24 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %23, i32 0, i32 0
  store i32 37, i32* %24, align 4
  %25 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %26 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %25, i32 0, i32 1
  store i32 16, i32* %26, align 4
  %27 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %28 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %27, i32 0, i32 2
  store i32 49, i32* %28, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @BLM_FADE_RGB, align 4
  %31 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %53

36:                                               ; preds = %21
  %37 = call i32 @msleep(i32 2000)
  %38 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %39 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %38, i32 0, i32 3
  store i32 80, i32* %39, align 4
  %40 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %41 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %40, i32 0, i32 4
  store i32 16, i32* %41, align 4
  %42 = load %struct.blinkm_data*, %struct.blinkm_data** %5, align 8
  %43 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %42, i32 0, i32 5
  store i32 32, i32* %43, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = load i32, i32* @BLM_FADE_HSB, align 4
  %46 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %36
  %52 = call i32 @msleep(i32 2000)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %49, %34, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @blinkm_transfer_hw(%struct.i2c_client*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
