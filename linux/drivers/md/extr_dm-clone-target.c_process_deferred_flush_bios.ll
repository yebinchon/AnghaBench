; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_process_deferred_flush_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_process_deferred_flush_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_list = type { i32 }
%struct.clone = type { i32, i32, i32, %struct.bio_list, %struct.bio_list }
%struct.bio = type { i32 }

@BIO_EMPTY_LIST = common dso_local global %struct.bio_list zeroinitializer, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*)* @process_deferred_flush_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_deferred_flush_bios(%struct.clone* %0) #0 {
  %2 = alloca %struct.clone*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.bio_list, align 4
  store %struct.clone* %0, %struct.clone** %2, align 8
  %7 = bitcast %struct.bio_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.bio_list* @BIO_EMPTY_LIST to i8*), i64 4, i1 false)
  %8 = bitcast %struct.bio_list* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.bio_list* @BIO_EMPTY_LIST to i8*), i64 4, i1 false)
  %9 = load %struct.clone*, %struct.clone** %2, align 8
  %10 = getelementptr inbounds %struct.clone, %struct.clone* %9, i32 0, i32 2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.clone*, %struct.clone** %2, align 8
  %14 = getelementptr inbounds %struct.clone, %struct.clone* %13, i32 0, i32 4
  %15 = call i32 @bio_list_merge(%struct.bio_list* %5, %struct.bio_list* %14)
  %16 = load %struct.clone*, %struct.clone** %2, align 8
  %17 = getelementptr inbounds %struct.clone, %struct.clone* %16, i32 0, i32 4
  %18 = call i32 @bio_list_init(%struct.bio_list* %17)
  %19 = load %struct.clone*, %struct.clone** %2, align 8
  %20 = getelementptr inbounds %struct.clone, %struct.clone* %19, i32 0, i32 3
  %21 = call i32 @bio_list_merge(%struct.bio_list* %6, %struct.bio_list* %20)
  %22 = load %struct.clone*, %struct.clone** %2, align 8
  %23 = getelementptr inbounds %struct.clone, %struct.clone* %22, i32 0, i32 3
  %24 = call i32 @bio_list_init(%struct.bio_list* %23)
  %25 = load %struct.clone*, %struct.clone** %2, align 8
  %26 = getelementptr inbounds %struct.clone, %struct.clone* %25, i32 0, i32 2
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = call i64 @bio_list_empty(%struct.bio_list* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %1
  %32 = call i64 @bio_list_empty(%struct.bio_list* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.clone*, %struct.clone** %2, align 8
  %36 = getelementptr inbounds %struct.clone, %struct.clone* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dm_clone_changed_this_transaction(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.clone*, %struct.clone** %2, align 8
  %42 = call i64 @need_commit_due_to_time(%struct.clone* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %34
  br label %75

45:                                               ; preds = %40, %31, %1
  %46 = load %struct.clone*, %struct.clone** %2, align 8
  %47 = call i64 @commit_metadata(%struct.clone* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = call i32 @bio_list_merge(%struct.bio_list* %5, %struct.bio_list* %6)
  br label %51

51:                                               ; preds = %54, %49
  %52 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %52, %struct.bio** %3, align 8
  %53 = icmp ne %struct.bio* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.bio*, %struct.bio** %3, align 8
  %56 = call i32 @bio_io_error(%struct.bio* %55)
  br label %51

57:                                               ; preds = %51
  br label %75

58:                                               ; preds = %45
  %59 = load i32, i32* @jiffies, align 4
  %60 = load %struct.clone*, %struct.clone** %2, align 8
  %61 = getelementptr inbounds %struct.clone, %struct.clone* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %65, %58
  %63 = call %struct.bio* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio* %63, %struct.bio** %3, align 8
  %64 = icmp ne %struct.bio* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.bio*, %struct.bio** %3, align 8
  %67 = call i32 @bio_endio(%struct.bio* %66)
  br label %62

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %72, %68
  %70 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %70, %struct.bio** %3, align 8
  %71 = icmp ne %struct.bio* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.bio*, %struct.bio** %3, align 8
  %74 = call i32 @generic_make_request(%struct.bio* %73)
  br label %69

75:                                               ; preds = %44, %57, %69
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #2

declare dso_local i32 @bio_list_init(%struct.bio_list*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #2

declare dso_local i64 @dm_clone_changed_this_transaction(i32) #2

declare dso_local i64 @need_commit_due_to_time(%struct.clone*) #2

declare dso_local i64 @commit_metadata(%struct.clone*) #2

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #2

declare dso_local i32 @bio_io_error(%struct.bio*) #2

declare dso_local i32 @bio_endio(%struct.bio*) #2

declare dso_local i32 @generic_make_request(%struct.bio*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
