; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_sg_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_sg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.talitos_edesc = type { i32 }
%struct.talitos_ptr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, i32, %struct.talitos_edesc*, %struct.talitos_ptr*, i32, i32, i32)* @talitos_sg_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_sg_map(%struct.device* %0, %struct.scatterlist* %1, i32 %2, %struct.talitos_edesc* %3, %struct.talitos_ptr* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.talitos_edesc*, align 8
  %13 = alloca %struct.talitos_ptr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.talitos_edesc* %3, %struct.talitos_edesc** %12, align 8
  store %struct.talitos_ptr* %4, %struct.talitos_ptr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.talitos_edesc*, %struct.talitos_edesc** %12, align 8
  %21 = load %struct.talitos_ptr*, %struct.talitos_ptr** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @talitos_sg_map_ext(%struct.device* %17, %struct.scatterlist* %18, i32 %19, %struct.talitos_edesc* %20, %struct.talitos_ptr* %21, i32 %22, i32 %23, i32 %24, i32 0, i32 0)
  ret i32 %25
}

declare dso_local i32 @talitos_sg_map_ext(%struct.device*, %struct.scatterlist*, i32, %struct.talitos_edesc*, %struct.talitos_ptr*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
