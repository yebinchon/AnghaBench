; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { i64, i32, i32, %struct.dmz_dev*, %struct.dmz_metadata* }
%struct.dmz_dev = type { i32, i32, i32 }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32 }
%struct.dm_io_region = type { i8*, i8*, i32 }

@DM_KCOPYD_WRITE_SEQ = common dso_local global i32 0, align 4
@DMZ_BDEV_DYING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMZ_RECLAIM_KCOPY = common dso_local global i32 0, align 4
@dmz_reclaim_kcopy_end = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*, %struct.dm_zone*, %struct.dm_zone*)* @dmz_reclaim_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_reclaim_copy(%struct.dmz_reclaim* %0, %struct.dm_zone* %1, %struct.dm_zone* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_reclaim*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca %struct.dm_zone*, align 8
  %8 = alloca %struct.dmz_metadata*, align 8
  %9 = alloca %struct.dmz_dev*, align 8
  %10 = alloca %struct.dm_io_region, align 8
  %11 = alloca %struct.dm_io_region, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store %struct.dm_zone* %2, %struct.dm_zone** %7, align 8
  %19 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %20 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %19, i32 0, i32 4
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %20, align 8
  store %struct.dmz_metadata* %21, %struct.dmz_metadata** %8, align 8
  %22 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %23 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %22, i32 0, i32 3
  %24 = load %struct.dmz_dev*, %struct.dmz_dev** %23, align 8
  store %struct.dmz_dev* %24, %struct.dmz_dev** %9, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %17, align 8
  %25 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %26 = call i64 @dmz_is_seq(%struct.dm_zone* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %30 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %34 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %38 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %39 = call i32 @dmz_start_block(%struct.dmz_metadata* %37, %struct.dm_zone* %38)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %41 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %42 = call i32 @dmz_start_block(%struct.dmz_metadata* %40, %struct.dm_zone* %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %44 = call i64 @dmz_is_seq(%struct.dm_zone* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @DM_KCOPYD_WRITE_SEQ, align 4
  %48 = call i32 @set_bit(i32 %47, i64* %17)
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %147, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %148

54:                                               ; preds = %50
  %55 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %56 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMZ_BDEV_DYING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %149

64:                                               ; preds = %54
  %65 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %66 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %67 = call i32 @dmz_first_valid_block(%struct.dmz_metadata* %65, %struct.dm_zone* %66, i32* %12)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %4, align 4
  br label %149

72:                                               ; preds = %64
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %14, align 4
  %74 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %75 = call i64 @dmz_is_seq(%struct.dm_zone* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %79 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @dmz_reclaim_align_wp(%struct.dmz_reclaim* %78, %struct.dm_zone* %79, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %4, align 4
  br label %149

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %89 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 2
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i8* @dmz_blk2sect(i32 %94)
  %96 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i8* @dmz_blk2sect(i32 %97)
  %99 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %101 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %11, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i8* @dmz_blk2sect(i32 %106)
  %108 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %11, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %10, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %11, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* @DMZ_RECLAIM_KCOPY, align 4
  %113 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %114 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %113, i32 0, i32 0
  %115 = call i32 @set_bit(i32 %112, i64* %114)
  %116 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %117 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %17, align 8
  %120 = load i32, i32* @dmz_reclaim_kcopy_end, align 4
  %121 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %122 = call i32 @dm_kcopyd_copy(i32 %118, %struct.dm_io_region* %10, i32 1, %struct.dm_io_region* %11, i64 %119, i32 %120, %struct.dmz_reclaim* %121)
  %123 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %124 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %123, i32 0, i32 0
  %125 = load i32, i32* @DMZ_RECLAIM_KCOPY, align 4
  %126 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %127 = call i32 @wait_on_bit_io(i64* %124, i32 %125, i32 %126)
  %128 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %129 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %87
  %133 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %134 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %4, align 4
  br label %149

136:                                              ; preds = %87
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %141 = call i64 @dmz_is_seq(%struct.dm_zone* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %146 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %136
  br label %50

148:                                              ; preds = %50
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %132, %84, %70, %61
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @dmz_is_seq(%struct.dm_zone*) #1

declare dso_local i32 @dmz_start_block(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @dmz_first_valid_block(%struct.dmz_metadata*, %struct.dm_zone*, i32*) #1

declare dso_local i32 @dmz_reclaim_align_wp(%struct.dmz_reclaim*, %struct.dm_zone*, i32) #1

declare dso_local i8* @dmz_blk2sect(i32) #1

declare dso_local i32 @dm_kcopyd_copy(i32, %struct.dm_io_region*, i32, %struct.dm_io_region*, i64, i32, %struct.dmz_reclaim*) #1

declare dso_local i32 @wait_on_bit_io(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
