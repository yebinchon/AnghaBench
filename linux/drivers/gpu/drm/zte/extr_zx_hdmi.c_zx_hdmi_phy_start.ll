; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_phy_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_hdmi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_hdmi*)* @zx_hdmi_phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_hdmi_phy_start(%struct.zx_hdmi* %0) #0 {
  %2 = alloca %struct.zx_hdmi*, align 8
  store %struct.zx_hdmi* %0, %struct.zx_hdmi** %2, align 8
  %3 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %4 = call i32 @hdmi_writeb(%struct.zx_hdmi* %3, i32 546, i32 0)
  %5 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %6 = call i32 @hdmi_writeb(%struct.zx_hdmi* %5, i32 548, i32 4)
  %7 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %8 = call i32 @hdmi_writeb(%struct.zx_hdmi* %7, i32 2313, i32 0)
  %9 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %10 = call i32 @hdmi_writeb(%struct.zx_hdmi* %9, i32 1968, i32 144)
  %11 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %12 = call i32 @hdmi_writeb(%struct.zx_hdmi* %11, i32 1969, i32 0)
  %13 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %14 = call i32 @hdmi_writeb(%struct.zx_hdmi* %13, i32 1970, i32 167)
  %15 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %16 = call i32 @hdmi_writeb(%struct.zx_hdmi* %15, i32 1976, i32 170)
  %17 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %18 = call i32 @hdmi_writeb(%struct.zx_hdmi* %17, i32 1970, i32 167)
  %19 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %20 = call i32 @hdmi_writeb(%struct.zx_hdmi* %19, i32 1971, i32 15)
  %21 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %22 = call i32 @hdmi_writeb(%struct.zx_hdmi* %21, i32 1972, i32 15)
  %23 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %24 = call i32 @hdmi_writeb(%struct.zx_hdmi* %23, i32 1973, i32 85)
  %25 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %26 = call i32 @hdmi_writeb(%struct.zx_hdmi* %25, i32 1975, i32 3)
  %27 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %28 = call i32 @hdmi_writeb(%struct.zx_hdmi* %27, i32 1977, i32 18)
  %29 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %30 = call i32 @hdmi_writeb(%struct.zx_hdmi* %29, i32 1978, i32 50)
  %31 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %32 = call i32 @hdmi_writeb(%struct.zx_hdmi* %31, i32 1980, i32 104)
  %33 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %34 = call i32 @hdmi_writeb(%struct.zx_hdmi* %33, i32 1982, i32 64)
  %35 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %36 = call i32 @hdmi_writeb(%struct.zx_hdmi* %35, i32 1983, i32 132)
  %37 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %38 = call i32 @hdmi_writeb(%struct.zx_hdmi* %37, i32 1985, i32 15)
  %39 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %40 = call i32 @hdmi_writeb(%struct.zx_hdmi* %39, i32 1992, i32 2)
  %41 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %42 = call i32 @hdmi_writeb(%struct.zx_hdmi* %41, i32 1993, i32 3)
  %43 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %44 = call i32 @hdmi_writeb(%struct.zx_hdmi* %43, i32 1994, i32 64)
  %45 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %46 = call i32 @hdmi_writeb(%struct.zx_hdmi* %45, i32 2012, i32 49)
  %47 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %48 = call i32 @hdmi_writeb(%struct.zx_hdmi* %47, i32 2018, i32 4)
  %49 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %50 = call i32 @hdmi_writeb(%struct.zx_hdmi* %49, i32 2016, i32 6)
  %51 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %52 = call i32 @hdmi_writeb(%struct.zx_hdmi* %51, i32 1995, i32 104)
  %53 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %54 = call i32 @hdmi_writeb(%struct.zx_hdmi* %53, i32 2041, i32 2)
  %55 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %56 = call i32 @hdmi_writeb(%struct.zx_hdmi* %55, i32 1974, i32 2)
  %57 = load %struct.zx_hdmi*, %struct.zx_hdmi** %2, align 8
  %58 = call i32 @hdmi_writeb(%struct.zx_hdmi* %57, i32 2035, i32 0)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.zx_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
