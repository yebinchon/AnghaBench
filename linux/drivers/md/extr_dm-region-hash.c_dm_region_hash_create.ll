; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_region_hash_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_region_hash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { void (i8*, %struct.bio_list*)*, void (i8*)*, void (i8*)*, i32, i32, i32, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dm_dirty_log*, i32, i8* }
%struct.bio_list = type opaque
%struct.bio_list.0 = type opaque
%struct.dm_dirty_log = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to allocate region hash memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RH_HASH_SHIFT = common dso_local global i32 0, align 4
@RH_HASH_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unable to allocate region hash bucket memory\00", align 1
@MIN_REGIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_region_hash* @dm_region_hash_create(i8* %0, void (i8*, %struct.bio_list.0*)* %1, void (i8*)* %2, void (i8*)* %3, i32 %4, i32 %5, %struct.dm_dirty_log* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dm_region_hash*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (i8*, %struct.bio_list.0*)*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca void (i8*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dm_dirty_log*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dm_region_hash*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store void (i8*, %struct.bio_list.0*)* %1, void (i8*, %struct.bio_list.0*)** %12, align 8
  store void (i8*)* %2, void (i8*)** %13, align 8
  store void (i8*)* %3, void (i8*)** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.dm_dirty_log* %6, %struct.dm_dirty_log** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = ashr i32 %25, 6
  store i32 %26, i32* %22, align 4
  store i32 128, i32* %21, align 4
  br label %27

27:                                               ; preds = %32, %9
  %28 = load i32, i32* %21, align 4
  %29 = load i32, i32* %22, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %21, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %21, align 4
  br label %27

35:                                               ; preds = %27
  %36 = load i32, i32* %21, align 4
  %37 = lshr i32 %36, 1
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.dm_region_hash* @kzalloc(i32 136, i32 %38)
  store %struct.dm_region_hash* %39, %struct.dm_region_hash** %20, align 8
  %40 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %41 = icmp ne %struct.dm_region_hash* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.dm_region_hash* @ERR_PTR(i32 %45)
  store %struct.dm_region_hash* %46, %struct.dm_region_hash** %10, align 8
  br label %167

47:                                               ; preds = %35
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %50 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %49, i32 0, i32 23
  store i8* %48, i8** %50, align 8
  %51 = load void (i8*, %struct.bio_list.0*)*, void (i8*, %struct.bio_list.0*)** %12, align 8
  %52 = bitcast void (i8*, %struct.bio_list.0*)* %51 to void (i8*, %struct.bio_list*)*
  %53 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %54 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %53, i32 0, i32 0
  store void (i8*, %struct.bio_list*)* %52, void (i8*, %struct.bio_list*)** %54, align 8
  %55 = load void (i8*)*, void (i8*)** %13, align 8
  %56 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %57 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %56, i32 0, i32 1
  store void (i8*)* %55, void (i8*)** %57, align 8
  %58 = load void (i8*)*, void (i8*)** %14, align 8
  %59 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %60 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %59, i32 0, i32 2
  store void (i8*)* %58, void (i8*)** %60, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %63 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %62, i32 0, i32 22
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %66 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %17, align 8
  %68 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %69 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %68, i32 0, i32 21
  store %struct.dm_dirty_log* %67, %struct.dm_dirty_log** %69, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %72 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %71, i32 0, i32 20
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @__ffs(i32 %73)
  %75 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %76 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %75, i32 0, i32 19
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %78 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %77, i32 0, i32 18
  %79 = call i32 @rwlock_init(i32* %78)
  %80 = load i32, i32* %21, align 4
  %81 = sub i32 %80, 1
  %82 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %83 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %86 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @RH_HASH_SHIFT, align 4
  %88 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %89 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %88, i32 0, i32 17
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @RH_HASH_MULT, align 4
  %91 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %92 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %91, i32 0, i32 16
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @array_size(i32 %93, i32 4)
  %95 = call i32* @vmalloc(i32 %94)
  %96 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %97 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %96, i32 0, i32 6
  store i32* %95, i32** %97, align 8
  %98 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %99 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %47
  %103 = call i32 @DMERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %105 = call i32 @kfree(%struct.dm_region_hash* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.dm_region_hash* @ERR_PTR(i32 %107)
  store %struct.dm_region_hash* %108, %struct.dm_region_hash** %10, align 8
  br label %167

109:                                              ; preds = %47
  store i64 0, i64* %23, align 8
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i64, i64* %23, align 8
  %112 = load i32, i32* %21, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %117 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %23, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  br label %122

122:                                              ; preds = %115
  %123 = load i64, i64* %23, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %23, align 8
  br label %110

125:                                              ; preds = %110
  %126 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %127 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %126, i32 0, i32 15
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %130 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %129, i32 0, i32 14
  %131 = call i32 @sema_init(i32* %130, i32 0)
  %132 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %133 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %132, i32 0, i32 13
  %134 = call i32 @atomic_set(i32* %133, i32 0)
  %135 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %136 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %135, i32 0, i32 12
  %137 = call i32 @INIT_LIST_HEAD(i32* %136)
  %138 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %139 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %138, i32 0, i32 11
  %140 = call i32 @INIT_LIST_HEAD(i32* %139)
  %141 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %142 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %141, i32 0, i32 10
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %145 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %144, i32 0, i32 9
  %146 = call i32 @INIT_LIST_HEAD(i32* %145)
  %147 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %148 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %147, i32 0, i32 8
  store i64 0, i64* %148, align 8
  %149 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %150 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %149, i32 0, i32 7
  %151 = load i32, i32* @MIN_REGIONS, align 4
  %152 = call i32 @mempool_init_kmalloc_pool(i32* %150, i32 %151, i32 4)
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %24, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %125
  %156 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %157 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @vfree(i32* %158)
  %160 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %161 = call i32 @kfree(%struct.dm_region_hash* %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  %164 = call %struct.dm_region_hash* @ERR_PTR(i32 %163)
  store %struct.dm_region_hash* %164, %struct.dm_region_hash** %20, align 8
  br label %165

165:                                              ; preds = %155, %125
  %166 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  store %struct.dm_region_hash* %166, %struct.dm_region_hash** %10, align 8
  br label %167

167:                                              ; preds = %165, %102, %42
  %168 = load %struct.dm_region_hash*, %struct.dm_region_hash** %10, align 8
  ret %struct.dm_region_hash* %168
}

declare dso_local %struct.dm_region_hash* @kzalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.dm_region_hash* @ERR_PTR(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @kfree(%struct.dm_region_hash*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mempool_init_kmalloc_pool(i32*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
