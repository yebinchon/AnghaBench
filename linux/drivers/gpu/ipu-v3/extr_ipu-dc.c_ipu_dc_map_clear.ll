; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_ipu_dc_map_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_ipu_dc_map_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dc_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_dc_priv*, i32)* @ipu_dc_map_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_dc_map_clear(%struct.ipu_dc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_dc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipu_dc_priv* %0, %struct.ipu_dc_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @DC_MAP_CONF_PTR(i32 %9)
  %11 = add nsw i64 %8, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = mul nsw i32 16, %15
  %17 = shl i32 65535, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %13, %18
  %20 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @DC_MAP_CONF_PTR(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @writel(i32 %19, i64 %25)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DC_MAP_CONF_PTR(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
