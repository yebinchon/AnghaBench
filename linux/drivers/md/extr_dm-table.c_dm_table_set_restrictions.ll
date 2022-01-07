; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_set_restrictions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_set_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.request_queue = type { %struct.TYPE_4__*, %struct.queue_limits }
%struct.TYPE_4__ = type { i32, i32 }
%struct.queue_limits = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@QUEUE_FLAG_SECERASE = common dso_local global i32 0, align 4
@QUEUE_FLAG_WC = common dso_local global i64 0, align 8
@QUEUE_FLAG_FUA = common dso_local global i64 0, align 8
@device_supports_dax = common dso_local global i32 0, align 4
@QUEUE_FLAG_DAX = common dso_local global i32 0, align 4
@device_dax_synchronous = common dso_local global i32 0, align 4
@device_is_nonrot = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4
@device_is_not_random = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_table_set_restrictions(%struct.dm_table* %0, %struct.request_queue* %1, %struct.queue_limits* %2) #0 {
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.queue_limits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.request_queue* %1, %struct.request_queue** %5, align 8
  store %struct.queue_limits* %2, %struct.queue_limits** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 1
  %13 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %14 = bitcast %struct.queue_limits* %12 to i8*
  %15 = bitcast %struct.queue_limits* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 64, i1 false)
  %16 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %17 = call i32 @dm_table_supports_discards(%struct.dm_table* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %21 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %22 = call i32 @blk_queue_flag_clear(i32 %20, %struct.request_queue* %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  br label %42

38:                                               ; preds = %3
  %39 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %40 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %41 = call i32 @blk_queue_flag_set(i32 %39, %struct.request_queue* %40)
  br label %42

42:                                               ; preds = %38, %19
  %43 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %44 = call i64 @dm_table_supports_secure_erase(%struct.dm_table* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @QUEUE_FLAG_SECERASE, align 4
  %48 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %49 = call i32 @blk_queue_flag_set(i32 %47, %struct.request_queue* %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %52 = load i64, i64* @QUEUE_FLAG_WC, align 8
  %53 = shl i64 1, %52
  %54 = call i64 @dm_table_supports_flush(%struct.dm_table* %51, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  store i32 1, i32* %7, align 4
  %57 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %58 = load i64, i64* @QUEUE_FLAG_FUA, align 8
  %59 = shl i64 1, %58
  %60 = call i64 @dm_table_supports_flush(%struct.dm_table* %57, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %56
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @blk_queue_write_cache(%struct.request_queue* %65, i32 %66, i32 %67)
  %69 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %70 = load i32, i32* @device_supports_dax, align 4
  %71 = call i64 @dm_table_supports_dax(%struct.dm_table* %69, i32 %70, i32* %9)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %64
  %74 = load i32, i32* @QUEUE_FLAG_DAX, align 4
  %75 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %76 = call i32 @blk_queue_flag_set(i32 %74, %struct.request_queue* %75)
  %77 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %78 = load i32, i32* @device_dax_synchronous, align 4
  %79 = call i64 @dm_table_supports_dax(%struct.dm_table* %77, i32 %78, i32* null)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %83 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_dax_synchronous(i32 %86)
  br label %88

88:                                               ; preds = %81, %73
  br label %93

89:                                               ; preds = %64
  %90 = load i32, i32* @QUEUE_FLAG_DAX, align 4
  %91 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %92 = call i32 @blk_queue_flag_clear(i32 %90, %struct.request_queue* %91)
  br label %93

93:                                               ; preds = %89, %88
  %94 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %95 = call i64 @dm_table_supports_dax_write_cache(%struct.dm_table* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %99 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dax_write_cache(i32 %102, i32 1)
  br label %104

104:                                              ; preds = %97, %93
  %105 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %106 = load i32, i32* @device_is_nonrot, align 4
  %107 = call i64 @dm_table_all_devices_attribute(%struct.dm_table* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %111 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %112 = call i32 @blk_queue_flag_set(i32 %110, %struct.request_queue* %111)
  br label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %115 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %116 = call i32 @blk_queue_flag_clear(i32 %114, %struct.request_queue* %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %119 = call i32 @dm_table_supports_write_same(%struct.dm_table* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %123 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %127 = call i32 @dm_table_supports_write_zeroes(%struct.dm_table* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %131 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %135 = call i32 @dm_table_verify_integrity(%struct.dm_table* %134)
  %136 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %137 = call i64 @dm_table_requires_stable_pages(%struct.dm_table* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %141 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %142 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 4
  br label %156

147:                                              ; preds = %133
  %148 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %151 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %149
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %147, %139
  %157 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %158 = call i64 @blk_queue_add_random(%struct.request_queue* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %162 = load i32, i32* @device_is_not_random, align 4
  %163 = call i64 @dm_table_all_devices_attribute(%struct.dm_table* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %167 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %168 = call i32 @blk_queue_flag_clear(i32 %166, %struct.request_queue* %167)
  br label %169

169:                                              ; preds = %165, %160, %156
  %170 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %171 = call i64 @blk_queue_is_zoned(%struct.request_queue* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %175 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %174, i32 0, i32 0
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @blk_revalidate_disk_zones(i32 %178)
  br label %180

180:                                              ; preds = %173, %169
  %181 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %182 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @PAGE_SHIFT, align 4
  %185 = sub nsw i32 %184, 9
  %186 = ashr i32 %183, %185
  %187 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %188 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dm_table_supports_discards(%struct.dm_table*) #2

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #2

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #2

declare dso_local i64 @dm_table_supports_secure_erase(%struct.dm_table*) #2

declare dso_local i64 @dm_table_supports_flush(%struct.dm_table*, i64) #2

declare dso_local i32 @blk_queue_write_cache(%struct.request_queue*, i32, i32) #2

declare dso_local i64 @dm_table_supports_dax(%struct.dm_table*, i32, i32*) #2

declare dso_local i32 @set_dax_synchronous(i32) #2

declare dso_local i64 @dm_table_supports_dax_write_cache(%struct.dm_table*) #2

declare dso_local i32 @dax_write_cache(i32, i32) #2

declare dso_local i64 @dm_table_all_devices_attribute(%struct.dm_table*, i32) #2

declare dso_local i32 @dm_table_supports_write_same(%struct.dm_table*) #2

declare dso_local i32 @dm_table_supports_write_zeroes(%struct.dm_table*) #2

declare dso_local i32 @dm_table_verify_integrity(%struct.dm_table*) #2

declare dso_local i64 @dm_table_requires_stable_pages(%struct.dm_table*) #2

declare dso_local i64 @blk_queue_add_random(%struct.request_queue*) #2

declare dso_local i64 @blk_queue_is_zoned(%struct.request_queue*) #2

declare dso_local i32 @blk_revalidate_disk_zones(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
