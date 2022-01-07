; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_thin_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_thin_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, %struct.bio_list, i64, %struct.pool* }
%struct.bio_list = type { i32 }
%struct.pool = type { i32, i32, i32 (%struct.thin_c*, %struct.bio*)*, i32 (%struct.thin_c*, %struct.bio.0*)* }
%struct.bio = type opaque
%struct.bio.0 = type opaque
%struct.bio.1 = type { i32 }
%struct.blk_plug = type { i32 }

@BLK_STS_DM_REQUEUE = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*)* @process_thin_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_thin_deferred_bios(%struct.thin_c* %0) #0 {
  %2 = alloca %struct.thin_c*, align 8
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio.1*, align 8
  %6 = alloca %struct.bio_list, align 4
  %7 = alloca %struct.blk_plug, align 4
  %8 = alloca i32, align 4
  store %struct.thin_c* %0, %struct.thin_c** %2, align 8
  %9 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %10 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %9, i32 0, i32 3
  %11 = load %struct.pool*, %struct.pool** %10, align 8
  store %struct.pool* %11, %struct.pool** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %13 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %18 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %19 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %18, i32 0, i32 1
  %20 = load i32, i32* @BLK_STS_DM_REQUEUE, align 4
  %21 = call i32 @error_thin_bio_list(%struct.thin_c* %17, %struct.bio_list* %19, i32 %20)
  br label %111

22:                                               ; preds = %1
  %23 = call i32 @bio_list_init(%struct.bio_list* %6)
  %24 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %25 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %29 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %28, i32 0, i32 1
  %30 = call i64 @bio_list_empty(%struct.bio_list* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %34 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %111

37:                                               ; preds = %22
  %38 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %39 = call i32 @__sort_thin_deferred_bios(%struct.thin_c* %38)
  %40 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %41 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %40, i32 0, i32 1
  %42 = call i32 @bio_list_merge(%struct.bio_list* %6, %struct.bio_list* %41)
  %43 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %44 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %43, i32 0, i32 1
  %45 = call i32 @bio_list_init(%struct.bio_list* %44)
  %46 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %47 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %46, i32 0, i32 0
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  br label %51

51:                                               ; preds = %108, %37
  %52 = call %struct.bio.1* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio.1* %52, %struct.bio.1** %5, align 8
  %53 = icmp ne %struct.bio.1* %52, null
  br i1 %53, label %54, label %109

54:                                               ; preds = %51
  %55 = load %struct.pool*, %struct.pool** %3, align 8
  %56 = call i64 @ensure_next_mapping(%struct.pool* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %60 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %59, i32 0, i32 0
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %64 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %63, i32 0, i32 1
  %65 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %66 = call i32 @bio_list_add(%struct.bio_list* %64, %struct.bio.1* %65)
  %67 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %68 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %67, i32 0, i32 1
  %69 = call i32 @bio_list_merge(%struct.bio_list* %68, %struct.bio_list* %6)
  %70 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %71 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %70, i32 0, i32 0
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %109

74:                                               ; preds = %54
  %75 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %76 = call i64 @bio_op(%struct.bio.1* %75)
  %77 = load i64, i64* @REQ_OP_DISCARD, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.pool*, %struct.pool** %3, align 8
  %81 = getelementptr inbounds %struct.pool, %struct.pool* %80, i32 0, i32 3
  %82 = load i32 (%struct.thin_c*, %struct.bio.0*)*, i32 (%struct.thin_c*, %struct.bio.0*)** %81, align 8
  %83 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %84 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %85 = bitcast %struct.bio.1* %84 to %struct.bio.0*
  %86 = call i32 %82(%struct.thin_c* %83, %struct.bio.0* %85)
  br label %95

87:                                               ; preds = %74
  %88 = load %struct.pool*, %struct.pool** %3, align 8
  %89 = getelementptr inbounds %struct.pool, %struct.pool* %88, i32 0, i32 2
  %90 = load i32 (%struct.thin_c*, %struct.bio*)*, i32 (%struct.thin_c*, %struct.bio*)** %89, align 8
  %91 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %92 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %93 = bitcast %struct.bio.1* %92 to %struct.bio*
  %94 = call i32 %90(%struct.thin_c* %91, %struct.bio* %93)
  br label %95

95:                                               ; preds = %87, %79
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = and i32 %96, 127
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.pool*, %struct.pool** %3, align 8
  %102 = getelementptr inbounds %struct.pool, %struct.pool* %101, i32 0, i32 1
  %103 = call i32 @throttle_work_update(i32* %102)
  %104 = load %struct.pool*, %struct.pool** %3, align 8
  %105 = getelementptr inbounds %struct.pool, %struct.pool* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dm_pool_issue_prefetches(i32 %106)
  br label %108

108:                                              ; preds = %100, %95
  br label %51

109:                                              ; preds = %58, %51
  %110 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  br label %111

111:                                              ; preds = %109, %32, %16
  ret void
}

declare dso_local i32 @error_thin_bio_list(%struct.thin_c*, %struct.bio_list*, i32) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sort_thin_deferred_bios(%struct.thin_c*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local %struct.bio.1* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i64 @ensure_next_mapping(%struct.pool*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio.1*) #1

declare dso_local i64 @bio_op(%struct.bio.1*) #1

declare dso_local i32 @throttle_work_update(i32*) #1

declare dso_local i32 @dm_pool_issue_prefetches(i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
