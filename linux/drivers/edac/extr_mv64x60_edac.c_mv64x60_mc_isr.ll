; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mv64x60_edac.c_mv64x60_mc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mv64x60_edac.c_mv64x60_mc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.mv64x60_mc_pdata* }
%struct.mv64x60_mc_pdata = type { i64 }

@MV64X60_SDRAM_ERR_ADDR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv64x60_mc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64x60_mc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca %struct.mv64x60_mc_pdata*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %10, %struct.mem_ctl_info** %6, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %12, align 8
  store %struct.mv64x60_mc_pdata* %13, %struct.mv64x60_mc_pdata** %7, align 8
  %14 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %7, align 8
  %15 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MV64X60_SDRAM_ERR_ADDR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %26 = call i32 @mv64x60_mc_check(%struct.mem_ctl_info* %25)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mv64x60_mc_check(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
