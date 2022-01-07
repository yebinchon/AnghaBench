; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_find_i2c_device_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_find_i2c_device_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@i2c_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @of_find_i2c_device_by_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.device* @bus_find_device_by_of_node(i32* @i2c_bus_type, %struct.device_node* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.i2c_client* null, %struct.i2c_client** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = icmp ne %struct.i2c_client* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @put_device(%struct.device* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %2, align 8
  br label %21

21:                                               ; preds = %19, %10
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  ret %struct.i2c_client* %22
}

declare dso_local %struct.device* @bus_find_device_by_of_node(i32*, %struct.device_node*) #1

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
