; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_process_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_process_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_list = type { i32 }
%struct.clone = type { i32, i32 }

@BIO_EMPTY_LIST = common dso_local global %struct.bio_list zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*)* @process_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_deferred_bios(%struct.clone* %0) #0 {
  %2 = alloca %struct.clone*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bio_list, align 4
  store %struct.clone* %0, %struct.clone** %2, align 8
  %5 = bitcast %struct.bio_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.bio_list* @BIO_EMPTY_LIST to i8*), i64 4, i1 false)
  %6 = load %struct.clone*, %struct.clone** %2, align 8
  %7 = getelementptr inbounds %struct.clone, %struct.clone* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.clone*, %struct.clone** %2, align 8
  %11 = getelementptr inbounds %struct.clone, %struct.clone* %10, i32 0, i32 1
  %12 = call i32 @bio_list_merge(%struct.bio_list* %4, i32* %11)
  %13 = load %struct.clone*, %struct.clone** %2, align 8
  %14 = getelementptr inbounds %struct.clone, %struct.clone* %13, i32 0, i32 1
  %15 = call i32 @bio_list_init(i32* %14)
  %16 = load %struct.clone*, %struct.clone** %2, align 8
  %17 = getelementptr inbounds %struct.clone, %struct.clone* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = call i64 @bio_list_empty(%struct.bio_list* %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %25

23:                                               ; preds = %1
  %24 = call i32 @submit_bios(%struct.bio_list* %4)
  br label %25

25:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @bio_list_merge(%struct.bio_list*, i32*) #2

declare dso_local i32 @bio_list_init(i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #2

declare dso_local i32 @submit_bios(%struct.bio_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
