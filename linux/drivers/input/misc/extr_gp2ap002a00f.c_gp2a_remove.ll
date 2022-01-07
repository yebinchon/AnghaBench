; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gp2ap002a00f.c_gp2a_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gp2ap002a00f.c_gp2a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.gp2a_data = type { i32, %struct.gp2a_platform_data* }
%struct.gp2a_platform_data = type { i32 (%struct.i2c_client*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @gp2a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2a_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.gp2a_data*, align 8
  %4 = alloca %struct.gp2a_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.gp2a_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.gp2a_data* %6, %struct.gp2a_data** %3, align 8
  %7 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %8 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %7, i32 0, i32 1
  %9 = load %struct.gp2a_platform_data*, %struct.gp2a_platform_data** %8, align 8
  store %struct.gp2a_platform_data* %9, %struct.gp2a_platform_data** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.gp2a_data* %13)
  %15 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %16 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @input_unregister_device(i32 %17)
  %19 = load %struct.gp2a_data*, %struct.gp2a_data** %3, align 8
  %20 = call i32 @kfree(%struct.gp2a_data* %19)
  %21 = load %struct.gp2a_platform_data*, %struct.gp2a_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.gp2a_platform_data, %struct.gp2a_platform_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gpio_free(i32 %23)
  %25 = load %struct.gp2a_platform_data*, %struct.gp2a_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.gp2a_platform_data, %struct.gp2a_platform_data* %25, i32 0, i32 0
  %27 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %26, align 8
  %28 = icmp ne i32 (%struct.i2c_client*)* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.gp2a_platform_data*, %struct.gp2a_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.gp2a_platform_data, %struct.gp2a_platform_data* %30, i32 0, i32 0
  %32 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %31, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = call i32 %32(%struct.i2c_client* %33)
  br label %35

35:                                               ; preds = %29, %1
  ret i32 0
}

declare dso_local %struct.gp2a_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i32, %struct.gp2a_data*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.gp2a_data*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
