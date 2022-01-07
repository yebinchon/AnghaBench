; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_get_tp_finger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_get_tp_finger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_finger = type { i32 }
%struct.bcm5974 = type { i32*, %struct.bcm5974_config }
%struct.bcm5974_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tp_finger* (%struct.bcm5974*, i32)* @get_tp_finger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tp_finger* @get_tp_finger(%struct.bcm5974* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm5974*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm5974_config*, align 8
  %6 = alloca i32*, align 8
  store %struct.bcm5974* %0, %struct.bcm5974** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %8 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %7, i32 0, i32 1
  store %struct.bcm5974_config* %8, %struct.bcm5974_config** %5, align 8
  %9 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %10 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %13 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %18 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.bcm5974_config*, %struct.bcm5974_config** %5, align 8
  %25 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  %30 = bitcast i32* %29 to %struct.tp_finger*
  ret %struct.tp_finger* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
