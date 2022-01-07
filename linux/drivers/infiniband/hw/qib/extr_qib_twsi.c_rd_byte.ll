; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_rd_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_rd_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32)* @rd_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_byte(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 7, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %14 = call i32 @scl_out(%struct.qib_devdata* %13, i32 1)
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = call i32 @sda_in(%struct.qib_devdata* %15, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %20 = call i32 @scl_out(%struct.qib_devdata* %19, i32 0)
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %29 = call i32 @scl_out(%struct.qib_devdata* %28, i32 1)
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %31 = call i32 @stop_cmd(%struct.qib_devdata* %30)
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %34 = call i32 @sda_out(%struct.qib_devdata* %33, i32 0)
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = call i32 @scl_out(%struct.qib_devdata* %35, i32 1)
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %38 = call i32 @scl_out(%struct.qib_devdata* %37, i32 0)
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %40 = call i32 @sda_out(%struct.qib_devdata* %39, i32 1)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @scl_out(%struct.qib_devdata*, i32) #1

declare dso_local i32 @sda_in(%struct.qib_devdata*, i32) #1

declare dso_local i32 @stop_cmd(%struct.qib_devdata*) #1

declare dso_local i32 @sda_out(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
