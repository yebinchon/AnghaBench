; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line = type { i32*, i32*, i32*, i32*, i32* }

@EMPTY_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk_line*)* @pblk_line_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_line_reinit(%struct.pblk_line* %0) #0 {
  %2 = alloca %struct.pblk_line*, align 8
  store %struct.pblk_line* %0, %struct.pblk_line** %2, align 8
  %3 = load i32, i32* @EMPTY_ENTRY, align 4
  %4 = call i32 @cpu_to_le32(i32 %3)
  %5 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  %6 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  store i32 %4, i32* %7, align 4
  %8 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  %9 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  %11 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  %13 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
