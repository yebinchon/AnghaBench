; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32, i32, i32 }
%struct.pblk_line = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PBLK_LINESTATE_NEW = common dso_local global i64 0, align 8
@PBLK_LINESTATE_FREE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pblk: corrupted line %d, state %d\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@PBLK_LINESTATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_line_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_prepare(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %9 = load %struct.pblk*, %struct.pblk** %4, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 0
  store %struct.pblk_line_meta* %10, %struct.pblk_line_meta** %6, align 8
  %11 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %12 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %11, i32 0, i32 10
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %21 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bitmap_copy(i32 %16, i32 %19, i32 %22)
  %24 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %25 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PBLK_LINESTATE_NEW, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load %struct.pblk*, %struct.pblk** %4, align 8
  %34 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %35 = call i32 @pblk_prepare_new_line(%struct.pblk* %33, %struct.pblk_line* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i64, i64* @PBLK_LINESTATE_FREE, align 8
  %37 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %38 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.pblk*, %struct.pblk** %4, align 8
  %40 = call i32 @pblk_disk_name(%struct.pblk* %39)
  %41 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %45 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @trace_pblk_line_state(i32 %40, i32 %43, i64 %46)
  br label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %32
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %53 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %58 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %57, i32 0, i32 3
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %116

62:                                               ; preds = %50
  %63 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %64 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PBLK_LINESTATE_FREE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %70 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %73 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %74)
  %76 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %77 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i32, i32* @EINTR, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %116

81:                                               ; preds = %62
  %82 = load i64, i64* @PBLK_LINESTATE_OPEN, align 8
  %83 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %84 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.pblk*, %struct.pblk** %4, align 8
  %86 = call i32 @pblk_disk_name(%struct.pblk* %85)
  %87 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %88 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %91 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @trace_pblk_line_state(i32 %86, i32 %89, i64 %92)
  %94 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %95 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %94, i32 0, i32 6
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @atomic_set(i32* %95, i32 %96)
  %98 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %99 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %98, i32 0, i32 5
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @atomic_set(i32* %99, i32 %100)
  %102 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %103 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %106 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %108 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %107, i32 0, i32 3
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %111 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %110, i32 0, i32 2
  %112 = call i32 @kref_init(i32* %111)
  %113 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %114 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %113, i32 0, i32 1
  %115 = call i32 @atomic_set(i32* %114, i32 0)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %81, %68, %56
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_prepare_new_line(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i64) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
