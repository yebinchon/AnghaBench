; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, i32, i32, %struct.bio_list, %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }
%struct.thin_c = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @process_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_deferred_bios(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.bio_list, align 4
  %7 = alloca %struct.thin_c*, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %8 = load %struct.pool*, %struct.pool** %2, align 8
  %9 = call %struct.thin_c* @get_first_thin(%struct.pool* %8)
  store %struct.thin_c* %9, %struct.thin_c** %7, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %12 = icmp ne %struct.thin_c* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %15 = call i32 @process_thin_deferred_cells(%struct.thin_c* %14)
  %16 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %17 = call i32 @process_thin_deferred_bios(%struct.thin_c* %16)
  %18 = load %struct.pool*, %struct.pool** %2, align 8
  %19 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %20 = call %struct.thin_c* @get_next_thin(%struct.pool* %18, %struct.thin_c* %19)
  store %struct.thin_c* %20, %struct.thin_c** %7, align 8
  br label %10

21:                                               ; preds = %10
  %22 = call i32 @bio_list_init(%struct.bio_list* %5)
  %23 = call i32 @bio_list_init(%struct.bio_list* %6)
  %24 = load %struct.pool*, %struct.pool** %2, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 2
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.pool*, %struct.pool** %2, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 4
  %30 = call i32 @bio_list_merge(%struct.bio_list* %5, %struct.bio_list* %29)
  %31 = load %struct.pool*, %struct.pool** %2, align 8
  %32 = getelementptr inbounds %struct.pool, %struct.pool* %31, i32 0, i32 4
  %33 = call i32 @bio_list_init(%struct.bio_list* %32)
  %34 = load %struct.pool*, %struct.pool** %2, align 8
  %35 = getelementptr inbounds %struct.pool, %struct.pool* %34, i32 0, i32 3
  %36 = call i32 @bio_list_merge(%struct.bio_list* %6, %struct.bio_list* %35)
  %37 = load %struct.pool*, %struct.pool** %2, align 8
  %38 = getelementptr inbounds %struct.pool, %struct.pool* %37, i32 0, i32 3
  %39 = call i32 @bio_list_init(%struct.bio_list* %38)
  %40 = load %struct.pool*, %struct.pool** %2, align 8
  %41 = getelementptr inbounds %struct.pool, %struct.pool* %40, i32 0, i32 2
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = call i64 @bio_list_empty(%struct.bio_list* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %21
  %47 = call i64 @bio_list_empty(%struct.bio_list* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.pool*, %struct.pool** %2, align 8
  %51 = getelementptr inbounds %struct.pool, %struct.pool* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @dm_pool_changed_this_transaction(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.pool*, %struct.pool** %2, align 8
  %57 = call i64 @need_commit_due_to_time(%struct.pool* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %49
  br label %90

60:                                               ; preds = %55, %46, %21
  %61 = load %struct.pool*, %struct.pool** %2, align 8
  %62 = call i64 @commit(%struct.pool* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = call i32 @bio_list_merge(%struct.bio_list* %5, %struct.bio_list* %6)
  br label %66

66:                                               ; preds = %69, %64
  %67 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %67, %struct.bio** %4, align 8
  %68 = icmp ne %struct.bio* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = call i32 @bio_io_error(%struct.bio* %70)
  br label %66

72:                                               ; preds = %66
  br label %90

73:                                               ; preds = %60
  %74 = load i32, i32* @jiffies, align 4
  %75 = load %struct.pool*, %struct.pool** %2, align 8
  %76 = getelementptr inbounds %struct.pool, %struct.pool* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %80, %73
  %78 = call %struct.bio* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio* %78, %struct.bio** %4, align 8
  %79 = icmp ne %struct.bio* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.bio*, %struct.bio** %4, align 8
  %82 = call i32 @bio_endio(%struct.bio* %81)
  br label %77

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %87, %83
  %85 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %85, %struct.bio** %4, align 8
  %86 = icmp ne %struct.bio* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = call i32 @generic_make_request(%struct.bio* %88)
  br label %84

90:                                               ; preds = %59, %72, %84
  ret void
}

declare dso_local %struct.thin_c* @get_first_thin(%struct.pool*) #1

declare dso_local i32 @process_thin_deferred_cells(%struct.thin_c*) #1

declare dso_local i32 @process_thin_deferred_bios(%struct.thin_c*) #1

declare dso_local %struct.thin_c* @get_next_thin(%struct.pool*, %struct.thin_c*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i64 @dm_pool_changed_this_transaction(i32) #1

declare dso_local i64 @need_commit_due_to_time(%struct.pool*) #1

declare dso_local i64 @commit(%struct.pool*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
