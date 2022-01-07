; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_fsl_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_fsl_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mpc_i2c = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mpc_i2c*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mpc_i2c* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mpc_i2c* %5, %struct.mpc_i2c** %3, align 8
  %6 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %6, i32 0, i32 3
  %8 = call i32 @i2c_del_adapter(i32* %7)
  %9 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %10 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @clk_disable_unprepare(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %20 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %25 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %28 = call i32 @free_irq(i64 %26, %struct.mpc_i2c* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %31 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @irq_dispose_mapping(i64 %32)
  %34 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.mpc_i2c*, %struct.mpc_i2c** %3, align 8
  %39 = call i32 @kfree(%struct.mpc_i2c* %38)
  ret i32 0
}

declare dso_local %struct.mpc_i2c* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @free_irq(i64, %struct.mpc_i2c*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.mpc_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
