; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.sii8620 = type { i64, i32, i32, i32, i64 }

@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @sii8620_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.sii8620*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.sii8620* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.sii8620* %5, %struct.sii8620** %3, align 8
  %6 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %7 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %12 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %15 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %16 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %15, i32 0, i32 3
  %17 = call i32 @extcon_unregister_notifier(i64 %13, i32 %14, i32* %16)
  %18 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %19 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %18, i32 0, i32 2
  %20 = call i32 @flush_work(i32* %19)
  %21 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %22 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %27 = call i32 @sii8620_cable_out(%struct.sii8620* %26)
  br label %28

28:                                               ; preds = %25, %10
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %31 = call i32 @sii8620_cable_out(%struct.sii8620* %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %34 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %33, i32 0, i32 1
  %35 = call i32 @drm_bridge_remove(i32* %34)
  ret i32 0
}

declare dso_local %struct.sii8620* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @extcon_unregister_notifier(i64, i32, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @sii8620_cable_out(%struct.sii8620*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
