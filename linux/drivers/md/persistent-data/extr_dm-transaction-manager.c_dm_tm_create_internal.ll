; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_create_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_transaction_manager = type { i32 }
%struct.dm_space_map = type opaque

@.str = private unnamed_addr constant [35 x i8] c"couldn't create metadata space map\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't open metadata space map\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_manager*, i32, %struct.dm_transaction_manager**, %struct.dm_space_map**, i32, i8*, i64)* @dm_tm_create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_tm_create_internal(%struct.dm_block_manager* %0, i32 %1, %struct.dm_transaction_manager** %2, %struct.dm_space_map** %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_block_manager*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_transaction_manager**, align 8
  %12 = alloca %struct.dm_space_map**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.dm_block_manager* %0, %struct.dm_block_manager** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dm_transaction_manager** %2, %struct.dm_transaction_manager*** %11, align 8
  store %struct.dm_space_map** %3, %struct.dm_space_map*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = call %struct.dm_transaction_manager* (...) @dm_sm_metadata_init()
  %18 = bitcast %struct.dm_transaction_manager* %17 to %struct.dm_space_map*
  %19 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  store %struct.dm_space_map* %18, %struct.dm_space_map** %19, align 8
  %20 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %21 = load %struct.dm_space_map*, %struct.dm_space_map** %20, align 8
  %22 = bitcast %struct.dm_space_map* %21 to %struct.dm_transaction_manager*
  %23 = call i64 @IS_ERR(%struct.dm_transaction_manager* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %7
  %26 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %27 = load %struct.dm_space_map*, %struct.dm_space_map** %26, align 8
  %28 = bitcast %struct.dm_space_map* %27 to %struct.dm_transaction_manager*
  %29 = call i32 @PTR_ERR(%struct.dm_transaction_manager* %28)
  store i32 %29, i32* %8, align 4
  br label %91

30:                                               ; preds = %7
  %31 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %32 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %33 = load %struct.dm_space_map*, %struct.dm_space_map** %32, align 8
  %34 = bitcast %struct.dm_space_map* %33 to %struct.dm_transaction_manager*
  %35 = call %struct.dm_transaction_manager* @dm_tm_create(%struct.dm_block_manager* %31, %struct.dm_transaction_manager* %34)
  %36 = load %struct.dm_transaction_manager**, %struct.dm_transaction_manager*** %11, align 8
  store %struct.dm_transaction_manager* %35, %struct.dm_transaction_manager** %36, align 8
  %37 = load %struct.dm_transaction_manager**, %struct.dm_transaction_manager*** %11, align 8
  %38 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %37, align 8
  %39 = call i64 @IS_ERR(%struct.dm_transaction_manager* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %43 = load %struct.dm_space_map*, %struct.dm_space_map** %42, align 8
  %44 = bitcast %struct.dm_space_map* %43 to %struct.dm_transaction_manager*
  %45 = call i32 @dm_sm_destroy(%struct.dm_transaction_manager* %44)
  %46 = load %struct.dm_transaction_manager**, %struct.dm_transaction_manager*** %11, align 8
  %47 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.dm_transaction_manager* %47)
  store i32 %48, i32* %8, align 4
  br label %91

49:                                               ; preds = %30
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %54 = load %struct.dm_space_map*, %struct.dm_space_map** %53, align 8
  %55 = bitcast %struct.dm_space_map* %54 to %struct.dm_transaction_manager*
  %56 = load %struct.dm_transaction_manager**, %struct.dm_transaction_manager*** %11, align 8
  %57 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %56, align 8
  %58 = load %struct.dm_block_manager*, %struct.dm_block_manager** %9, align 8
  %59 = call i32 @dm_bm_nr_blocks(%struct.dm_block_manager* %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dm_sm_metadata_create(%struct.dm_transaction_manager* %55, %struct.dm_transaction_manager* %57, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %82

66:                                               ; preds = %52
  br label %81

67:                                               ; preds = %49
  %68 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %69 = load %struct.dm_space_map*, %struct.dm_space_map** %68, align 8
  %70 = bitcast %struct.dm_space_map* %69 to %struct.dm_transaction_manager*
  %71 = load %struct.dm_transaction_manager**, %struct.dm_transaction_manager*** %11, align 8
  %72 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %71, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @dm_sm_metadata_open(%struct.dm_transaction_manager* %70, %struct.dm_transaction_manager* %72, i8* %73, i64 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = call i32 @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %82

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %66
  store i32 0, i32* %8, align 4
  br label %91

82:                                               ; preds = %78, %64
  %83 = load %struct.dm_transaction_manager**, %struct.dm_transaction_manager*** %11, align 8
  %84 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %83, align 8
  %85 = call i32 @dm_tm_destroy(%struct.dm_transaction_manager* %84)
  %86 = load %struct.dm_space_map**, %struct.dm_space_map*** %12, align 8
  %87 = load %struct.dm_space_map*, %struct.dm_space_map** %86, align 8
  %88 = bitcast %struct.dm_space_map* %87 to %struct.dm_transaction_manager*
  %89 = call i32 @dm_sm_destroy(%struct.dm_transaction_manager* %88)
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %82, %81, %41, %25
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.dm_transaction_manager* @dm_sm_metadata_init(...) #1

declare dso_local i64 @IS_ERR(%struct.dm_transaction_manager*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_transaction_manager*) #1

declare dso_local %struct.dm_transaction_manager* @dm_tm_create(%struct.dm_block_manager*, %struct.dm_transaction_manager*) #1

declare dso_local i32 @dm_sm_destroy(%struct.dm_transaction_manager*) #1

declare dso_local i32 @dm_sm_metadata_create(%struct.dm_transaction_manager*, %struct.dm_transaction_manager*, i32, i32) #1

declare dso_local i32 @dm_bm_nr_blocks(%struct.dm_block_manager*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_sm_metadata_open(%struct.dm_transaction_manager*, %struct.dm_transaction_manager*, i8*, i64) #1

declare dso_local i32 @dm_tm_destroy(%struct.dm_transaction_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
