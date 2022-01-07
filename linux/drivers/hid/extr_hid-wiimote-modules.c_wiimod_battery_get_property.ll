; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@POWER_SUPPLY_PROP_SCOPE = common dso_local global i32 0, align 4
@POWER_SUPPLY_SCOPE_DEVICE = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_CAPACITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WIIPROTO_REQ_SREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wiimod_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wiimote_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = call %struct.wiimote_data* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.wiimote_data* %13, %struct.wiimote_data** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @POWER_SUPPLY_PROP_SCOPE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @POWER_SUPPLY_SCOPE_DEVICE, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @POWER_SUPPLY_PROP_CAPACITY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %76

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %31 = call i32 @wiimote_cmd_acquire(%struct.wiimote_data* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %29
  %37 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %38 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %43 = load i32, i32* @WIIPROTO_REQ_SREQ, align 4
  %44 = call i32 @wiimote_cmd_set(%struct.wiimote_data* %42, i32 %43, i32 0)
  %45 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %46 = call i32 @wiiproto_req_status(%struct.wiimote_data* %45)
  %47 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %48 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %53 = call i32 @wiimote_cmd_wait(%struct.wiimote_data* %52)
  %54 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %55 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %54)
  %56 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %57 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %62 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.wiimote_data*, %struct.wiimote_data** %8, align 8
  %66 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 100
  %72 = sdiv i32 %71, 255
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %36, %34, %25, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.wiimote_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @wiimote_cmd_acquire(%struct.wiimote_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wiimote_cmd_set(%struct.wiimote_data*, i32, i32) #1

declare dso_local i32 @wiiproto_req_status(%struct.wiimote_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wiimote_cmd_wait(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
