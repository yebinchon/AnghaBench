; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_load_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_load_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32, i32, i64, i64, i64, i32, i64, i32, %struct.md_rdev* }
%struct.md_rdev = type { i64, i64 }
%struct.page = type { i32 }
%struct.r5l_meta_block = type { i64, i32, i32, i64, i64 }

@BLOCK_SECTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R5LOG_MAGIC = common dso_local global i64 0, align 8
@R5LOG_VERSION = common dso_local global i64 0, align 8
@RECLAIM_MAX_FREE_SPACE_SHIFT = common dso_local global i32 0, align 4
@RECLAIM_MAX_FREE_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*)* @r5l_load_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_load_log(%struct.r5l_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.r5l_meta_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  %12 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %13 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %12, i32 0, i32 8
  %14 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  store %struct.md_rdev* %14, %struct.md_rdev** %4, align 8
  %15 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %16 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %15, i32 0, i32 8
  %17 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @BLOCK_SECTORS, align 4
  %28 = call i64 @round_down(i64 %26, i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %1
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.page* @alloc_page(i32 %33)
  store %struct.page* %34, %struct.page** %5, align 8
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %176

40:                                               ; preds = %32
  %41 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = load i32, i32* @REQ_OP_READ, align 4
  %46 = call i32 @sync_page_io(%struct.md_rdev* %41, i64 %42, i32 %43, %struct.page* %44, i32 %45, i32 0, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %172

51:                                               ; preds = %40
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = call %struct.r5l_meta_block* @page_address(%struct.page* %52)
  store %struct.r5l_meta_block* %53, %struct.r5l_meta_block** %6, align 8
  %54 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %55 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @le32_to_cpu(i64 %56)
  %58 = load i64, i64* @R5LOG_MAGIC, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %51
  %61 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %62 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @R5LOG_VERSION, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %51
  store i32 1, i32* %10, align 4
  br label %93

67:                                               ; preds = %60
  %68 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %69 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @le32_to_cpu(i64 %70)
  store i64 %71, i64* %8, align 8
  %72 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %73 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %75 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i64 @crc32c_le(i32 %76, %struct.r5l_meta_block* %77, i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %93

84:                                               ; preds = %67
  %85 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %86 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le64_to_cpu(i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %91, %83, %66
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = call i64 (...) @prandom_u32()
  %98 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %99 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  store i64 0, i64* %7, align 8
  %100 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %103 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @r5l_log_write_empty_meta_block(%struct.r5l_log* %100, i64 %101, i64 %104)
  %106 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @r5l_write_super(%struct.r5l_log* %106, i64 %107)
  br label %116

109:                                              ; preds = %93
  %110 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %6, align 8
  %111 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @le64_to_cpu(i32 %112)
  %114 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %115 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %109, %96
  %117 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %118 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @BLOCK_SECTORS, align 4
  %121 = call i64 @round_down(i64 %119, i32 %120)
  %122 = trunc i64 %121 to i32
  %123 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %124 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %126 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @RECLAIM_MAX_FREE_SPACE_SHIFT, align 4
  %129 = ashr i32 %127, %128
  %130 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %131 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %133 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RECLAIM_MAX_FREE_SPACE, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %116
  %138 = load i32, i32* @RECLAIM_MAX_FREE_SPACE, align 4
  %139 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %140 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %116
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %144 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %143, i32 0, i32 6
  store i64 %142, i64* %144, align 8
  %145 = load %struct.page*, %struct.page** %5, align 8
  %146 = call i32 @__free_page(%struct.page* %145)
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %141
  %150 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* @BLOCK_SECTORS, align 4
  %153 = call i32 @r5l_ring_add(%struct.r5l_log* %150, i64 %151, i32 %152)
  %154 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %155 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  %156 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %157 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  %160 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %161 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %164 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %168

165:                                              ; preds = %141
  %166 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %167 = call i32 @r5l_recovery_log(%struct.r5l_log* %166)
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %165, %149
  %169 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %170 = call i32 @r5c_update_log_state(%struct.r5l_log* %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %2, align 4
  br label %176

172:                                              ; preds = %48
  %173 = load %struct.page*, %struct.page** %5, align 8
  %174 = call i32 @__free_page(%struct.page* %173)
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %172, %168, %37
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i64, i32, %struct.page*, i32, i32, i32) #1

declare dso_local %struct.r5l_meta_block* @page_address(%struct.page*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @crc32c_le(i32, %struct.r5l_meta_block*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i32 @r5l_log_write_empty_meta_block(%struct.r5l_log*, i64, i64) #1

declare dso_local i32 @r5l_write_super(%struct.r5l_log*, i64) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @r5l_ring_add(%struct.r5l_log*, i64, i32) #1

declare dso_local i32 @r5l_recovery_log(%struct.r5l_log*) #1

declare dso_local i32 @r5c_update_log_state(%struct.r5l_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
