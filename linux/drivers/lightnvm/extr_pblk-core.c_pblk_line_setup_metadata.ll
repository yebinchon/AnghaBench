; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_setup_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_setup_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.pblk_line_mgmt = type { %struct.TYPE_2__**, i32*, i32, i32 }
%struct.pblk_line_meta = type { i32*, i32 }

@PBLK_DATA_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk_line*, %struct.pblk_line_mgmt*, %struct.pblk_line_meta*)* @pblk_line_setup_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_line_setup_metadata(%struct.pblk_line* %0, %struct.pblk_line_mgmt* %1, %struct.pblk_line_meta* %2) #0 {
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_mgmt*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca i32, align 4
  store %struct.pblk_line* %0, %struct.pblk_line** %4, align 8
  store %struct.pblk_line_mgmt* %1, %struct.pblk_line_mgmt** %5, align 8
  store %struct.pblk_line_meta* %2, %struct.pblk_line_meta** %6, align 8
  %8 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %9 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %8, i32 0, i32 3
  %10 = call i32 @lockdep_assert_held(i32* %9)
  br label %11

11:                                               ; preds = %19, %3
  %12 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %13 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %12, i32 0, i32 2
  %14 = load i32, i32* @PBLK_DATA_LINES, align 4
  %15 = call i32 @find_first_zero_bit(i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PBLK_DATA_LINES, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %21 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %20, i32 0, i32 3
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = call i32 (...) @io_schedule()
  %24 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %25 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %34 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %36 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %43 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %45 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %52 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %51, i32 0, i32 1
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %52, align 8
  %53 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %54 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %57 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memset(i32 %55, i32 0, i32 %58)
  %60 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %61 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %66 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memset(i32 %64, i32 0, i32 %69)
  %71 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %72 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %76 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
