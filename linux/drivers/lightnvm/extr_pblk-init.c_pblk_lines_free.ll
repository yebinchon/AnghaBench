; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_lines_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_lines_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line*, %struct.pblk_line*, %struct.pblk_line_mgmt }
%struct.pblk_line = type { i32 }
%struct.pblk_line_mgmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_lines_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_lines_free(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_line_mgmt*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %6 = load %struct.pblk*, %struct.pblk** %2, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 2
  store %struct.pblk_line_mgmt* %7, %struct.pblk_line_mgmt** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %11 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.pblk*, %struct.pblk** %2, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 0
  %17 = load %struct.pblk_line*, %struct.pblk_line** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i64 %19
  store %struct.pblk_line* %20, %struct.pblk_line** %4, align 8
  %21 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %22 = call i32 @pblk_line_free(%struct.pblk_line* %21)
  %23 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %24 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %25 = call i32 @pblk_line_meta_free(%struct.pblk_line_mgmt* %23, %struct.pblk_line* %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.pblk*, %struct.pblk** %2, align 8
  %31 = call i32 @pblk_line_mg_free(%struct.pblk* %30)
  %32 = load %struct.pblk*, %struct.pblk** %2, align 8
  %33 = getelementptr inbounds %struct.pblk, %struct.pblk* %32, i32 0, i32 1
  %34 = load %struct.pblk_line*, %struct.pblk_line** %33, align 8
  %35 = call i32 @kfree(%struct.pblk_line* %34)
  %36 = load %struct.pblk*, %struct.pblk** %2, align 8
  %37 = getelementptr inbounds %struct.pblk, %struct.pblk* %36, i32 0, i32 0
  %38 = load %struct.pblk_line*, %struct.pblk_line** %37, align 8
  %39 = call i32 @kfree(%struct.pblk_line* %38)
  ret void
}

declare dso_local i32 @pblk_line_free(%struct.pblk_line*) #1

declare dso_local i32 @pblk_line_meta_free(%struct.pblk_line_mgmt*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_line_mg_free(%struct.pblk*) #1

declare dso_local i32 @kfree(%struct.pblk_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
