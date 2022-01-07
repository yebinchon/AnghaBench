; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-janz-ttl.c_ttl_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-janz-ttl.c_ttl_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttl_module = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PORTA_IOCTL = common dso_local global i32 0, align 4
@PORTB_IOCTL = common dso_local global i32 0, align 4
@PORTC_IOCTL = common dso_local global i32 0, align 4
@PORTA_DIRECTION = common dso_local global i32 0, align 4
@PORTB_DIRECTION = common dso_local global i32 0, align 4
@PORTC_DIRECTION = common dso_local global i32 0, align 4
@MASTER_CONF_CTL = common dso_local global i32 0, align 4
@CONF_PAE = common dso_local global i32 0, align 4
@CONF_PBE = common dso_local global i32 0, align 4
@CONF_PCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttl_module*)* @ttl_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttl_setup_device(%struct.ttl_module* %0) #0 {
  %2 = alloca %struct.ttl_module*, align 8
  store %struct.ttl_module* %0, %struct.ttl_module** %2, align 8
  %3 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %4 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = call i32 @iowrite16be(i32 0, i32* %6)
  %8 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %9 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = call i32 @iowrite16be(i32 1, i32* %11)
  %13 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %14 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = call i32 @iowrite16be(i32 0, i32* %16)
  %18 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %19 = load i32, i32* @PORTA_IOCTL, align 4
  %20 = call i32 @ttl_write_reg(%struct.ttl_module* %18, i32 %19, i32 255)
  %21 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %22 = load i32, i32* @PORTB_IOCTL, align 4
  %23 = call i32 @ttl_write_reg(%struct.ttl_module* %21, i32 %22, i32 255)
  %24 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %25 = load i32, i32* @PORTC_IOCTL, align 4
  %26 = call i32 @ttl_write_reg(%struct.ttl_module* %24, i32 %25, i32 15)
  %27 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %28 = load i32, i32* @PORTA_DIRECTION, align 4
  %29 = call i32 @ttl_write_reg(%struct.ttl_module* %27, i32 %28, i32 0)
  %30 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %31 = load i32, i32* @PORTB_DIRECTION, align 4
  %32 = call i32 @ttl_write_reg(%struct.ttl_module* %30, i32 %31, i32 0)
  %33 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %34 = load i32, i32* @PORTC_DIRECTION, align 4
  %35 = call i32 @ttl_write_reg(%struct.ttl_module* %33, i32 %34, i32 0)
  %36 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %37 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @iowrite16be(i32 0, i32* %39)
  %41 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %42 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @iowrite16be(i32 0, i32* %44)
  %46 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %47 = getelementptr inbounds %struct.ttl_module, %struct.ttl_module* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @iowrite16be(i32 0, i32* %49)
  %51 = load %struct.ttl_module*, %struct.ttl_module** %2, align 8
  %52 = load i32, i32* @MASTER_CONF_CTL, align 4
  %53 = load i32, i32* @CONF_PAE, align 4
  %54 = load i32, i32* @CONF_PBE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CONF_PCE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ttl_write_reg(%struct.ttl_module* %51, i32 %52, i32 %57)
  ret void
}

declare dso_local i32 @iowrite16be(i32, i32*) #1

declare dso_local i32 @ttl_write_reg(%struct.ttl_module*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
