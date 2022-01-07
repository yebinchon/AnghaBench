; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c__omap_dsi_configure_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c__omap_dsi_configure_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32 }
%struct.dsi_isr_data = type { i32, i32* }
%struct.dsi_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*, %struct.dsi_isr_data*, i32, i32, i32, i32)* @_omap_dsi_configure_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_dsi_configure_irqs(%struct.dsi_data* %0, %struct.dsi_isr_data* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dsi_reg, align 4
  %8 = alloca %struct.dsi_reg, align 4
  %9 = alloca %struct.dsi_data*, align 8
  %10 = alloca %struct.dsi_isr_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsi_isr_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %7, i32 0, i32 0
  store i32 %4, i32* %17, align 4
  %18 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %8, i32 0, i32 0
  store i32 %5, i32* %18, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %9, align 8
  store %struct.dsi_isr_data* %1, %struct.dsi_isr_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %40, %6
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %10, align 8
  %26 = load i32, i32* %16, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %25, i64 %27
  store %struct.dsi_isr_data* %28, %struct.dsi_isr_data** %13, align 8
  %29 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %13, align 8
  %30 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %40

34:                                               ; preds = %24
  %35 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %13, align 8
  %36 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %45 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dsi_read_reg(%struct.dsi_data* %44, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = xor i32 %49, %50
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %51, %52
  %54 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dsi_write_reg(%struct.dsi_data* %48, i32 %55, i32 %53)
  %57 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dsi_write_reg(%struct.dsi_data* %57, i32 %60, i32 %58)
  %62 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %63 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dsi_read_reg(%struct.dsi_data* %62, i32 %64)
  %66 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %67 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dsi_read_reg(%struct.dsi_data* %66, i32 %68)
  ret void
}

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
