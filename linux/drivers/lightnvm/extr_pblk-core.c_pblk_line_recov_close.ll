; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_recov_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_recov_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_line_recov_close(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_mgmt*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %6 = load %struct.pblk*, %struct.pblk** %3, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 0
  store %struct.pblk_line_mgmt* %7, %struct.pblk_line_mgmt** %5, align 8
  %8 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %9 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %12 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mempool_free(i32* %10, i32 %13)
  %15 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %16 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %20 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @mempool_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
