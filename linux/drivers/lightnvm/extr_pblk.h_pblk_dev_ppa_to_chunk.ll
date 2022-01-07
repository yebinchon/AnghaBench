; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_dev_ppa_to_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_dev_ppa_to_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_chk_meta = type { i32 }
%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { %struct.nvm_chk_meta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvm_chk_meta* (%struct.pblk*, i32)* @pblk_dev_ppa_to_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvm_chk_meta* @pblk_dev_ppa_to_chunk(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.ppa_addr, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.pblk_line*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %11, align 8
  store %struct.nvm_tgt_dev* %12, %struct.nvm_tgt_dev** %5, align 8
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  store %struct.nvm_geo* %14, %struct.nvm_geo** %6, align 8
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %15, i32 %17)
  store %struct.pblk_line* %18, %struct.pblk_line** %7, align 8
  %19 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %20 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %24 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %23, i32 0, i32 0
  %25 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %25, i64 %27
  ret %struct.nvm_chk_meta* %28
}

declare dso_local %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
