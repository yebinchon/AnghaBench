; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_get_xfersz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_get_xfersz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { i32 }

@N_DATA_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_i2c_dev*)* @brcmstb_i2c_get_xfersz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_get_xfersz(%struct.brcmstb_i2c_dev* %0) #0 {
  %2 = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %2, align 8
  %3 = load i32, i32* @N_DATA_REGS, align 4
  %4 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %3, %6
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
