; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_ppa_to_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_ppa_to_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line = type { i32 }
%struct.pblk = type { %struct.pblk_line* }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pblk_line* (%struct.pblk*, i32)* @pblk_ppa_to_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.ppa_addr, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  %6 = load %struct.pblk*, %struct.pblk** %4, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 0
  %8 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %9 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @pblk_ppa_to_line_id(i32 %10)
  %12 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %8, i64 %11
  ret %struct.pblk_line* %12
}

declare dso_local i64 @pblk_ppa_to_line_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
