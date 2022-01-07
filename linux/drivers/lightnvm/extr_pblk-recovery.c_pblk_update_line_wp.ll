; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_update_line_wp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_update_line_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.pblk_line*, i32)* @pblk_update_line_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_update_line_wp(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pblk_line_mgmt*, align 8
  %8 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pblk*, %struct.pblk** %4, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 1
  store %struct.pblk_line_mgmt* %10, %struct.pblk_line_mgmt** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %22, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.pblk*, %struct.pblk** %4, align 8
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = load %struct.pblk*, %struct.pblk** %4, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @__pblk_alloc_page(%struct.pblk* %16, %struct.pblk_line* %17, i64 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.pblk*, %struct.pblk** %4, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %32 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %36 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %41 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %45 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %50 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  ret void
}

declare dso_local i32 @__pblk_alloc_page(%struct.pblk*, %struct.pblk_line*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
