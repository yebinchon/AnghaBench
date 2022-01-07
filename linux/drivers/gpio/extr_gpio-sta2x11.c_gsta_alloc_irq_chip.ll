; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sta2x11.c_gsta_alloc_irq_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sta2x11.c_gsta_alloc_irq_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsta_gpio = type { i32, i32, i32 }
%struct.irq_chip_generic = type { i64, i64, %struct.irq_chip_type*, %struct.gsta_gpio* }
%struct.irq_chip_type = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gsta_irq_type = common dso_local global i32 0, align 4
@gsta_irq_disable = common dso_local global i32 0, align 4
@gsta_irq_enable = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@GSTA_NR_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsta_gpio*)* @gsta_alloc_irq_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsta_alloc_irq_chip(%struct.gsta_gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsta_gpio*, align 8
  %4 = alloca %struct.irq_chip_generic*, align 8
  %5 = alloca %struct.irq_chip_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gsta_gpio* %0, %struct.gsta_gpio** %3, align 8
  %10 = load %struct.gsta_gpio*, %struct.gsta_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @KBUILD_MODNAME, align 4
  %14 = load %struct.gsta_gpio*, %struct.gsta_gpio** %3, align 8
  %15 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gsta_gpio*, %struct.gsta_gpio** %3, align 8
  %18 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @handle_simple_irq, align 4
  %21 = call %struct.irq_chip_generic* @devm_irq_alloc_generic_chip(i32 %12, i32 %13, i32 1, i32 %16, i32 %19, i32 %20)
  store %struct.irq_chip_generic* %21, %struct.irq_chip_generic** %4, align 8
  %22 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %23 = icmp ne %struct.irq_chip_generic* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %1
  %28 = load %struct.gsta_gpio*, %struct.gsta_gpio** %3, align 8
  %29 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %30 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %29, i32 0, i32 3
  store %struct.gsta_gpio* %28, %struct.gsta_gpio** %30, align 8
  %31 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %32 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %31, i32 0, i32 2
  %33 = load %struct.irq_chip_type*, %struct.irq_chip_type** %32, align 8
  store %struct.irq_chip_type* %33, %struct.irq_chip_type** %5, align 8
  %34 = load i32, i32* @gsta_irq_type, align 4
  %35 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %36 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @gsta_irq_disable, align 4
  %39 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %40 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @gsta_irq_enable, align 4
  %43 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %44 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.gsta_gpio*, %struct.gsta_gpio** %3, align 8
  %47 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %50 = load i32, i32* @IRQ_NOREQUEST, align 4
  %51 = load i32, i32* @IRQ_NOPROBE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @devm_irq_setup_generic_chip(i32 %48, %struct.irq_chip_generic* %49, i32 0, i32 0, i32 %52, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %27
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %99

58:                                               ; preds = %27
  %59 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %60 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %59, i32 0, i32 2
  %61 = load %struct.irq_chip_type*, %struct.irq_chip_type** %60, align 8
  store %struct.irq_chip_type* %61, %struct.irq_chip_type** %7, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %87, %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @GSTA_NR_GPIO, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load %struct.gsta_gpio*, %struct.gsta_gpio** %3, align 8
  %68 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %74 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %73, i32 0, i32 1
  %75 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %76 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @irq_set_chip_and_handler(i32 %72, %struct.TYPE_2__* %74, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %81 = call i32 @irq_set_chip_data(i32 %79, %struct.irq_chip_generic* %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @IRQ_NOREQUEST, align 4
  %84 = load i32, i32* @IRQ_NOPROBE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @irq_clear_status_flags(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %66
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %62

90:                                               ; preds = %62
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %94 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %98 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %90, %56, %24
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.irq_chip_generic* @devm_irq_alloc_generic_chip(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @devm_irq_setup_generic_chip(i32, %struct.irq_chip_generic*, i32, i32, i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.irq_chip_generic*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
