; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_mc_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_mc_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KNL_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @knl_get_mc_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knl_get_mc_route(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 3
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 3
  %17 = add nsw i32 %16, 2
  %18 = call i32 @GET_BITFIELD(i32 %12, i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 18
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 18
  %26 = add nsw i32 %25, 1
  %27 = call i32 @GET_BITFIELD(i32 %19, i32 %22, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @knl_channel_remap(i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @GET_BITFIELD(i32, i32, i32) #1

declare dso_local i32 @knl_channel_remap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
