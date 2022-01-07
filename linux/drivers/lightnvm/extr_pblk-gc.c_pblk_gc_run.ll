; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.TYPE_2__, %struct.pblk_gc, %struct.pblk_line_mgmt }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_gc = type { i32, i32, i32 }
%struct.pblk_line_mgmt = type { i32, %struct.list_head** }
%struct.list_head = type { i32 }
%struct.pblk_line = type { i64, i32, i32, i32 }

@PBLK_GC_L_QD = common dso_local global i32 0, align 4
@PBLK_LINESTATE_CLOSED = common dso_local global i64 0, align 8
@PBLK_LINESTATE_GC = common dso_local global i64 0, align 8
@PBLK_GC_NR_LISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_gc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_gc_run(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_line_mgmt*, align 8
  %4 = alloca %struct.pblk_gc*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %11 = load %struct.pblk*, %struct.pblk** %2, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 2
  store %struct.pblk_line_mgmt* %12, %struct.pblk_line_mgmt** %3, align 8
  %13 = load %struct.pblk*, %struct.pblk** %2, align 8
  %14 = getelementptr inbounds %struct.pblk, %struct.pblk* %13, i32 0, i32 1
  store %struct.pblk_gc* %14, %struct.pblk_gc** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.pblk*, %struct.pblk** %2, align 8
  %16 = call i32 @pblk_gc_free_full_lines(%struct.pblk* %15)
  %17 = load %struct.pblk*, %struct.pblk** %2, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 1
  %19 = load %struct.pblk*, %struct.pblk** %2, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 0
  %21 = call i32 @pblk_gc_should_run(%struct.pblk_gc* %18, %struct.TYPE_2__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %26 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* @PBLK_GC_L_QD, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %1
  br label %131

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %130, %31
  %33 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %34 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %33, i32 0, i32 1
  %35 = load %struct.list_head**, %struct.list_head*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.list_head*, %struct.list_head** %35, i64 %38
  %40 = load %struct.list_head*, %struct.list_head** %39, align 8
  store %struct.list_head* %40, %struct.list_head** %6, align 8
  br label %41

41:                                               ; preds = %115, %32
  %42 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %43 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.pblk*, %struct.pblk** %2, align 8
  %46 = load %struct.list_head*, %struct.list_head** %6, align 8
  %47 = call %struct.pblk_line* @pblk_gc_get_victim_line(%struct.pblk* %45, %struct.list_head* %46)
  store %struct.pblk_line* %47, %struct.pblk_line** %5, align 8
  %48 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %49 = icmp ne %struct.pblk_line* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %52 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %116

54:                                               ; preds = %41
  %55 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %56 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %55, i32 0, i32 2
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %59 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PBLK_LINESTATE_CLOSED, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load i64, i64* @PBLK_LINESTATE_GC, align 8
  %66 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %67 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.pblk*, %struct.pblk** %2, align 8
  %69 = call i32 @pblk_disk_name(%struct.pblk* %68)
  %70 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %71 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %74 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @trace_pblk_line_state(i32 %69, i32 %72, i64 %75)
  %77 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %78 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %77, i32 0, i32 2
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %81 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %80, i32 0, i32 1
  %82 = call i32 @list_del(i32* %81)
  %83 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %84 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %87 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %86, i32 0, i32 1
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %90 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %89, i32 0, i32 1
  %91 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %92 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %91, i32 0, i32 2
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  %94 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %95 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %98 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %97, i32 0, i32 0
  %99 = call i32 @atomic_inc_return(i32* %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %101 = call i32 @pblk_gc_reader_kick(%struct.pblk_gc* %100)
  store i32 1, i32* %10, align 4
  %102 = load %struct.pblk*, %struct.pblk** %2, align 8
  %103 = getelementptr inbounds %struct.pblk, %struct.pblk* %102, i32 0, i32 1
  %104 = load %struct.pblk*, %struct.pblk** %2, align 8
  %105 = getelementptr inbounds %struct.pblk, %struct.pblk* %104, i32 0, i32 0
  %106 = call i32 @pblk_gc_should_run(%struct.pblk_gc* %103, %struct.TYPE_2__* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %54
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @PBLK_GC_L_QD, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %54
  br label %116

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114
  br i1 true, label %41, label %116

116:                                              ; preds = %115, %113, %50
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %116
  %120 = load %struct.pblk*, %struct.pblk** %2, align 8
  %121 = getelementptr inbounds %struct.pblk, %struct.pblk* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @PBLK_GC_NR_LISTS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %32

131:                                              ; preds = %30, %126, %119, %116
  ret void
}

declare dso_local i32 @pblk_gc_free_full_lines(%struct.pblk*) #1

declare dso_local i32 @pblk_gc_should_run(%struct.pblk_gc*, %struct.TYPE_2__*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pblk_line* @pblk_gc_get_victim_line(%struct.pblk*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i64) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @pblk_gc_reader_kick(%struct.pblk_gc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
