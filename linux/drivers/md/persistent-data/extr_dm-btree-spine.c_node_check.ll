; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_node_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_node_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.btree_node = type { %struct.node_header }
%struct.node_header = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"node_check failed: blocknr %llu != wanted %llu\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@BTREE_CSUM_XOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"node_check failed: csum %u != wanted %u\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"node_check failed: max_entries too large\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"node_check failed: too many entries\00", align 1
@INTERNAL_NODE = common dso_local global i32 0, align 4
@LEAF_NODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"node_check failed: node is neither INTERNAL or LEAF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_validator*, %struct.dm_block*, i64)* @node_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_check(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block_validator*, align 8
  %6 = alloca %struct.dm_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btree_node*, align 8
  %9 = alloca %struct.node_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %5, align 8
  store %struct.dm_block* %1, %struct.dm_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %14 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %13)
  store %struct.btree_node* %14, %struct.btree_node** %8, align 8
  %15 = load %struct.btree_node*, %struct.btree_node** %8, align 8
  %16 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %15, i32 0, i32 0
  store %struct.node_header* %16, %struct.node_header** %9, align 8
  %17 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %18 = call i64 @dm_block_location(%struct.dm_block* %17)
  %19 = load %struct.node_header*, %struct.node_header** %9, align 8
  %20 = getelementptr inbounds %struct.node_header, %struct.node_header* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le64_to_cpu(i32 %21)
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.node_header*, %struct.node_header** %9, align 8
  %26 = getelementptr inbounds %struct.node_header, %struct.node_header* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @le64_to_cpu(i32 %27)
  %29 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %30 = call i64 @dm_block_location(%struct.dm_block* %29)
  %31 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %30)
  %32 = load i32, i32* @ENOTBLK, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %111

34:                                               ; preds = %3
  %35 = load %struct.node_header*, %struct.node_header** %9, align 8
  %36 = getelementptr inbounds %struct.node_header, %struct.node_header* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 8
  %39 = load i32, i32* @BTREE_CSUM_XOR, align 4
  %40 = call i32 @dm_bm_checksum(i64* %36, i64 %38, i32 %39)
  %41 = call i64 @cpu_to_le32(i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.node_header*, %struct.node_header** %9, align 8
  %44 = getelementptr inbounds %struct.node_header, %struct.node_header* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %34
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @le32_to_cpu(i64 %48)
  %50 = load %struct.node_header*, %struct.node_header** %9, align 8
  %51 = getelementptr inbounds %struct.node_header, %struct.node_header* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @le32_to_cpu(i64 %52)
  %54 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load i32, i32* @EILSEQ, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %111

57:                                               ; preds = %34
  %58 = load %struct.node_header*, %struct.node_header** %9, align 8
  %59 = getelementptr inbounds %struct.node_header, %struct.node_header* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @le32_to_cpu(i64 %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 4, %63
  %65 = load %struct.node_header*, %struct.node_header** %9, align 8
  %66 = getelementptr inbounds %struct.node_header, %struct.node_header* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @le32_to_cpu(i64 %67)
  %69 = sext i32 %68 to i64
  %70 = mul i64 %64, %69
  %71 = add i64 48, %70
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %57
  %75 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EILSEQ, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %111

78:                                               ; preds = %57
  %79 = load %struct.node_header*, %struct.node_header** %9, align 8
  %80 = getelementptr inbounds %struct.node_header, %struct.node_header* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @le32_to_cpu(i64 %81)
  %83 = load %struct.node_header*, %struct.node_header** %9, align 8
  %84 = getelementptr inbounds %struct.node_header, %struct.node_header* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @le32_to_cpu(i64 %85)
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @EILSEQ, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %111

92:                                               ; preds = %78
  %93 = load %struct.node_header*, %struct.node_header** %9, align 8
  %94 = getelementptr inbounds %struct.node_header, %struct.node_header* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @le32_to_cpu(i64 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @INTERNAL_NODE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @LEAF_NODE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @EILSEQ, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %101, %92
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %106, %88, %74, %47, %24
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @dm_block_location(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, ...) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_checksum(i64*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
