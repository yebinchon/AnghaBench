; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_reset_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_reset_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.dmz_dev* }
%struct.dmz_dev = type { i32, i32 }
%struct.dm_zone = type { i64, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Reset zone %u failed %d\00", align 1
@DMZ_SEQ_WRITE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dm_zone*)* @dmz_reset_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_reset_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmz_dev*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  %8 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %9 = call i64 @dmz_is_offline(%struct.dm_zone* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %13 = call i64 @dmz_is_readonly(%struct.dm_zone* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %17 = call i64 @dmz_is_rnd(%struct.dm_zone* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %2
  store i32 0, i32* %3, align 4
  br label %61

20:                                               ; preds = %15
  %21 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %22 = call i32 @dmz_is_empty(%struct.dm_zone* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %26 = call i64 @dmz_seq_write_err(%struct.dm_zone* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %24, %20
  %29 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %30 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %29, i32 0, i32 0
  %31 = load %struct.dmz_dev*, %struct.dmz_dev** %30, align 8
  store %struct.dmz_dev* %31, %struct.dmz_dev** %7, align 8
  %32 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %33 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %36 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %37 = call i32 @dmz_start_sect(%struct.dmz_metadata* %35, %struct.dm_zone* %36)
  %38 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %39 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_NOIO, align 4
  %42 = call i32 @blkdev_reset_zones(i32 %34, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %28
  %46 = load %struct.dmz_dev*, %struct.dmz_dev** %7, align 8
  %47 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %48 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %49 = call i32 @dmz_id(%struct.dmz_metadata* %47, %struct.dm_zone* %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dmz_dev_err(%struct.dmz_dev* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i32, i32* @DMZ_SEQ_WRITE_ERR, align 4
  %56 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %57 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %56, i32 0, i32 1
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %60 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %45, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @dmz_is_offline(%struct.dm_zone*) #1

declare dso_local i64 @dmz_is_readonly(%struct.dm_zone*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @dmz_is_empty(%struct.dm_zone*) #1

declare dso_local i64 @dmz_seq_write_err(%struct.dm_zone*) #1

declare dso_local i32 @blkdev_reset_zones(i32, i32, i32, i32) #1

declare dso_local i32 @dmz_start_sect(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_dev_err(%struct.dmz_dev*, i8*, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
