; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_vtg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_vtg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_vtg = type { i64, i32 }

@VTG_HOST_ITS = common dso_local global i64 0, align 8
@VTG_HOST_ITS_BCLR = common dso_local global i64 0, align 8
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vtg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sti_vtg*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sti_vtg*
  store %struct.sti_vtg* %7, %struct.sti_vtg** %5, align 8
  %8 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %9 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VTG_HOST_ITS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %15 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %17 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %20 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VTG_HOST_ITS_BCLR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %26 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VTG_HOST_ITS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  %31 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %31
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
