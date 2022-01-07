; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adv7511 = type { i64, i32, i32, i32, i32, i64, i32 }

@ADV7533 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adv7511_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adv7511*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.adv7511* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.adv7511* %5, %struct.adv7511** %3, align 8
  %6 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %7 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ADV7533, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %13 = call i32 @adv7533_detach_dsi(%struct.adv7511* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %16 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @i2c_unregister_device(i32 %17)
  %19 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %20 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %25 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i64 %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %30 = call i32 @adv7511_uninit_regulators(%struct.adv7511* %29)
  %31 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %32 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %31, i32 0, i32 4
  %33 = call i32 @drm_bridge_remove(i32* %32)
  %34 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %35 = call i32 @adv7511_audio_exit(%struct.adv7511* %34)
  %36 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %37 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cec_unregister_adapter(i32 %38)
  %40 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %41 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i2c_unregister_device(i32 %42)
  %44 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %45 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @i2c_unregister_device(i32 %46)
  ret i32 0
}

declare dso_local %struct.adv7511* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adv7533_detach_dsi(%struct.adv7511*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @adv7511_uninit_regulators(%struct.adv7511*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

declare dso_local i32 @adv7511_audio_exit(%struct.adv7511*) #1

declare dso_local i32 @cec_unregister_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
