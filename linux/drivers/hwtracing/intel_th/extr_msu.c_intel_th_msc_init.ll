; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i32, i64, i32, i32, i32, i32, i32 }

@MSC_MODE_MULTI = common dso_local global i32 0, align 4
@REG_MSU_MSC0CTL = common dso_local global i64 0, align 8
@MSC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc*)* @intel_th_msc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_msc_init(%struct.msc* %0) #0 {
  %2 = alloca %struct.msc*, align 8
  store %struct.msc* %0, %struct.msc** %2, align 8
  %3 = load %struct.msc*, %struct.msc** %2, align 8
  %4 = getelementptr inbounds %struct.msc, %struct.msc* %3, i32 0, i32 6
  %5 = call i32 @atomic_set(i32* %4, i32 -1)
  %6 = load i32, i32* @MSC_MODE_MULTI, align 4
  %7 = load %struct.msc*, %struct.msc** %2, align 8
  %8 = getelementptr inbounds %struct.msc, %struct.msc* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load %struct.msc*, %struct.msc** %2, align 8
  %10 = getelementptr inbounds %struct.msc, %struct.msc* %9, i32 0, i32 4
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.msc*, %struct.msc** %2, align 8
  %13 = getelementptr inbounds %struct.msc, %struct.msc* %12, i32 0, i32 3
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.msc*, %struct.msc** %2, align 8
  %16 = getelementptr inbounds %struct.msc, %struct.msc* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.msc*, %struct.msc** %2, align 8
  %19 = getelementptr inbounds %struct.msc, %struct.msc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_MSU_MSC0CTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  %24 = load i32, i32* @MSC_LEN, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MSC_LEN, align 4
  %27 = call i32 @__ffs(i32 %26)
  %28 = ashr i32 %25, %27
  %29 = load %struct.msc*, %struct.msc** %2, align 8
  %30 = getelementptr inbounds %struct.msc, %struct.msc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
