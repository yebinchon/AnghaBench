; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.blinkm_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLM_FADE_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failure in blinkm_remove ignored. Continuing.\0A\00", align 1
@BLM_FADE_HSB = common dso_local global i32 0, align 4
@BLM_GO_RGB = common dso_local global i32 0, align 4
@blinkm_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @blinkm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blinkm_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.blinkm_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.blinkm_data* %7, %struct.blinkm_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %13 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %12, i32 0, i32 6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @led_classdev_unregister(i32* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %25 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %27 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %29 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = load i32, i32* @BLM_FADE_RGB, align 4
  %32 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %41 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %43 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %42, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %45 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %44, i32 0, i32 5
  store i32 0, i32* %45, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %47 = load i32, i32* @BLM_FADE_HSB, align 4
  %48 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @dev_err(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %57 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %56, i32 0, i32 0
  store i32 255, i32* %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %59 = load i32, i32* @BLM_GO_RGB, align 4
  %60 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %55
  %68 = load %struct.blinkm_data*, %struct.blinkm_data** %3, align 8
  %69 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %71 = load i32, i32* @BLM_FADE_RGB, align 4
  %72 = call i32 @blinkm_transfer_hw(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_err(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %67
  %80 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @sysfs_remove_group(i32* %82, i32* @blinkm_group)
  ret i32 0
}

declare dso_local %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @blinkm_transfer_hw(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
