; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mcs_touchkey.c_mcs_touchkey_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mcs_touchkey.c_mcs_touchkey_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mcs_touchkey_data = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mcs_touchkey_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_touchkey_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.mcs_touchkey_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.mcs_touchkey_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.mcs_touchkey_data* %5, %struct.mcs_touchkey_data** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.mcs_touchkey_data* %9)
  %11 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %3, align 8
  %12 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %11, i32 0, i32 1
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %3, align 8
  %17 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = call i32 %18(i32 0)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %3, align 8
  %22 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @input_unregister_device(i32 %23)
  %25 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %3, align 8
  %26 = call i32 @kfree(%struct.mcs_touchkey_data* %25)
  ret i32 0
}

declare dso_local %struct.mcs_touchkey_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i32, %struct.mcs_touchkey_data*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.mcs_touchkey_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
