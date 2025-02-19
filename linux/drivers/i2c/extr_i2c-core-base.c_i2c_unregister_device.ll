; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@OF_POPULATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_unregister_device(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %3 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.i2c_client* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @OF_POPULATED, align 4
  %19 = call i32 @of_node_clear_flag(i64 %17, i32 %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @of_node_put(i64 %23)
  br label %25

25:                                               ; preds = %13, %7
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i64 @ACPI_COMPANION(%struct.TYPE_3__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i64 @ACPI_COMPANION(%struct.TYPE_3__* %32)
  %34 = call i32 @acpi_device_clear_enumerated(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @device_unregister(%struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %35, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.i2c_client*) #1

declare dso_local i32 @of_node_clear_flag(i64, i32) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i64 @ACPI_COMPANION(%struct.TYPE_3__*) #1

declare dso_local i32 @acpi_device_clear_enumerated(i64) #1

declare dso_local i32 @device_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
