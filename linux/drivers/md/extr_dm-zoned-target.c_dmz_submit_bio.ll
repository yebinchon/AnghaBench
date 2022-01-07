; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_submit_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_zone = type { i32 }
%struct.bio = type { %struct.TYPE_4__, %struct.dmz_bioctx*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dmz_bioctx = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@dmz_clone_endio = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_target*, %struct.dm_zone*, %struct.bio*, i32, i32)* @dmz_submit_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_submit_bio(%struct.dmz_target* %0, %struct.dm_zone* %1, %struct.bio* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmz_target*, align 8
  %8 = alloca %struct.dm_zone*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dmz_bioctx*, align 8
  %13 = alloca %struct.bio*, align 8
  store %struct.dmz_target* %0, %struct.dmz_target** %7, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %8, align 8
  store %struct.bio* %2, %struct.bio** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bio*, %struct.bio** %9, align 8
  %15 = call %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio* %14, i32 4)
  store %struct.dmz_bioctx* %15, %struct.dmz_bioctx** %12, align 8
  %16 = load %struct.bio*, %struct.bio** %9, align 8
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %19 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %18, i32 0, i32 2
  %20 = call %struct.bio* @bio_clone_fast(%struct.bio* %16, i32 %17, i32* %19)
  store %struct.bio* %20, %struct.bio** %13, align 8
  %21 = load %struct.bio*, %struct.bio** %13, align 8
  %22 = icmp ne %struct.bio* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %85

26:                                               ; preds = %5
  %27 = load %struct.bio*, %struct.bio** %13, align 8
  %28 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %29 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bio_set_dev(%struct.bio* %27, i32 %32)
  %34 = load %struct.dmz_target*, %struct.dmz_target** %7, align 8
  %35 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %38 = call i64 @dmz_start_sect(i32 %36, %struct.dm_zone* %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dmz_blk2sect(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load %struct.bio*, %struct.bio** %13, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dmz_blk2sect(i32 %46)
  %48 = load i32, i32* @SECTOR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.bio*, %struct.bio** %13, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @dmz_clone_endio, align 4
  %54 = load %struct.bio*, %struct.bio** %13, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %12, align 8
  %57 = load %struct.bio*, %struct.bio** %13, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store %struct.dmz_bioctx* %56, %struct.dmz_bioctx** %58, align 8
  %59 = load %struct.bio*, %struct.bio** %9, align 8
  %60 = load %struct.bio*, %struct.bio** %13, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @bio_advance(%struct.bio* %59, i32 %63)
  %65 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %12, align 8
  %66 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %65, i32 0, i32 0
  %67 = call i32 @refcount_inc(i32* %66)
  %68 = load %struct.bio*, %struct.bio** %13, align 8
  %69 = call i32 @generic_make_request(%struct.bio* %68)
  %70 = load %struct.bio*, %struct.bio** %9, align 8
  %71 = call i64 @bio_op(%struct.bio* %70)
  %72 = load i64, i64* @REQ_OP_WRITE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %26
  %75 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %76 = call i64 @dmz_is_seq(%struct.dm_zone* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %81 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %74, %26
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %23
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @dmz_start_sect(i32, %struct.dm_zone*) #1

declare dso_local i32 @dmz_blk2sect(i32) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @dmz_is_seq(%struct.dm_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
