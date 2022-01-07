; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_scu_atomic_write_reg16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_scu_atomic_write_reg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32, i32, i32)* @drxj_dap_scu_atomic_write_reg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxj_dap_scu_atomic_write_reg16(%struct.i2c_device_addr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %15, i64* %16, align 16
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %20, i64* %21, align 8
  %22 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %25 = call i32 @drxj_dap_scu_atomic_read_write_block(%struct.i2c_device_addr* %22, i32 %23, i32 2, i64* %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  ret i32 %26
}

declare dso_local i32 @drxj_dap_scu_atomic_read_write_block(%struct.i2c_device_addr*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
