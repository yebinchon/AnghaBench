; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_ich7_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_ich7_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@nasgpio_leds = common dso_local global %struct.TYPE_3__* null, align 8
@nasgpio_gpio_lock = common dso_local global i32 0, align 4
@nas_gpio_io_base = common dso_local global i64 0, align 8
@GPIO_USE_SEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c": Data read from GPIO_USE_SEL = 0x%08x\0A\00", align 1
@NAS_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c": GPIO_USE_SEL = 0x%08x\0A\0A\00", align 1
@GP_IO_SEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c": Data read from GP_IO_SEL = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c": GP_IO_SEL = 0x%08x\0A\00", align 1
@GP_LVL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c": Data read from GP_LVL = 0x%08x\0A\00", align 1
@GPO_BLINK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c": Data read from GPO_BLINK = 0x%08x\0A\00", align 1
@GPI_INV = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c": Data read from GPI_INV = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ich7_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich7_gpio_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nasgpio_leds, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nasgpio_leds, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %6

24:                                               ; preds = %6
  %25 = call i32 @spin_lock(i32* @nasgpio_gpio_lock)
  %26 = load i64, i64* @nas_gpio_io_base, align 8
  %27 = load i64, i64* @GPIO_USE_SEL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NAS_RECOVERY, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* @nas_gpio_io_base, align 8
  %40 = load i64, i64* @GPIO_USE_SEL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outl(i32 %38, i64 %41)
  %43 = load i64, i64* @nas_gpio_io_base, align 8
  %44 = load i64, i64* @GPIO_USE_SEL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inl(i64 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i64, i64* @nas_gpio_io_base, align 8
  %51 = load i64, i64* @GP_IO_SEL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inl(i64 %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.device*, %struct.device** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @NAS_RECOVERY, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* @nas_gpio_io_base, align 8
  %66 = load i64, i64* @GP_IO_SEL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outl(i32 %64, i64 %67)
  %69 = load i64, i64* @nas_gpio_io_base, align 8
  %70 = load i64, i64* @GP_IO_SEL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @inl(i64 %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.device*, %struct.device** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* @nas_gpio_io_base, align 8
  %77 = load i64, i64* @GP_LVL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inl(i64 %78)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.device*, %struct.device** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i64, i64* @nas_gpio_io_base, align 8
  %84 = load i64, i64* @GPO_BLINK, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @inl(i64 %85)
  store i32 %86, i32* %4, align 4
  %87 = load %struct.device*, %struct.device** %2, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i64, i64* @nas_gpio_io_base, align 8
  %91 = load i64, i64* @GPI_INV, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @inl(i64 %92)
  store i32 %93, i32* %4, align 4
  %94 = load %struct.device*, %struct.device** %2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = call i32 @spin_unlock(i32* @nasgpio_gpio_lock)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
