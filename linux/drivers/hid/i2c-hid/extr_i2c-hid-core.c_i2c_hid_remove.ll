; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_hid = type { %struct.TYPE_2__, i64, %struct.hid_device* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @i2c_hid_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.i2c_hid*, align 8
  %4 = alloca %struct.hid_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.i2c_hid* %6, %struct.i2c_hid** %3, align 8
  %7 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %7, i32 0, i32 2
  %9 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  store %struct.hid_device* %9, %struct.hid_device** %4, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = call i32 @hid_destroy_device(%struct.hid_device* %10)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.i2c_hid* %15)
  %17 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %23 = call i32 @i2c_hid_free_buffers(%struct.i2c_hid* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @regulator_bulk_disable(i32 %29, i32 %33)
  ret i32 0
}

declare dso_local %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @free_irq(i32, %struct.i2c_hid*) #1

declare dso_local i32 @i2c_hid_free_buffers(%struct.i2c_hid*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
