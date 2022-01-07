; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpc925_dev_info = type { i64 }

@REG_APIMASK_OFFSET = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CPU(s) not present, but enabled in APIMASK, disabling\0A\00", align 1
@CPU_MASK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpc925_dev_info*)* @cpc925_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_cpu_init(%struct.cpc925_dev_info* %0) #0 {
  %2 = alloca %struct.cpc925_dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpc925_dev_info* %0, %struct.cpc925_dev_info** %2, align 8
  %5 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %2, align 8
  %6 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @__raw_readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @cpc925_cpu_mask_disabled()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @KERN_WARNING, align 4
  %18 = call i32 @cpc925_printk(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CPU_MASK_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @CPU_MASK_ENABLE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %2, align 8
  %35 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @__raw_writel(i32 %33, i64 %38)
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpc925_cpu_mask_disabled(...) #1

declare dso_local i32 @cpc925_printk(i32, i8*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
