; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_map_to_tgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_map_to_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { %struct.nvm_dev* }
%struct.nvm_dev = type { %struct.nvm_dev_map* }
%struct.nvm_dev_map = type { %struct.nvm_ch_map* }
%struct.nvm_ch_map = type { i32*, i64 }
%struct.ppa_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_tgt_dev*, %struct.ppa_addr*)* @nvm_map_to_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_map_to_tgt(%struct.nvm_tgt_dev* %0, %struct.ppa_addr* %1) #0 {
  %3 = alloca %struct.nvm_tgt_dev*, align 8
  %4 = alloca %struct.ppa_addr*, align 8
  %5 = alloca %struct.nvm_dev*, align 8
  %6 = alloca %struct.nvm_dev_map*, align 8
  %7 = alloca %struct.nvm_ch_map*, align 8
  %8 = alloca i32, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %3, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %4, align 8
  %9 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %9, i32 0, i32 0
  %11 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  store %struct.nvm_dev* %11, %struct.nvm_dev** %5, align 8
  %12 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %13 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %12, i32 0, i32 0
  %14 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %13, align 8
  store %struct.nvm_dev_map* %14, %struct.nvm_dev_map** %6, align 8
  %15 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %6, align 8
  %16 = getelementptr inbounds %struct.nvm_dev_map, %struct.nvm_dev_map* %15, i32 0, i32 0
  %17 = load %struct.nvm_ch_map*, %struct.nvm_ch_map** %16, align 8
  %18 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %19 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.nvm_ch_map, %struct.nvm_ch_map* %17, i64 %21
  store %struct.nvm_ch_map* %22, %struct.nvm_ch_map** %7, align 8
  %23 = load %struct.nvm_ch_map*, %struct.nvm_ch_map** %7, align 8
  %24 = getelementptr inbounds %struct.nvm_ch_map, %struct.nvm_ch_map* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %27 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.nvm_ch_map*, %struct.nvm_ch_map** %7, align 8
  %33 = getelementptr inbounds %struct.nvm_ch_map, %struct.nvm_ch_map* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %36 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, %34
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.ppa_addr*, %struct.ppa_addr** %4, align 8
  %43 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %41
  store i64 %46, i64* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
