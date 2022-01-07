; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_disk_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_disk_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i64 (i32)*, %struct.log_c* }
%struct.log_c = type { i32, i32, i32, i64, i64, i32, i32 }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*)* @disk_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_flush(%struct.dm_dirty_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_dirty_log*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %3, align 8
  %7 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %3, align 8
  %8 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %7, i32 0, i32 1
  %9 = load %struct.log_c*, %struct.log_c** %8, align 8
  store %struct.log_c* %9, %struct.log_c** %6, align 8
  %10 = load %struct.log_c*, %struct.log_c** %6, align 8
  %11 = getelementptr inbounds %struct.log_c, %struct.log_c* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.log_c*, %struct.log_c** %6, align 8
  %16 = getelementptr inbounds %struct.log_c, %struct.log_c* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %92

20:                                               ; preds = %14, %1
  %21 = load %struct.log_c*, %struct.log_c** %6, align 8
  %22 = getelementptr inbounds %struct.log_c, %struct.log_c* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %3, align 8
  %27 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %26, i32 0, i32 0
  %28 = load i64 (i32)*, i64 (i32)** %27, align 8
  %29 = icmp ne i64 (i32)* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %3, align 8
  %32 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %31, i32 0, i32 0
  %33 = load i64 (i32)*, i64 (i32)** %32, align 8
  %34 = load %struct.log_c*, %struct.log_c** %6, align 8
  %35 = getelementptr inbounds %struct.log_c, %struct.log_c* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i64 %33(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %30
  %40 = load %struct.log_c*, %struct.log_c** %6, align 8
  %41 = getelementptr inbounds %struct.log_c, %struct.log_c* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.log_c*, %struct.log_c** %6, align 8
  %45 = getelementptr inbounds %struct.log_c, %struct.log_c* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.log_c*, %struct.log_c** %6, align 8
  %50 = load %struct.log_c*, %struct.log_c** %6, align 8
  %51 = getelementptr inbounds %struct.log_c, %struct.log_c* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @log_clear_bit(%struct.log_c* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %42

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %30, %25, %20
  %60 = load %struct.log_c*, %struct.log_c** %6, align 8
  %61 = load i32, i32* @REQ_OP_WRITE, align 4
  %62 = call i32 @rw_header(%struct.log_c* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.log_c*, %struct.log_c** %6, align 8
  %67 = call i32 @fail_log_device(%struct.log_c* %66)
  br label %90

68:                                               ; preds = %59
  %69 = load %struct.log_c*, %struct.log_c** %6, align 8
  %70 = getelementptr inbounds %struct.log_c, %struct.log_c* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.log_c*, %struct.log_c** %6, align 8
  %75 = call i32 @flush_header(%struct.log_c* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.log_c*, %struct.log_c** %6, align 8
  %80 = getelementptr inbounds %struct.log_c, %struct.log_c* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.log_c*, %struct.log_c** %6, align 8
  %82 = call i32 @fail_log_device(%struct.log_c* %81)
  br label %86

83:                                               ; preds = %73
  %84 = load %struct.log_c*, %struct.log_c** %6, align 8
  %85 = getelementptr inbounds %struct.log_c, %struct.log_c* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.log_c*, %struct.log_c** %6, align 8
  %89 = getelementptr inbounds %struct.log_c, %struct.log_c* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %65
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @log_clear_bit(%struct.log_c*, i32, i32) #1

declare dso_local i32 @rw_header(%struct.log_c*, i32) #1

declare dso_local i32 @fail_log_device(%struct.log_c*) #1

declare dso_local i32 @flush_header(%struct.log_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
