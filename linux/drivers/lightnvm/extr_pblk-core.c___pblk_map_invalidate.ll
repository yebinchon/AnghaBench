; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_map_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_map_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line = type { i64, i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@PBLK_LINESTATE_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"pblk: double invalidate\0A\00", align 1
@PBLK_LINESTATE_CLOSED = common dso_local global i64 0, align 8
@PBLK_LINESTATE_GC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pblk_map_invalidate(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pblk_line_mgmt*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pblk*, %struct.pblk** %4, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 0
  store %struct.pblk_line_mgmt* %10, %struct.pblk_line_mgmt** %7, align 8
  store %struct.list_head* null, %struct.list_head** %8, align 8
  %11 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %12 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PBLK_LINESTATE_FREE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %23 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_and_set_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock(i32* %30)
  br label %82

32:                                               ; preds = %3
  %33 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %34 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_add_cpu(i32 %35, i32 -1)
  %37 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %38 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PBLK_LINESTATE_CLOSED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.pblk*, %struct.pblk** %4, align 8
  %44 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %45 = call %struct.list_head* @pblk_line_gc_list(%struct.pblk* %43, %struct.pblk_line* %44)
  store %struct.list_head* %45, %struct.list_head** %8, align 8
  br label %46

46:                                               ; preds = %42, %32
  %47 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %48 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.list_head*, %struct.list_head** %8, align 8
  %51 = icmp ne %struct.list_head* %50, null
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %54 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %57 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %56, i32 0, i32 2
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %60 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PBLK_LINESTATE_GC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %66 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %69 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  br label %82

71:                                               ; preds = %52
  %72 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %73 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %76 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %75, i32 0, i32 1
  %77 = load %struct.list_head*, %struct.list_head** %8, align 8
  %78 = call i32 @list_move_tail(i32* %76, %struct.list_head* %77)
  %79 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %80 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  br label %82

82:                                               ; preds = %27, %64, %71, %46
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @le32_add_cpu(i32, i32) #1

declare dso_local %struct.list_head* @pblk_line_gc_list(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
