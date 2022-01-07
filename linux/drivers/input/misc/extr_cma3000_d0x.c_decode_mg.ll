; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_decode_mg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_decode_mg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma3000_accl_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cma3000_accl_data*, i32*, i32*, i32*)* @decode_mg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_mg(%struct.cma3000_accl_data* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.cma3000_accl_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cma3000_accl_data* %0, %struct.cma3000_accl_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %5, align 8
  %12 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %5, align 8
  %19 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %5, align 8
  %26 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
