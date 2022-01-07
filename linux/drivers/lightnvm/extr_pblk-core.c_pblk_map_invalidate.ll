; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_map_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_map_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_map_invalidate(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.ppa_addr, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  %8 = load %struct.pblk*, %struct.pblk** %4, align 8
  %9 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %8, i32 %10)
  store %struct.pblk_line* %11, %struct.pblk_line** %5, align 8
  %12 = load %struct.pblk*, %struct.pblk** %4, align 8
  %13 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pblk_dev_ppa_to_line_addr(%struct.pblk* %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pblk*, %struct.pblk** %4, align 8
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__pblk_map_invalidate(%struct.pblk* %16, %struct.pblk_line* %17, i32 %18)
  ret void
}

declare dso_local %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_dev_ppa_to_line_addr(%struct.pblk*, i32) #1

declare dso_local i32 @__pblk_map_invalidate(%struct.pblk*, %struct.pblk_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
