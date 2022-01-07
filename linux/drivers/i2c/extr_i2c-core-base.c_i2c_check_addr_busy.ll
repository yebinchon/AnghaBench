; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_check_addr_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_check_addr_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@i2c_check_mux_children = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @i2c_check_addr_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_check_addr_busy(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = call %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %7)
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = icmp ne %struct.i2c_adapter* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @i2c_check_mux_parents(%struct.i2c_adapter* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* @i2c_check_mux_children, align 4
  %22 = call i32 @device_for_each_child(i32* %20, i32* %4, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_check_mux_parents(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
