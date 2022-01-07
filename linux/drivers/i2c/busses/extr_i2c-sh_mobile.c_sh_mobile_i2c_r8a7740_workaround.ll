; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_r8a7740_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_r8a7740_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32 }

@ICCR = common dso_local global i32 0, align 4
@ICCR_ICE = common dso_local global i32 0, align 4
@ICSTART = common dso_local global i32 0, align 4
@ICSTART_ICSTART = common dso_local global i32 0, align 4
@ICCR_SCP = common dso_local global i32 0, align 4
@ICCR_TRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_r8a7740_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_r8a7740_workaround(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca %struct.sh_mobile_i2c_data*, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %2, align 8
  %3 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %4 = load i32, i32* @ICCR, align 4
  %5 = load i32, i32* @ICCR_ICE, align 4
  %6 = call i32 @iic_set_clr(%struct.sh_mobile_i2c_data* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %8 = load i32, i32* @ICCR, align 4
  %9 = call i32 @iic_rd(%struct.sh_mobile_i2c_data* %7, i32 %8)
  %10 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %11 = load i32, i32* @ICSTART, align 4
  %12 = load i32, i32* @ICSTART_ICSTART, align 4
  %13 = call i32 @iic_set_clr(%struct.sh_mobile_i2c_data* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %15 = load i32, i32* @ICSTART, align 4
  %16 = call i32 @iic_rd(%struct.sh_mobile_i2c_data* %14, i32 %15)
  %17 = call i32 @udelay(i32 10)
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %19 = load i32, i32* @ICCR, align 4
  %20 = load i32, i32* @ICCR_SCP, align 4
  %21 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %18, i32 %19, i32 %20)
  %22 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %23 = load i32, i32* @ICSTART, align 4
  %24 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %22, i32 %23, i32 0)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %27 = load i32, i32* @ICCR, align 4
  %28 = load i32, i32* @ICCR_TRS, align 4
  %29 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %26, i32 %27, i32 %28)
  %30 = call i32 @udelay(i32 10)
  %31 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %32 = load i32, i32* @ICCR, align 4
  %33 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %31, i32 %32, i32 0)
  %34 = call i32 @udelay(i32 10)
  %35 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %36 = load i32, i32* @ICCR, align 4
  %37 = load i32, i32* @ICCR_TRS, align 4
  %38 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %35, i32 %36, i32 %37)
  %39 = call i32 @udelay(i32 10)
  %40 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %41 = call i32 @sh_mobile_i2c_init(%struct.sh_mobile_i2c_data* %40)
  ret i32 %41
}

declare dso_local i32 @iic_set_clr(%struct.sh_mobile_i2c_data*, i32, i32, i32) #1

declare dso_local i32 @iic_rd(%struct.sh_mobile_i2c_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iic_wr(%struct.sh_mobile_i2c_data*, i32, i32) #1

declare dso_local i32 @sh_mobile_i2c_init(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
