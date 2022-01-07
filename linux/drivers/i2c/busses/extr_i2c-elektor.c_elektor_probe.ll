; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-elektor.c_elektor_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-elektor.c_elektor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@pcf_wait = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pcf_isa_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"found device at %#x\0A\00", align 1
@base = common dso_local global i32 0, align 4
@irq = common dso_local global i64 0, align 8
@mmapped = common dso_local global i32 0, align 4
@base_iomem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @elektor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elektor_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @init_waitqueue_head(i32* @pcf_wait)
  %7 = call i64 (...) @pcf_isa_init()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %13, %struct.device** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pcf_isa_ops, i32 0, i32 0, i32 0), align 8
  %14 = call i64 @i2c_pcf_add_bus(%struct.TYPE_5__* @pcf_isa_ops)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %12
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @base, align 4
  %20 = call i32 @dev_info(%struct.device* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %3, align 4
  br label %45

21:                                               ; preds = %16
  %22 = load i64, i64* @irq, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i64, i64* @irq, align 8
  %26 = call i32 @disable_irq(i64 %25)
  %27 = load i64, i64* @irq, align 8
  %28 = call i32 @free_irq(i64 %27, i32* null)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @mmapped, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @base_iomem, align 4
  %34 = call i32 @ioport_unmap(i32 %33)
  %35 = load i32, i32* @base, align 4
  %36 = call i32 @release_region(i32 %35, i32 2)
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @base_iomem, align 4
  %39 = call i32 @iounmap(i32 %38)
  %40 = load i32, i32* @base, align 4
  %41 = call i32 @release_mem_region(i32 %40, i32 2)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %17, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @pcf_isa_init(...) #1

declare dso_local i64 @i2c_pcf_add_bus(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @free_irq(i64, i32*) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
