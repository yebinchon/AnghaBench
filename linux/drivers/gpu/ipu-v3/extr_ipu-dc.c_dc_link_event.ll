; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_dc_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_dc_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_dc*, i32, i32, i32)* @dc_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_link_event(%struct.ipu_dc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_dc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipu_dc* %0, %struct.ipu_dc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ipu_dc*, %struct.ipu_dc** %5, align 8
  %11 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @DC_RL_CH(i32 %13)
  %15 = add nsw i64 %12, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = mul nsw i32 16, %18
  %20 = shl i32 65535, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1
  %30 = mul nsw i32 16, %29
  %31 = shl i32 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ipu_dc*, %struct.ipu_dc** %5, align 8
  %36 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @DC_RL_CH(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DC_RL_CH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
