; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_requeue_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_requeue_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@BLK_STS_DM_REQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @requeue_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue_deferred_bios(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio_list, align 4
  store %struct.cache* %0, %struct.cache** %2, align 8
  %5 = call i32 @bio_list_init(%struct.bio_list* %4)
  %6 = load %struct.cache*, %struct.cache** %2, align 8
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 0
  %8 = call i32 @bio_list_merge(%struct.bio_list* %4, %struct.bio_list* %7)
  %9 = load %struct.cache*, %struct.cache** %2, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 0
  %11 = call i32 @bio_list_init(%struct.bio_list* %10)
  br label %12

12:                                               ; preds = %15, %1
  %13 = call %struct.bio* @bio_list_pop(%struct.bio_list* %4)
  store %struct.bio* %13, %struct.bio** %3, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @BLK_STS_DM_REQUEUE, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = call i32 @bio_endio(%struct.bio* %19)
  br label %12

21:                                               ; preds = %12
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
