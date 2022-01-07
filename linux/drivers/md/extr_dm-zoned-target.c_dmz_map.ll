; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dmz_target* }
%struct.dmz_target = type { %struct.dmz_dev*, i32, i32, i32, i32 }
%struct.dmz_dev = type { i32, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dmz_bioctx = type { i32, %struct.bio*, i32*, %struct.dmz_target* }

@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"BIO op %d sector %llu + %u => chunk %llu, block %llu, %u blocks\00", align 1
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@DMZ_BLOCK_SECTORS_MASK = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"BIO op %d, can't process chunk %llu, err %i\0A\00", align 1
@DM_MAPIO_REQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @dmz_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dmz_target*, align 8
  %7 = alloca %struct.dmz_dev*, align 8
  %8 = alloca %struct.dmz_bioctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.dmz_target*, %struct.dmz_target** %14, align 8
  store %struct.dmz_target* %15, %struct.dmz_target** %6, align 8
  %16 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %17 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %16, i32 0, i32 0
  %18 = load %struct.dmz_dev*, %struct.dmz_dev** %17, align 8
  store %struct.dmz_dev* %18, %struct.dmz_dev** %7, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio* %19, i32 32)
  store %struct.dmz_bioctx* %20, %struct.dmz_bioctx** %8, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_sectors(%struct.bio* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %28 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %27, i32 0, i32 0
  %29 = load %struct.dmz_dev*, %struct.dmz_dev** %28, align 8
  %30 = call i64 @dmz_bdev_is_dying(%struct.dmz_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %33, i32* %3, align 4
  br label %165

34:                                               ; preds = %2
  %35 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = call i64 @bio_op(%struct.bio* %36)
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %42 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %41, i32 0, i32 0
  %43 = load %struct.dmz_dev*, %struct.dmz_dev** %42, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = call i64 @dmz_bio_chunk(%struct.dmz_dev* %43, %struct.bio* %44)
  %46 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %47 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %46, i32 0, i32 0
  %48 = load %struct.dmz_dev*, %struct.dmz_dev** %47, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = call i32 @dmz_bio_block(%struct.bio* %49)
  %51 = call i64 @dmz_chunk_block(%struct.dmz_dev* %48, i32 %50)
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = call i64 @dmz_bio_blocks(%struct.bio* %52)
  %54 = trunc i64 %53 to i32
  %55 = call i32 (%struct.dmz_dev*, i8*, i64, i64, i32, ...) @dmz_dev_debug(%struct.dmz_dev* %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %39, i32 %40, i64 %45, i64 %51, i32 %54)
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %58 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bio_set_dev(%struct.bio* %56, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %34
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = call i64 @bio_op(%struct.bio* %64)
  %66 = load i64, i64* @REQ_OP_WRITE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %69, i32* %3, align 4
  br label %165

70:                                               ; preds = %63, %34
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @DMZ_BLOCK_SECTORS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @DMZ_BLOCK_SECTORS_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %81, i32* %3, align 4
  br label %165

82:                                               ; preds = %75
  %83 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %84 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %8, align 8
  %85 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %84, i32 0, i32 3
  store %struct.dmz_target* %83, %struct.dmz_target** %85, align 8
  %86 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %8, align 8
  %87 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = load %struct.bio*, %struct.bio** %5, align 8
  %89 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %8, align 8
  %90 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %89, i32 0, i32 1
  store %struct.bio* %88, %struct.bio** %90, align 8
  %91 = load %struct.dmz_bioctx*, %struct.dmz_bioctx** %8, align 8
  %92 = getelementptr inbounds %struct.dmz_bioctx, %struct.dmz_bioctx* %91, i32 0, i32 0
  %93 = call i32 @refcount_set(i32* %92, i32 1)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %82
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = call i64 @bio_op(%struct.bio* %97)
  %99 = load i64, i64* @REQ_OP_WRITE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %103 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %102, i32 0, i32 3
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %106 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %105, i32 0, i32 4
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = call i32 @bio_list_add(i32* %106, %struct.bio* %107)
  %109 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %110 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %109, i32 0, i32 3
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %113 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %116 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %115, i32 0, i32 1
  %117 = call i32 @mod_delayed_work(i32 %114, i32* %116, i32 0)
  %118 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %118, i32* %3, align 4
  br label %165

119:                                              ; preds = %96, %82
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %122 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = and i32 %120, %124
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %126, %127
  %129 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %130 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ugt i32 %128, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %119
  %134 = load %struct.bio*, %struct.bio** %5, align 8
  %135 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %136 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %11, align 4
  %139 = sub i32 %137, %138
  %140 = call i32 @dm_accept_partial_bio(%struct.bio* %134, i32 %139)
  br label %141

141:                                              ; preds = %133, %119
  %142 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %143 = load %struct.bio*, %struct.bio** %5, align 8
  %144 = call i32 @dmz_queue_chunk_work(%struct.dmz_target* %142, %struct.bio* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %141
  %148 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %149 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %148, i32 0, i32 0
  %150 = load %struct.dmz_dev*, %struct.dmz_dev** %149, align 8
  %151 = load %struct.bio*, %struct.bio** %5, align 8
  %152 = call i64 @bio_op(%struct.bio* %151)
  %153 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %154 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %153, i32 0, i32 0
  %155 = load %struct.dmz_dev*, %struct.dmz_dev** %154, align 8
  %156 = load %struct.bio*, %struct.bio** %5, align 8
  %157 = call i64 @dmz_bio_chunk(%struct.dmz_dev* %155, %struct.bio* %156)
  %158 = trunc i64 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = load i32, i32* %12, align 4
  %161 = call i32 (%struct.dmz_dev*, i8*, i64, i64, i32, ...) @dmz_dev_debug(%struct.dmz_dev* %150, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %152, i64 %159, i32 %160)
  %162 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  store i32 %162, i32* %3, align 4
  br label %165

163:                                              ; preds = %141
  %164 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %147, %101, %80, %68, %32
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.dmz_bioctx* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @dmz_bdev_is_dying(%struct.dmz_dev*) #1

declare dso_local i32 @dmz_dev_debug(%struct.dmz_dev*, i8*, i64, i64, i32, ...) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @dmz_bio_chunk(%struct.dmz_dev*, %struct.bio*) #1

declare dso_local i64 @dmz_chunk_block(%struct.dmz_dev*, i32) #1

declare dso_local i32 @dmz_bio_block(%struct.bio*) #1

declare dso_local i64 @dmz_bio_blocks(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @dm_accept_partial_bio(%struct.bio*, i32) #1

declare dso_local i32 @dmz_queue_chunk_work(%struct.dmz_target*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
