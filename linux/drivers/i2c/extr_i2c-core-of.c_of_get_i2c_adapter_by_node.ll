; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_get_i2c_adapter_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_get_i2c_adapter_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @of_get_i2c_adapter_by_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node* %5)
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %4, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %8 = icmp ne %struct.i2c_adapter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = call i32 @put_device(i32* %18)
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %4, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %2, align 8
  br label %22

22:                                               ; preds = %20, %9
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %23
}

declare dso_local %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
