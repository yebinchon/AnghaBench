; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxdap_fasi_write_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxdap_fasi_write_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32, i32, i32)* @drxdap_fasi_write_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i64], align 16
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = ashr i32 %10, 0
  %12 = and i32 %11, 255
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 1
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  store i64 %23, i64* %24, align 16
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 3
  store i64 %28, i64* %29, align 8
  %30 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @drxdap_fasi_write_block(%struct.i2c_device_addr* %30, i32 %31, i32 4, i64* %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @drxdap_fasi_write_block(%struct.i2c_device_addr*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
