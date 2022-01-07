; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_handle_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_target = type { %struct.TYPE_3__*, i32, %struct.dmz_metadata* }
%struct.TYPE_3__ = type { i32 }
%struct.dmz_metadata = type { i32 }
%struct.dm_chunk_work = type { i32 }
%struct.bio = type { i32 }
%struct.dmz_bioctx = type { %struct.dm_zone* }
%struct.dm_zone = type { i32 }

@DMZ_BDEV_DYING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported BIO operation 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_target*, %struct.dm_chunk_work*, %struct.bio*)* @dmz_handle_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_handle_bio(%struct.dmz_target* %0, %struct.dm_chunk_work* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.dmz_target*, align 8
  %5 = alloca %struct.dm_chunk_work*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.dmz_bioctx*, align 8
  %8 = alloca %struct.dmz_metadata*, align 8
  %9 = alloca %struct.dm_zone*, align 8
  %10 = alloca i32, align 4
  store %struct.dmz_target* %0, %struct.dmz_target** %4, align 8
  store %struct.dm_chunk_work* %1, %struct.dm_chunk_work** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %6, align 8
  %12 = call %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio* %11, i32 8)
  store %struct.dmz_bioctx* %12, %struct.dmz_bioctx** %7, align 8
  %13 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %14 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %13, i32 0, i32 2
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %14, align 8
  store %struct.dmz_metadata* %15, %struct.dmz_metadata** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i32 @bio_op(%struct.bio* %16)
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %21 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dmz_schedule_reclaim(i32 %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %26 = call i32 @dmz_lock_metadata(%struct.dmz_metadata* %25)
  %27 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %28 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMZ_BDEV_DYING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %98

38:                                               ; preds = %24
  %39 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %40 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %41 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.bio*, %struct.bio** %6, align 8
  %44 = call i32 @dmz_bio_chunk(%struct.TYPE_3__* %42, %struct.bio* %43)
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = call i32 @bio_op(%struct.bio* %45)
  %47 = call %struct.dm_zone* @dmz_get_chunk_mapping(%struct.dmz_metadata* %39, i32 %44, i32 %46)
  store %struct.dm_zone* %47, %struct.dm_zone** %9, align 8
  %48 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %49 = call i64 @IS_ERR(%struct.dm_zone* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %53 = call i32 @PTR_ERR(%struct.dm_zone* %52)
  store i32 %53, i32* %10, align 4
  br label %98

54:                                               ; preds = %38
  %55 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %56 = icmp ne %struct.dm_zone* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %59 = call i32 @dmz_activate_zone(%struct.dm_zone* %58)
  %60 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %61 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %7, align 8
  %62 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %61, i32 0, i32 0
  store %struct.dm_zone* %60, %struct.dm_zone** %62, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.bio*, %struct.bio** %6, align 8
  %65 = call i32 @bio_op(%struct.bio* %64)
  switch i32 %65, label %81 [
    i32 130, label %66
    i32 129, label %71
    i32 131, label %76
    i32 128, label %76
  ]

66:                                               ; preds = %63
  %67 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %68 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %69 = load %struct.bio*, %struct.bio** %6, align 8
  %70 = call i32 @dmz_handle_read(%struct.dmz_target* %67, %struct.dm_zone* %68, %struct.bio* %69)
  store i32 %70, i32* %10, align 4
  br label %90

71:                                               ; preds = %63
  %72 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %73 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %74 = load %struct.bio*, %struct.bio** %6, align 8
  %75 = call i32 @dmz_handle_write(%struct.dmz_target* %72, %struct.dm_zone* %73, %struct.bio* %74)
  store i32 %75, i32* %10, align 4
  br label %90

76:                                               ; preds = %63, %63
  %77 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %78 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %79 = load %struct.bio*, %struct.bio** %6, align 8
  %80 = call i32 @dmz_handle_discard(%struct.dmz_target* %77, %struct.dm_zone* %78, %struct.bio* %79)
  store i32 %80, i32* %10, align 4
  br label %90

81:                                               ; preds = %63
  %82 = load %struct.dmz_target*, %struct.dmz_target** %4, align 8
  %83 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.bio*, %struct.bio** %6, align 8
  %86 = call i32 @bio_op(%struct.bio* %85)
  %87 = call i32 @dmz_dev_err(%struct.TYPE_3__* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %81, %76, %71, %66
  %91 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %92 = icmp ne %struct.dm_zone* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %95 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %96 = call i32 @dmz_put_chunk_mapping(%struct.dmz_metadata* %94, %struct.dm_zone* %95)
  br label %97

97:                                               ; preds = %93, %90
  br label %98

98:                                               ; preds = %97, %51, %35
  %99 = load %struct.bio*, %struct.bio** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @errno_to_blk_status(i32 %100)
  %102 = call i32 @dmz_bio_endio(%struct.bio* %99, i32 %101)
  %103 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %104 = call i32 @dmz_unlock_metadata(%struct.dmz_metadata* %103)
  ret void
}

declare dso_local %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @dmz_schedule_reclaim(i32) #1

declare dso_local i32 @dmz_lock_metadata(%struct.dmz_metadata*) #1

declare dso_local %struct.dm_zone* @dmz_get_chunk_mapping(%struct.dmz_metadata*, i32, i32) #1

declare dso_local i32 @dmz_bio_chunk(%struct.TYPE_3__*, %struct.bio*) #1

declare dso_local i64 @IS_ERR(%struct.dm_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_zone*) #1

declare dso_local i32 @dmz_activate_zone(%struct.dm_zone*) #1

declare dso_local i32 @dmz_handle_read(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*) #1

declare dso_local i32 @dmz_handle_write(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*) #1

declare dso_local i32 @dmz_handle_discard(%struct.dmz_target*, %struct.dm_zone*, %struct.bio*) #1

declare dso_local i32 @dmz_dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dmz_put_chunk_mapping(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @errno_to_blk_status(i32) #1

declare dso_local i32 @dmz_unlock_metadata(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
