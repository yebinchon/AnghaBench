; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ocores_i2c = type { i32, i32 }

@OCI2C_CONTROL = common dso_local global i32 0, align 4
@OCI2C_CTRL_EN = common dso_local global i32 0, align 4
@OCI2C_CTRL_IEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ocores_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocores_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ocores_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ocores_i2c* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ocores_i2c* %6, %struct.ocores_i2c** %3, align 8
  %7 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %8 = load i32, i32* @OCI2C_CONTROL, align 4
  %9 = call i32 @oc_getreg(%struct.ocores_i2c* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @OCI2C_CTRL_EN, align 4
  %11 = load i32, i32* @OCI2C_CTRL_IEN, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %17 = load i32, i32* @OCI2C_CONTROL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @oc_setreg(%struct.ocores_i2c* %16, i32 %17, i32 %18)
  %20 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %21 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %20, i32 0, i32 1
  %22 = call i32 @i2c_del_adapter(i32* %21)
  %23 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %24 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.ocores_i2c*, %struct.ocores_i2c** %3, align 8
  %30 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  ret i32 0
}

declare dso_local %struct.ocores_i2c* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
