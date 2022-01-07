; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___commit_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___commit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, %struct.TYPE_2__, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cache_disk_superblock = type { i8*, i8*, i8*, i8*, i8*, i8**, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dm_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32)* @__commit_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__commit_transaction(%struct.dm_cache_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_disk_superblock*, align 8
  %8 = alloca %struct.dm_block*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @BUILD_BUG_ON(i32 0)
  %10 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %11 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %15 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %14, i32 0, i32 14
  %16 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %17 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %20 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %19, i32 0, i32 10
  %21 = call i32 @dm_bitset_flush(i32* %15, i32 %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %207

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %29 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %28, i32 0, i32 13
  %30 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %31 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %34 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %33, i32 0, i32 8
  %35 = call i32 @dm_bitset_flush(i32* %29, i32 %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %207

40:                                               ; preds = %27
  %41 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %42 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dm_tm_pre_commit(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %207

49:                                               ; preds = %40
  %50 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %51 = call i32 @__save_sm_root(%struct.dm_cache_metadata* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %207

56:                                               ; preds = %49
  %57 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %58 = call i32 @superblock_lock(%struct.dm_cache_metadata* %57, %struct.dm_block** %8)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %207

63:                                               ; preds = %56
  %64 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %65 = call %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block* %64)
  store %struct.cache_disk_superblock* %65, %struct.cache_disk_superblock** %7, align 8
  %66 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %67 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %71 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %70, i32 0, i32 14
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @update_flags(%struct.cache_disk_superblock* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %63
  %79 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %80 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_le64(i32 %81)
  %83 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %84 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %83, i32 0, i32 13
  store i8* %82, i8** %84, align 8
  %85 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %86 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %90 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @cpu_to_le64(i32 %91)
  %93 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %94 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %93, i32 0, i32 12
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %88, %78
  %96 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %97 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_le64(i32 %98)
  %100 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %101 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %100, i32 0, i32 11
  store i8* %99, i8** %101, align 8
  %102 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %103 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @cpu_to_le64(i32 %104)
  %106 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %107 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  %108 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %109 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_le64(i32 %110)
  %112 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %113 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %112, i32 0, i32 9
  store i8* %111, i8** %113, align 8
  %114 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %115 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @from_dblock(i32 %116)
  %118 = call i8* @cpu_to_le64(i32 %117)
  %119 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %120 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %119, i32 0, i32 8
  store i8* %118, i8** %120, align 8
  %121 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %122 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @from_cblock(i32 %123)
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %127 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %126, i32 0, i32 7
  store i8* %125, i8** %127, align 8
  %128 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %129 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %132 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @strncpy(i32 %130, i32 %133, i32 4)
  %135 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %136 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %142 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %141, i32 0, i32 5
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  store i8* %140, i8** %144, align 8
  %145 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %146 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %152 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %151, i32 0, i32 5
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 1
  store i8* %150, i8** %154, align 8
  %155 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %156 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %162 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %161, i32 0, i32 5
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 2
  store i8* %160, i8** %164, align 8
  %165 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %166 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %170 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %172 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_le32(i32 %174)
  %176 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %177 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %179 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %184 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  %185 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %186 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @cpu_to_le32(i32 %188)
  %190 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %191 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  %192 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %193 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @cpu_to_le32(i32 %195)
  %197 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %198 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %200 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %201 = call i32 @__copy_sm_root(%struct.dm_cache_metadata* %199, %struct.cache_disk_superblock* %200)
  %202 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %203 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %206 = call i32 @dm_tm_commit(i32 %204, %struct.dm_block* %205)
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %95, %61, %54, %47, %38, %24
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_bitset_flush(i32*, i32, i32*) #1

declare dso_local i32 @dm_tm_pre_commit(i32) #1

declare dso_local i32 @__save_sm_root(%struct.dm_cache_metadata*) #1

declare dso_local i32 @superblock_lock(%struct.dm_cache_metadata*, %struct.dm_block**) #1

declare dso_local %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @update_flags(%struct.cache_disk_superblock*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @__copy_sm_root(%struct.dm_cache_metadata*, %struct.cache_disk_superblock*) #1

declare dso_local i32 @dm_tm_commit(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
