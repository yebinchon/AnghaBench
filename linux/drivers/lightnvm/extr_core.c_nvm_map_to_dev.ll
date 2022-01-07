; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_map_to_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_map_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { %struct.nvm_dev_map* }
%struct.nvm_dev_map = type { %struct.nvm_ch_map* }
%struct.nvm_ch_map = type { i32*, i64 }
%struct.ppa_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_tgt_dev*, %struct.ppa_addr*)* @nvm_map_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_map_to_dev(%struct.nvm_tgt_dev* %0, %struct.ppa_addr* %1) #0 {
  %3 = alloca %struct.nvm_tgt_dev*, align 8
  %4 = alloca %struct.ppa_addr*, align 8
  %5 = alloca %struct.nvm_dev_map*, align 8
  %6 = alloca %struct.nvm_ch_map*, align 8
  %7 = alloca i32, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %3, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %4, align 8
  %8 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %8, i32 0, i32 0
  %10 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %9, align 8
  store %struct.nvm_dev_map* %10, %struct.nvm_dev_map** %5, align 8
  %11 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %5, align 8
  %12 = getelementptr inbounds %struct.nvm_dev_map, %struct.nvm_dev_map* %11, i32 0, i32 0
  %13 = load %struct.nvm_ch_map*, %struct.nvm_ch_map** %12, align 8
  %14 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %15 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.nvm_ch_map, %struct.nvm_ch_map* %13, i64 %17
  store %struct.nvm_ch_map* %18, %struct.nvm_ch_map** %6, align 8
  %19 = load %struct.nvm_ch_map*, %struct.nvm_ch_map** %6, align 8
  %20 = getelementptr inbounds %struct.nvm_ch_map, %struct.nvm_ch_map* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %23 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.nvm_ch_map*, %struct.nvm_ch_map** %6, align 8
  %29 = getelementptr inbounds %struct.nvm_ch_map, %struct.nvm_ch_map* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %32 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %30
  store i64 %35, i64* %33, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %39 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %37
  store i64 %42, i64* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
