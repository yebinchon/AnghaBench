; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_doAddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_doAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pcf_data = type { i32 }
%struct.i2c_msg = type { i32 }

@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_pcf_data*, %struct.i2c_msg*)* @pcf_doAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_doAddress(%struct.i2c_algo_pcf_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_algo_pcf_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i8, align 1
  store %struct.i2c_algo_pcf_data* %0, %struct.i2c_algo_pcf_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %7 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %6)
  store i8 %7, i8* %5, align 1
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %3, align 8
  %21 = load i8, i8* %5, align 1
  %22 = call i32 @i2c_outb(%struct.i2c_algo_pcf_data* %20, i8 zeroext %21)
  ret i32 0
}

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @i2c_outb(%struct.i2c_algo_pcf_data*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
