; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_put_line_back.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_put_line_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line = type { i64, i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@PBLK_LINESTATE_GC = common dso_local global i64 0, align 8
@PBLK_LINESTATE_CLOSED = common dso_local global i64 0, align 8
@PBLK_LINEGC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_put_line_back(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_mgmt*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %7 = load %struct.pblk*, %struct.pblk** %3, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 0
  store %struct.pblk_line_mgmt* %8, %struct.pblk_line_mgmt** %5, align 8
  %9 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %10 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %13 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %16 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PBLK_LINESTATE_GC, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i64, i64* @PBLK_LINESTATE_CLOSED, align 8
  %23 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %24 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.pblk*, %struct.pblk** %3, align 8
  %26 = call i32 @pblk_disk_name(%struct.pblk* %25)
  %27 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %31 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @trace_pblk_line_state(i32 %26, i32 %29, i64 %32)
  %34 = load i32, i32* @PBLK_LINEGC_NONE, align 4
  %35 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %36 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pblk*, %struct.pblk** %3, align 8
  %38 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %39 = call %struct.list_head* @pblk_line_gc_list(%struct.pblk* %37, %struct.pblk_line* %38)
  store %struct.list_head* %39, %struct.list_head** %6, align 8
  %40 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %41 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %44 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %43, i32 0, i32 1
  %45 = load %struct.list_head*, %struct.list_head** %6, align 8
  %46 = call i32 @list_add_tail(i32* %44, %struct.list_head* %45)
  %47 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %48 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i64) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local %struct.list_head* @pblk_line_gc_list(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
