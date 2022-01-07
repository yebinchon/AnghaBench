; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.dm_crypt_io = type { %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.dm_crypt_io*, i32)* @crypt_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @crypt_alloc_buffer(%struct.dm_crypt_io* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_crypt_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %14 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %13, i32 0, i32 0
  %15 = load %struct.crypt_config*, %struct.crypt_config** %14, align 8
  store %struct.crypt_config* %15, %struct.crypt_config** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = add i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @GFP_NOWAIT, align 4
  %23 = load i32, i32* @__GFP_HIGHMEM, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %60, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %28 = and i32 %26, %27
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %33 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %39 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %38, i32 0, i32 2
  %40 = call %struct.bio* @bio_alloc_bioset(i32 %36, i32 %37, i32* %39)
  store %struct.bio* %40, %struct.bio** %6, align 8
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = icmp ne %struct.bio* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %101

44:                                               ; preds = %35
  %45 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %46 = load %struct.bio*, %struct.bio** %6, align 8
  %47 = call i32 @clone_init(%struct.dm_crypt_io* %45, %struct.bio* %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %86, %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %55 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %54, i32 0, i32 1
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.page* @mempool_alloc(i32* %55, i32 %56)
  store %struct.page* %57, %struct.page** %12, align 8
  %58 = load %struct.page*, %struct.page** %12, align 8
  %59 = icmp ne %struct.page* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %53
  %61 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %62 = load %struct.bio*, %struct.bio** %6, align 8
  %63 = call i32 @crypt_free_buffer_pages(%struct.crypt_config* %61, %struct.bio* %62)
  %64 = load %struct.bio*, %struct.bio** %6, align 8
  %65 = call i32 @bio_put(%struct.bio* %64)
  %66 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %25

69:                                               ; preds = %53
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @PAGE_SIZE, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %10, align 4
  %79 = load %struct.bio*, %struct.bio** %6, align 8
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @bio_add_page(%struct.bio* %79, %struct.page* %80, i32 %81, i32 0)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %49

89:                                               ; preds = %49
  %90 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %3, align 8
  %91 = load %struct.bio*, %struct.bio** %6, align 8
  %92 = call i64 @dm_crypt_integrity_io_alloc(%struct.dm_crypt_io* %90, %struct.bio* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %96 = load %struct.bio*, %struct.bio** %6, align 8
  %97 = call i32 @crypt_free_buffer_pages(%struct.crypt_config* %95, %struct.bio* %96)
  %98 = load %struct.bio*, %struct.bio** %6, align 8
  %99 = call i32 @bio_put(%struct.bio* %98)
  store %struct.bio* null, %struct.bio** %6, align 8
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %43
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %104 = and i32 %102, %103
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %109 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.bio*, %struct.bio** %6, align 8
  ret %struct.bio* %112
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32*) #1

declare dso_local i32 @clone_init(%struct.dm_crypt_io*, %struct.bio*) #1

declare dso_local %struct.page* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @crypt_free_buffer_pages(%struct.crypt_config*, %struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i64 @dm_crypt_integrity_io_alloc(%struct.dm_crypt_io*, %struct.bio*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
