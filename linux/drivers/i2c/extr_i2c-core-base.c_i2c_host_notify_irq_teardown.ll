; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_host_notify_irq_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_host_notify_irq_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }

@I2C_ADDR_7BITS_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @i2c_host_notify_irq_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_host_notify_irq_teardown(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  store %struct.irq_domain* %7, %struct.irq_domain** %3, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %9 = icmp ne %struct.irq_domain* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @I2C_ADDR_7BITS_COUNT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @irq_find_mapping(%struct.irq_domain* %17, i64 %18)
  %20 = call i32 @irq_dispose_mapping(i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %26 = call i32 @irq_domain_remove(%struct.irq_domain* %25)
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 0
  store %struct.irq_domain* null, %struct.irq_domain** %28, align 8
  br label %29

29:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i64) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
