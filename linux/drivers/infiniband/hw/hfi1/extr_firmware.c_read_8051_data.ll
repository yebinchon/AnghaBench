; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_read_8051_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_read_8051_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@DC_DC8051_CFG_RAM_ACCESS_SETUP = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_8051_data(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %17 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_SETUP, align 4
  %18 = call i32 @write_csr(%struct.hfi1_devdata* %16, i32 %17, i32 0)
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %32, %4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @__read_8051_data(%struct.hfi1_devdata* %24, i64 %25, i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %39

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 8
  store i64 %36, i64* %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  br label %19

39:                                               ; preds = %30, %19
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %41 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_CTRL, align 4
  %42 = call i32 @write_csr(%struct.hfi1_devdata* %40, i32 %41, i32 0)
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @__read_8051_data(%struct.hfi1_devdata*, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
