; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_root_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-mux.c_i2c_root_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device = type { i32*, %struct.device* }

@i2c_adapter_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @i2c_root_adapter(%struct.device* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  store %struct.device* %6, %struct.device** %4, align 8
  br label %7

7:                                                ; preds = %17, %1
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, @i2c_adapter_type
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %21

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %4, align 8
  br label %7

21:                                               ; preds = %15, %7
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %2, align 8
  br label %37

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %26)
  store %struct.i2c_adapter* %27, %struct.i2c_adapter** %5, align 8
  br label %28

28:                                               ; preds = %32, %25
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = call %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %29)
  %31 = icmp ne %struct.i2c_adapter* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %34 = call %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %33)
  store %struct.i2c_adapter* %34, %struct.i2c_adapter** %5, align 8
  br label %28

35:                                               ; preds = %28
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_adapter* %36, %struct.i2c_adapter** %2, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %38
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
