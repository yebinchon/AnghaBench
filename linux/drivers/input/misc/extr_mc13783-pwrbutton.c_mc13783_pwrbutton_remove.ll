; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_mc13783-pwrbutton.c_mc13783_pwrbutton_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_mc13783-pwrbutton.c_mc13783_pwrbutton_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mc13783_pwrb = type { i32, i32 }
%struct.mc13xxx_buttons_platform_data = type { i32, i32, i32 }

@MC13783_BUTTON_ENABLE = common dso_local global i32 0, align 4
@MC13783_IRQ_ONOFD3 = common dso_local global i32 0, align 4
@MC13783_IRQ_ONOFD2 = common dso_local global i32 0, align 4
@MC13783_IRQ_ONOFD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mc13783_pwrbutton_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_pwrbutton_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mc13783_pwrb*, align 8
  %4 = alloca %struct.mc13xxx_buttons_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mc13783_pwrb* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mc13783_pwrb* %6, %struct.mc13783_pwrb** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.mc13xxx_buttons_platform_data* @dev_get_platdata(i32* %8)
  store %struct.mc13xxx_buttons_platform_data* %9, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %10 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %11 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mc13xxx_lock(i32 %12)
  %14 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %22 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MC13783_IRQ_ONOFD3, align 4
  %25 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %26 = call i32 @mc13xxx_irq_free(i32 %23, i32 %24, %struct.mc13783_pwrb* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %36 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MC13783_IRQ_ONOFD2, align 4
  %39 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %40 = call i32 @mc13xxx_irq_free(i32 %37, i32 %38, %struct.mc13783_pwrb* %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.mc13xxx_buttons_platform_data*, %struct.mc13xxx_buttons_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.mc13xxx_buttons_platform_data, %struct.mc13xxx_buttons_platform_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MC13783_BUTTON_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %50 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MC13783_IRQ_ONOFD1, align 4
  %53 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %54 = call i32 @mc13xxx_irq_free(i32 %51, i32 %52, %struct.mc13783_pwrb* %53)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %57 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mc13xxx_unlock(i32 %58)
  %60 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %61 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @input_unregister_device(i32 %62)
  %64 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %3, align 8
  %65 = call i32 @kfree(%struct.mc13783_pwrb* %64)
  ret i32 0
}

declare dso_local %struct.mc13783_pwrb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mc13xxx_buttons_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @mc13xxx_lock(i32) #1

declare dso_local i32 @mc13xxx_irq_free(i32, i32, %struct.mc13783_pwrb*) #1

declare dso_local i32 @mc13xxx_unlock(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.mc13783_pwrb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
