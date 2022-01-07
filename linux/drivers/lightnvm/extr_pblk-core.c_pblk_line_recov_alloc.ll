; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_recov_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_recov_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, i32, %struct.pblk_line* }
%struct.pblk_line = type { i32 }

@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_line_recov_alloc(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_mgmt*, align 8
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %8 = load %struct.pblk*, %struct.pblk** %4, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 1
  store %struct.pblk_line_mgmt* %9, %struct.pblk_line_mgmt** %6, align 8
  %10 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %11 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %14 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %15 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %14, i32 0, i32 2
  store %struct.pblk_line* %13, %struct.pblk_line** %15, align 8
  %16 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %17 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.pblk*, %struct.pblk** %4, align 8
  %20 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %21 = call i32 @pblk_line_prepare(%struct.pblk* %19, %struct.pblk_line* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 0
  %27 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %28 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %26, i32* %28)
  %30 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %31 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %2
  %35 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %36 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.pblk*, %struct.pblk** %4, align 8
  %39 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %40 = call i32 @pblk_line_alloc_bitmaps(%struct.pblk* %38, %struct.pblk_line* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %57

44:                                               ; preds = %34
  %45 = load %struct.pblk*, %struct.pblk** %4, align 8
  %46 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %47 = call i32 @pblk_line_init_bb(%struct.pblk* %45, %struct.pblk_line* %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINTR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load %struct.pblk*, %struct.pblk** %4, align 8
  %54 = getelementptr inbounds %struct.pblk, %struct.pblk* %53, i32 0, i32 0
  %55 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %56 = call i32 @pblk_rl_free_lines_dec(i32* %54, %struct.pblk_line* %55, i32 1)
  store i32 0, i32* %3, align 4
  br label %70

57:                                               ; preds = %49, %43
  %58 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %59 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %58, i32 0, i32 0
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %62 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %61, i32 0, i32 0
  %63 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %64 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %63, i32 0, i32 1
  %65 = call i32 @list_add(i32* %62, i32* %64)
  %66 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %67 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %52, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pblk_line_prepare(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_line_alloc_bitmaps(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_line_init_bb(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @pblk_rl_free_lines_dec(i32*, %struct.pblk_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
