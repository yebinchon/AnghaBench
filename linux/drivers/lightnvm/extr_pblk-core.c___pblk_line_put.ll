; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_line_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_line_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_gc, %struct.pblk_line_mgmt }
%struct.pblk_gc = type { i32 }
%struct.pblk_line_mgmt = type { i32, i32, i32 }
%struct.pblk_line = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PBLK_LINESTATE_GC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"line %d had errors during GC\0A\00", align 1
@PBLK_LINESTATE_FREE = common dso_local global i64 0, align 8
@PBLK_LINEGC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.pblk_line*)* @__pblk_line_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pblk_line_put(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_mgmt*, align 8
  %6 = alloca %struct.pblk_gc*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %7 = load %struct.pblk*, %struct.pblk** %3, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 2
  store %struct.pblk_line_mgmt* %8, %struct.pblk_line_mgmt** %5, align 8
  %9 = load %struct.pblk*, %struct.pblk** %3, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 1
  store %struct.pblk_gc* %10, %struct.pblk_gc** %6, align 8
  %11 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %12 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PBLK_LINESTATE_GC, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %22 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %29 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.pblk*, %struct.pblk** %3, align 8
  %32 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %33 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pblk_err(%struct.pblk* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.pblk*, %struct.pblk** %3, align 8
  %37 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %38 = call i32 @pblk_put_line_back(%struct.pblk* %36, %struct.pblk_line* %37)
  %39 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %40 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %101

43:                                               ; preds = %2
  %44 = load i64, i64* @PBLK_LINESTATE_FREE, align 8
  %45 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %46 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.pblk*, %struct.pblk** %3, align 8
  %48 = call i32 @pblk_disk_name(%struct.pblk* %47)
  %49 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %50 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %53 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @trace_pblk_line_state(i32 %48, i32 %51, i64 %54)
  %56 = load i32, i32* @PBLK_LINEGC_NONE, align 4
  %57 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %58 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %60 = call i32 @pblk_line_free(%struct.pblk_line* %59)
  %61 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %62 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %43
  %68 = load %struct.pblk*, %struct.pblk** %3, align 8
  %69 = getelementptr inbounds %struct.pblk, %struct.pblk* %68, i32 0, i32 0
  %70 = call i32 @pblk_rl_werr_line_out(i32* %69)
  %71 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %72 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %43
  %76 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %77 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %80 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %79, i32 0, i32 0
  %81 = call i32 @atomic_dec(i32* %80)
  %82 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %83 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %82, i32 0, i32 0
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %86 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %85, i32 0, i32 1
  %87 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %88 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %87, i32 0, i32 2
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  %90 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %91 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %95 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.pblk*, %struct.pblk** %3, align 8
  %98 = getelementptr inbounds %struct.pblk, %struct.pblk* %97, i32 0, i32 0
  %99 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %100 = call i32 @pblk_rl_free_lines_inc(i32* %98, %struct.pblk_line* %99)
  br label %101

101:                                              ; preds = %75, %27
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @pblk_put_line_back(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i64) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @pblk_line_free(%struct.pblk_line*) #1

declare dso_local i32 @pblk_rl_werr_line_out(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pblk_rl_free_lines_inc(i32*, %struct.pblk_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
