; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_men_z188_adc.c_men_z188_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_men_z188_adc.c_men_z188_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.z188_adc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcb_device*)* @men_z188_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z188_remove(%struct.mcb_device* %0) #0 {
  %2 = alloca %struct.mcb_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.z188_adc*, align 8
  store %struct.mcb_device* %0, %struct.mcb_device** %2, align 8
  %5 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %6 = call %struct.iio_dev* @mcb_get_drvdata(%struct.mcb_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.z188_adc* @iio_priv(%struct.iio_dev* %7)
  store %struct.z188_adc* %8, %struct.z188_adc** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.z188_adc*, %struct.z188_adc** %4, align 8
  %12 = getelementptr inbounds %struct.z188_adc, %struct.z188_adc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iounmap(i32 %13)
  %15 = load %struct.z188_adc*, %struct.z188_adc** %4, align 8
  %16 = getelementptr inbounds %struct.z188_adc, %struct.z188_adc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mcb_release_mem(i32 %17)
  ret void
}

declare dso_local %struct.iio_dev* @mcb_get_drvdata(%struct.mcb_device*) #1

declare dso_local %struct.z188_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mcb_release_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
