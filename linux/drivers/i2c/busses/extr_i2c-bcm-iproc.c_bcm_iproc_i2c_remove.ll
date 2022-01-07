; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm_iproc_i2c_dev = type { i32, i64 }

@IE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_iproc_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_iproc_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.bcm_iproc_i2c_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.bcm_iproc_i2c_dev* %5, %struct.bcm_iproc_i2c_dev** %3, align 8
  %6 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %12 = load i32, i32* @IE_OFFSET, align 4
  %13 = call i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev* %11, i32 %12, i32 0)
  %14 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %15 = load i32, i32* @IE_OFFSET, align 4
  %16 = call i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev* %14, i32 %15)
  %17 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @synchronize_irq(i64 %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %23 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %22, i32 0, i32 0
  %24 = call i32 @i2c_del_adapter(i32* %23)
  %25 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %26 = call i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev* %25, i32 0)
  ret i32 0
}

declare dso_local %struct.bcm_iproc_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @iproc_i2c_wr_reg(%struct.bcm_iproc_i2c_dev*, i32, i32) #1

declare dso_local i32 @iproc_i2c_rd_reg(%struct.bcm_iproc_i2c_dev*, i32) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @bcm_iproc_i2c_enable_disable(%struct.bcm_iproc_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
