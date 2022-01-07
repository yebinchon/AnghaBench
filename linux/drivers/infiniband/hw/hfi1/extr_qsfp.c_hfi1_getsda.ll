; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c_hfi1_getsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c_hfi1_getsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_i2c_bus = type { i32, i32 }

@QSFP_HFI0_I2CDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hfi1_getsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_getsda(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hfi1_i2c_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.hfi1_i2c_bus*
  store %struct.hfi1_i2c_bus* %7, %struct.hfi1_i2c_bus** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @hfi1_setsda(i8* %8, i32 1)
  %10 = call i32 @udelay(i32 2)
  %11 = load %struct.hfi1_i2c_bus*, %struct.hfi1_i2c_bus** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_i2c_bus, %struct.hfi1_i2c_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @i2c_in_csr(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.hfi1_i2c_bus*, %struct.hfi1_i2c_bus** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_i2c_bus, %struct.hfi1_i2c_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @read_csr(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @QSFP_HFI0_I2CDAT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @hfi1_setsda(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_in_csr(i32) #1

declare dso_local i32 @read_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
