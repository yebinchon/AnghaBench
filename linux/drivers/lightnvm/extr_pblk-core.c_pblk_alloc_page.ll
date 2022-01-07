; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.pblk_line = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"pblk: page allocation out of bounds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_alloc_page(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %9 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.pblk*, %struct.pblk** %4, align 8
  %12 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @__pblk_alloc_page(%struct.pblk* %11, %struct.pblk_line* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %22 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__pblk_alloc_page(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
