; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, %struct.pblk_line* }
%struct.pblk_line = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"tear down padding failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_recov_pad(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_mgmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %8 = load %struct.pblk*, %struct.pblk** %3, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 0
  store %struct.pblk_line_mgmt* %9, %struct.pblk_line_mgmt** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %11 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %14 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %13, i32 0, i32 1
  %15 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  store %struct.pblk_line* %15, %struct.pblk_line** %4, align 8
  %16 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %17 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %20 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.pblk*, %struct.pblk** %3, align 8
  %23 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pblk_recov_pad_line(%struct.pblk* %22, %struct.pblk_line* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.pblk*, %struct.pblk** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pblk_err(%struct.pblk* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.pblk*, %struct.pblk** %3, align 8
  %35 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %36 = call i32 @pblk_line_close_meta(%struct.pblk* %34, %struct.pblk_line* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_recov_pad_line(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @pblk_line_close_meta(%struct.pblk*, %struct.pblk_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
