; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_flakey_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_flakey_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.flakey_c* }
%struct.flakey_c = type { i32, i32, i32, i64, i64, i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { i32 }

@REQ_OP_ZONE_RESET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@DROP_WRITES = common dso_local global i32 0, align 4
@ERROR_WRITES = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @flakey_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flakey_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.flakey_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.per_bio_data*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.flakey_c*, %struct.flakey_c** %10, align 8
  store %struct.flakey_c* %11, %struct.flakey_c** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call %struct.per_bio_data* @dm_per_bio_data(%struct.bio* %12, i32 4)
  store %struct.per_bio_data* %13, %struct.per_bio_data** %8, align 8
  %14 = load %struct.per_bio_data*, %struct.per_bio_data** %8, align 8
  %15 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i64 @bio_op(%struct.bio* %16)
  %18 = load i64, i64* @REQ_OP_ZONE_RESET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %114

21:                                               ; preds = %2
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %24 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  %27 = load i32, i32* @HZ, align 4
  %28 = udiv i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %31 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %34 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add i32 %32, %35
  %37 = urem i32 %29, %36
  %38 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %39 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %113

42:                                               ; preds = %21
  %43 = load %struct.per_bio_data*, %struct.per_bio_data** %8, align 8
  %44 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = call i64 @bio_data_dir(%struct.bio* %45)
  %47 = load i64, i64* @READ, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %51 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @DROP_WRITES, align 4
  %56 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %57 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %56, i32 0, i32 5
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ERROR_WRITES, align 4
  %62 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %63 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %62, i32 0, i32 5
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %67, i32* %3, align 4
  br label %119

68:                                               ; preds = %60, %54, %49
  br label %114

69:                                               ; preds = %42
  %70 = load i32, i32* @DROP_WRITES, align 4
  %71 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %72 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %71, i32 0, i32 5
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.bio*, %struct.bio** %5, align 8
  %77 = call i32 @bio_endio(%struct.bio* %76)
  %78 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %78, i32* %3, align 4
  br label %119

79:                                               ; preds = %69
  %80 = load i32, i32* @ERROR_WRITES, align 4
  %81 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %82 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %81, i32 0, i32 5
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  %87 = call i32 @bio_io_error(%struct.bio* %86)
  %88 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %88, i32* %3, align 4
  br label %119

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %92 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %97 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WRITE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %104 = call i64 @all_corrupt_bio_flags_match(%struct.bio* %102, %struct.flakey_c* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %109 = call i32 @corrupt_bio_data(%struct.bio* %107, %struct.flakey_c* %108)
  br label %110

110:                                              ; preds = %106, %101
  br label %114

111:                                              ; preds = %95, %90
  %112 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %112, i32* %3, align 4
  br label %119

113:                                              ; preds = %21
  br label %114

114:                                              ; preds = %113, %110, %68, %20
  %115 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = call i32 @flakey_map_bio(%struct.dm_target* %115, %struct.bio* %116)
  %118 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %111, %85, %75, %66
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.per_bio_data* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i64 @all_corrupt_bio_flags_match(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @corrupt_bio_data(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @flakey_map_bio(%struct.dm_target*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
