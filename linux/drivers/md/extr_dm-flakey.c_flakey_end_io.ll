; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_flakey_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_flakey_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.flakey_c* }
%struct.flakey_c = type { i64, i32, i64 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { i64 }

@REQ_OP_ZONE_RESET = common dso_local global i64 0, align 8
@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@DROP_WRITES = common dso_local global i32 0, align 4
@ERROR_WRITES = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i64*)* @flakey_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flakey_end_io(%struct.dm_target* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.flakey_c*, align 8
  %9 = alloca %struct.per_bio_data*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.flakey_c*, %struct.flakey_c** %11, align 8
  store %struct.flakey_c* %12, %struct.flakey_c** %8, align 8
  %13 = load %struct.bio*, %struct.bio** %6, align 8
  %14 = call %struct.per_bio_data* @dm_per_bio_data(%struct.bio* %13, i32 8)
  store %struct.per_bio_data* %14, %struct.per_bio_data** %9, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = call i64 @bio_op(%struct.bio* %15)
  %17 = load i64, i64* @REQ_OP_ZONE_RESET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %20, i32* %4, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %72, label %25

25:                                               ; preds = %21
  %26 = load %struct.per_bio_data*, %struct.per_bio_data** %9, align 8
  %27 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %25
  %31 = load %struct.bio*, %struct.bio** %6, align 8
  %32 = call i64 @bio_data_dir(%struct.bio* %31)
  %33 = load i64, i64* @READ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %30
  %36 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %37 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %42 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @READ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  %48 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %49 = call i64 @all_corrupt_bio_flags_match(%struct.bio* %47, %struct.flakey_c* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.bio*, %struct.bio** %6, align 8
  %53 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %54 = call i32 @corrupt_bio_data(%struct.bio* %52, %struct.flakey_c* %53)
  br label %71

55:                                               ; preds = %46, %40, %35
  %56 = load i32, i32* @DROP_WRITES, align 4
  %57 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %58 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %57, i32 0, i32 1
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ERROR_WRITES, align 4
  %63 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %64 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* @BLK_STS_IOERR, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %61, %55
  br label %71

71:                                               ; preds = %70, %51
  br label %72

72:                                               ; preds = %71, %30, %25, %21
  %73 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.per_bio_data* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @all_corrupt_bio_flags_match(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @corrupt_bio_data(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
