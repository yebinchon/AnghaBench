; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.policy_work*, %struct.cache* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.policy_work = type { i32, i32, i32 }
%struct.cache = type { i32, i32, i32 }
%struct.bio_list = type { i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_migration*, i32)* @mg_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_complete(%struct.dm_cache_migration* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.cache*, align 8
  %7 = alloca %struct.policy_work*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %10 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %9, i32 0, i32 4
  %11 = load %struct.cache*, %struct.cache** %10, align 8
  store %struct.cache* %11, %struct.cache** %6, align 8
  %12 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %13 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %12, i32 0, i32 3
  %14 = load %struct.policy_work*, %struct.policy_work** %13, align 8
  store %struct.policy_work* %14, %struct.policy_work** %7, align 8
  %15 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %16 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.cache*, %struct.cache** %6, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 2
  %23 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %24 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @update_stats(i32* %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %29 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %126 [
    i32 129, label %31
    i32 130, label %94
    i32 128, label %110
  ]

31:                                               ; preds = %27
  %32 = load %struct.cache*, %struct.cache** %6, align 8
  %33 = load %struct.cache*, %struct.cache** %6, align 8
  %34 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %35 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @oblock_to_dblock(%struct.cache* %33, i32 %36)
  %38 = call i32 @clear_discard(%struct.cache* %32, i32 %37)
  %39 = load %struct.cache*, %struct.cache** %6, align 8
  %40 = getelementptr inbounds %struct.cache, %struct.cache* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @policy_complete_background_work(i32 %41, %struct.policy_work* %42, i32 %43)
  %45 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %46 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %31
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.cache*, %struct.cache** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @force_set_dirty(%struct.cache* %53, i32 %54)
  br label %78

56:                                               ; preds = %49
  %57 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %58 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %64 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %68 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %77

71:                                               ; preds = %56
  %72 = load i32, i32* @BLK_STS_IOERR, align 4
  %73 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %74 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %62
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %80 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @bio_endio(%struct.TYPE_4__* %81)
  br label %93

83:                                               ; preds = %31
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.cache*, %struct.cache** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @force_clear_dirty(%struct.cache* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.cache*, %struct.cache** %6, align 8
  %92 = call i32 @dec_io_migrations(%struct.cache* %91)
  br label %93

93:                                               ; preds = %90, %78
  br label %126

94:                                               ; preds = %27
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.cache*, %struct.cache** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @force_clear_dirty(%struct.cache* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.cache*, %struct.cache** %6, align 8
  %103 = getelementptr inbounds %struct.cache, %struct.cache* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @policy_complete_background_work(i32 %104, %struct.policy_work* %105, i32 %106)
  %108 = load %struct.cache*, %struct.cache** %6, align 8
  %109 = call i32 @dec_io_migrations(%struct.cache* %108)
  br label %126

110:                                              ; preds = %27
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.cache*, %struct.cache** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @force_clear_dirty(%struct.cache* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.cache*, %struct.cache** %6, align 8
  %119 = getelementptr inbounds %struct.cache, %struct.cache* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.policy_work*, %struct.policy_work** %7, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @policy_complete_background_work(i32 %120, %struct.policy_work* %121, i32 %122)
  %124 = load %struct.cache*, %struct.cache** %6, align 8
  %125 = call i32 @dec_io_migrations(%struct.cache* %124)
  br label %126

126:                                              ; preds = %27, %117, %101, %93
  %127 = call i32 @bio_list_init(%struct.bio_list* %5)
  %128 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %129 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load %struct.cache*, %struct.cache** %6, align 8
  %134 = getelementptr inbounds %struct.cache, %struct.cache* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %137 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @dm_cell_unlock_v2(i32 %135, i64 %138, %struct.bio_list* %5)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = load %struct.cache*, %struct.cache** %6, align 8
  %143 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %144 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @free_prison_cell(%struct.cache* %142, i64 %145)
  br label %147

147:                                              ; preds = %141, %132
  br label %148

148:                                              ; preds = %147, %126
  %149 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %150 = call i32 @free_migration(%struct.dm_cache_migration* %149)
  %151 = load %struct.cache*, %struct.cache** %6, align 8
  %152 = call i32 @defer_bios(%struct.cache* %151, %struct.bio_list* %5)
  %153 = load %struct.cache*, %struct.cache** %6, align 8
  %154 = call i32 @wake_migration_worker(%struct.cache* %153)
  %155 = load %struct.cache*, %struct.cache** %6, align 8
  %156 = call i32 @background_work_end(%struct.cache* %155)
  ret void
}

declare dso_local i32 @update_stats(i32*, i32) #1

declare dso_local i32 @clear_discard(%struct.cache*, i32) #1

declare dso_local i32 @oblock_to_dblock(%struct.cache*, i32) #1

declare dso_local i32 @policy_complete_background_work(i32, %struct.policy_work*, i32) #1

declare dso_local i32 @force_set_dirty(%struct.cache*, i32) #1

declare dso_local i32 @bio_endio(%struct.TYPE_4__*) #1

declare dso_local i32 @force_clear_dirty(%struct.cache*, i32) #1

declare dso_local i32 @dec_io_migrations(%struct.cache*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i64 @dm_cell_unlock_v2(i32, i64, %struct.bio_list*) #1

declare dso_local i32 @free_prison_cell(%struct.cache*, i64) #1

declare dso_local i32 @free_migration(%struct.dm_cache_migration*) #1

declare dso_local i32 @defer_bios(%struct.cache*, %struct.bio_list*) #1

declare dso_local i32 @wake_migration_worker(%struct.cache*) #1

declare dso_local i32 @background_work_end(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
