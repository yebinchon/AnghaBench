; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_mutate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_mutate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry.0*)*, i32, i32, i32, i32, i32 }
%struct.disk_index_entry = type opaque
%struct.disk_index_entry.0 = type opaque
%struct.dm_block = type { i32 }
%struct.disk_index_entry.1 = type { i8*, i32, i32 }

@dm_sm_bitmap_validator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dm_tm_shadow_block() failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ref count insert failed\00", align 1
@SM_ALLOC = common dso_local global i32 0, align 4
@SM_FREE = common dso_local global i32 0, align 4
@SM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*, i32, i32 (i8*, i32, i32*)*, i8*, i32*)* @sm_ll_mutate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_ll_mutate(%struct.ll_disk* %0, i32 %1, i32 (i8*, i32, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ll_disk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, i32, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dm_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.disk_index_entry.1, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, i32, i32*)* %2, i32 (i8*, i32, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %25 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @do_div(i32 %23, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %29 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %28, i32 0, i32 0
  %30 = load i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)** %29, align 8
  %31 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %32 = load i32, i32* %17, align 4
  %33 = bitcast %struct.disk_index_entry.1* %18 to %struct.disk_index_entry*
  %34 = call i32 %30(%struct.ll_disk* %31, i32 %32, %struct.disk_index_entry* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %208

39:                                               ; preds = %5
  %40 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %41 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = call i32 @dm_tm_shadow_block(i32 %42, i32 %45, i32* @dm_sm_bitmap_validator, %struct.dm_block** %16, i32* %20)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = call i32 @DMERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %208

52:                                               ; preds = %39
  %53 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %54 = call i32 @dm_block_location(%struct.dm_block* %53)
  %55 = call i32 @cpu_to_le64(i32 %54)
  %56 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %58 = call i8* @dm_bitmap_data(%struct.dm_block* %57)
  store i8* %58, i8** %19, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @sm_lookup_bitmap(i8* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @sm_ll_lookup_big_ref_count(%struct.ll_disk* %65, i32 %66, i32* %14)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %72 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %75 = call i32 @dm_tm_unlock(i32 %73, %struct.dm_block* %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %208

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 %79(i8* %80, i32 %81, i32* %15)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %87 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %90 = call i32 @dm_tm_unlock(i32 %88, %struct.dm_block* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %208

92:                                               ; preds = %78
  %93 = load i32, i32* %15, align 4
  %94 = icmp sle i32 %93, 2
  br i1 %94, label %95, label %122

95:                                               ; preds = %92
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @sm_set_bitmap(i8* %96, i32 %97, i32 %98)
  %100 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %101 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %104 = call i32 @dm_tm_unlock(i32 %102, %struct.dm_block* %103)
  %105 = load i32, i32* %14, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %121

107:                                              ; preds = %95
  %108 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %109 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %108, i32 0, i32 4
  %110 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %111 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %114 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %113, i32 0, i32 3
  %115 = call i32 @dm_btree_remove(i32* %109, i32 %112, i32* %8, i32* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %208

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %95
  br label %148

122:                                              ; preds = %92
  %123 = load i32, i32* %15, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  store i8* %124, i8** %21, align 8
  %125 = load i8*, i8** %19, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @sm_set_bitmap(i8* %125, i32 %126, i32 3)
  %128 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %129 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %132 = call i32 @dm_tm_unlock(i32 %130, %struct.dm_block* %131)
  %133 = call i32 @__dm_bless_for_disk(i8** %21)
  %134 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %135 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %134, i32 0, i32 4
  %136 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %137 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %140 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %139, i32 0, i32 3
  %141 = call i32 @dm_btree_insert(i32* %135, i32 %138, i32* %8, i8** %21, i32* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %122
  %145 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %6, align 4
  br label %208

147:                                              ; preds = %122
  br label %148

148:                                              ; preds = %147, %121
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %148
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %174, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @SM_ALLOC, align 4
  %156 = load i32*, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  %157 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %158 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 1
  %162 = call i32 @le32_add_cpu(i32* %161, i32 -1)
  %163 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @le32_to_cpu(i8* %164)
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %154
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i8* @cpu_to_le32(i32 %170)
  %172 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  store i8* %171, i8** %172, align 8
  br label %173

173:                                              ; preds = %168, %154
  br label %200

174:                                              ; preds = %151, %148
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %174
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @SM_FREE, align 4
  %182 = load i32*, i32** %11, align 8
  store i32 %181, i32* %182, align 4
  %183 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %184 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %184, align 8
  %187 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 1
  %188 = call i32 @le32_add_cpu(i32* %187, i32 1)
  %189 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @le32_to_cpu(i8* %190)
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @min(i32 %191, i32 %192)
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = getelementptr inbounds %struct.disk_index_entry.1, %struct.disk_index_entry.1* %18, i32 0, i32 0
  store i8* %194, i8** %195, align 8
  br label %199

196:                                              ; preds = %177, %174
  %197 = load i32, i32* @SM_NONE, align 4
  %198 = load i32*, i32** %11, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %180
  br label %200

200:                                              ; preds = %199, %173
  %201 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %202 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %201, i32 0, i32 1
  %203 = load i32 (%struct.ll_disk*, i32, %struct.disk_index_entry.0*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry.0*)** %202, align 8
  %204 = load %struct.ll_disk*, %struct.ll_disk** %7, align 8
  %205 = load i32, i32* %17, align 4
  %206 = bitcast %struct.disk_index_entry.1* %18 to %struct.disk_index_entry.0*
  %207 = call i32 %203(%struct.ll_disk* %204, i32 %205, %struct.disk_index_entry.0* %206)
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %200, %144, %118, %85, %70, %49, %37
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, %struct.dm_block**, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i8* @dm_bitmap_data(%struct.dm_block*) #1

declare dso_local i32 @sm_lookup_bitmap(i8*, i32) #1

declare dso_local i32 @sm_ll_lookup_big_ref_count(%struct.ll_disk*, i32, i32*) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

declare dso_local i32 @sm_set_bitmap(i8*, i32, i32) #1

declare dso_local i32 @dm_btree_remove(i32*, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @__dm_bless_for_disk(i8**) #1

declare dso_local i32 @dm_btree_insert(i32*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
