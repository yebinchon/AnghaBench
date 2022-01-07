; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_validate_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_validate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_buffer = type { i32 }
%struct.buffer_aux = type { %struct.dm_block_validator* }
%struct.dm_block_validator = type { i32 (%struct.dm_block_validator*, %struct.dm_block*, i32)*, i8* }
%struct.dm_block = type opaque
%struct.dm_block.0 = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s validator check failed for block %llu\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"validator mismatch (old=%s vs new=%s) for block %llu\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_manager*, %struct.dm_buffer*, %struct.buffer_aux*, %struct.dm_block_validator*)* @dm_bm_validate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_bm_validate_buffer(%struct.dm_block_manager* %0, %struct.dm_buffer* %1, %struct.buffer_aux* %2, %struct.dm_block_validator* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_block_manager*, align 8
  %7 = alloca %struct.dm_buffer*, align 8
  %8 = alloca %struct.buffer_aux*, align 8
  %9 = alloca %struct.dm_block_validator*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_block_manager* %0, %struct.dm_block_manager** %6, align 8
  store %struct.dm_buffer* %1, %struct.dm_buffer** %7, align 8
  store %struct.buffer_aux* %2, %struct.buffer_aux** %8, align 8
  store %struct.dm_block_validator* %3, %struct.dm_block_validator** %9, align 8
  %11 = load %struct.buffer_aux*, %struct.buffer_aux** %8, align 8
  %12 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %11, i32 0, i32 0
  %13 = load %struct.dm_block_validator*, %struct.dm_block_validator** %12, align 8
  %14 = icmp ne %struct.dm_block_validator* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  %20 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %21 = icmp ne %struct.dm_block_validator* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %82

23:                                               ; preds = %19
  %24 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %25 = getelementptr inbounds %struct.dm_block_validator, %struct.dm_block_validator* %24, i32 0, i32 0
  %26 = load i32 (%struct.dm_block_validator*, %struct.dm_block*, i32)*, i32 (%struct.dm_block_validator*, %struct.dm_block*, i32)** %25, align 8
  %27 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %28 = load %struct.dm_buffer*, %struct.dm_buffer** %7, align 8
  %29 = bitcast %struct.dm_buffer* %28 to %struct.dm_block.0*
  %30 = bitcast %struct.dm_block.0* %29 to %struct.dm_block*
  %31 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %32 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dm_bufio_get_block_size(i32 %33)
  %35 = call i32 %26(%struct.dm_block_validator* %27, %struct.dm_block* %30, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %23
  %40 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %41 = getelementptr inbounds %struct.dm_block_validator, %struct.dm_block_validator* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.dm_buffer*, %struct.dm_buffer** %7, align 8
  %44 = call i64 @dm_bufio_get_block_number(%struct.dm_buffer* %43)
  %45 = call i32 (i8*, i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %42, i64 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %82

47:                                               ; preds = %23
  %48 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %49 = load %struct.buffer_aux*, %struct.buffer_aux** %8, align 8
  %50 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %49, i32 0, i32 0
  store %struct.dm_block_validator* %48, %struct.dm_block_validator** %50, align 8
  br label %81

51:                                               ; preds = %4
  %52 = load %struct.buffer_aux*, %struct.buffer_aux** %8, align 8
  %53 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %52, i32 0, i32 0
  %54 = load %struct.dm_block_validator*, %struct.dm_block_validator** %53, align 8
  %55 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %56 = icmp ne %struct.dm_block_validator* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %51
  %61 = load %struct.buffer_aux*, %struct.buffer_aux** %8, align 8
  %62 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %61, i32 0, i32 0
  %63 = load %struct.dm_block_validator*, %struct.dm_block_validator** %62, align 8
  %64 = getelementptr inbounds %struct.dm_block_validator, %struct.dm_block_validator* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %67 = icmp ne %struct.dm_block_validator* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %70 = getelementptr inbounds %struct.dm_block_validator, %struct.dm_block_validator* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %72 ]
  %75 = load %struct.dm_buffer*, %struct.dm_buffer** %7, align 8
  %76 = call i64 @dm_bufio_get_block_number(%struct.dm_buffer* %75)
  %77 = call i32 (i8*, i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %74, i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %82

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80, %47
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %73, %39, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_bufio_get_block_size(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i8*, ...) #1

declare dso_local i64 @dm_bufio_get_block_number(%struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
