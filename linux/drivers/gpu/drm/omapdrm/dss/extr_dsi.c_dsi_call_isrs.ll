; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_call_isrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_call_isrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_isr_data = type { i32, i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_isr_data*, i32, i32)* @dsi_call_isrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_call_isrs(%struct.dsi_isr_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsi_isr_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsi_isr_data*, align 8
  %8 = alloca i32, align 4
  store %struct.dsi_isr_data* %0, %struct.dsi_isr_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %14, i64 %16
  store %struct.dsi_isr_data* %17, %struct.dsi_isr_data** %7, align 8
  %18 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %7, align 8
  %19 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %18, i32 0, i32 2
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = icmp ne i32 (i32, i32)* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %13
  %23 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %7, align 8
  %24 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %7, align 8
  %31 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %30, i32 0, i32 2
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %7, align 8
  %34 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 %32(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %22, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
