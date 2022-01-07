; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_mblock_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_mblock_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.dmz_mblock* }
%struct.dmz_mblock = type { i32 }

@DMZ_META_ERROR = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@DMZ_META_WRITING = common dso_local global i32 0, align 4
@DMZ_META_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @dmz_mblock_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_mblock_bio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dmz_mblock*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  store %struct.dmz_mblock* %7, %struct.dmz_mblock** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @DMZ_META_ERROR, align 4
  %14 = load %struct.dmz_mblock*, %struct.dmz_mblock** %3, align 8
  %15 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = call i64 @bio_op(%struct.bio* %18)
  %20 = load i64, i64* @REQ_OP_WRITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @DMZ_META_WRITING, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @DMZ_META_READING, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.dmz_mblock*, %struct.dmz_mblock** %3, align 8
  %29 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %28, i32 0, i32 0
  %30 = call i32 @clear_bit_unlock(i32 %27, i32* %29)
  %31 = call i32 (...) @smp_mb__after_atomic()
  %32 = load %struct.dmz_mblock*, %struct.dmz_mblock** %3, align 8
  %33 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @wake_up_bit(i32* %33, i32 %34)
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = call i32 @bio_put(%struct.bio* %36)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
