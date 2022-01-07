; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.dc = type { i32 }
%struct.core_stats = type { i32, i32, i32, i32, %struct.core_stats*, %struct.mod_stats, i64, i64, i32*, %struct.dc* }
%struct.persistent_data_flag = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DAL_STATS_ENABLE_REGKEY_DEFAULT = common dso_local global i32 0, align 4
@DAL_STATS_ENABLE_REGKEY = common dso_local global i32 0, align 4
@DAL_STATS_ENTRIES_REGKEY_DEFAULT = common dso_local global i32 0, align 4
@DAL_STATS_ENTRIES_REGKEY = common dso_local global i32 0, align 4
@DAL_STATS_ENTRIES_REGKEY_MAX = common dso_local global i32 0, align 4
@DAL_STATS_EVENT_ENTRIES_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mod_stats* @mod_stats_create(%struct.dc* %0) #0 {
  %2 = alloca %struct.mod_stats*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.core_stats*, align 8
  %5 = alloca %struct.persistent_data_flag, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.core_stats* null, %struct.core_stats** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dc*, %struct.dc** %3, align 8
  %9 = icmp eq %struct.dc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %114

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.core_stats* @kzalloc(i32 64, i32 %12)
  store %struct.core_stats* %13, %struct.core_stats** %4, align 8
  %14 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %15 = icmp eq %struct.core_stats* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %114

17:                                               ; preds = %11
  %18 = load %struct.dc*, %struct.dc** %3, align 8
  %19 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %20 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %19, i32 0, i32 9
  store %struct.dc* %18, %struct.dc** %20, align 8
  %21 = load i32, i32* @DAL_STATS_ENABLE_REGKEY_DEFAULT, align 4
  %22 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %23 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dc*, %struct.dc** %3, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DAL_STATS_ENABLE_REGKEY, align 4
  %28 = call i64 @dm_read_persistent_data(i32 %26, i32* null, i32* null, i32 %27, i32* %6, i32 4, %struct.persistent_data_flag* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %33 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %17
  %35 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %36 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = load i32, i32* @DAL_STATS_ENTRIES_REGKEY_DEFAULT, align 4
  %41 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %42 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dc*, %struct.dc** %3, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DAL_STATS_ENTRIES_REGKEY, align 4
  %47 = call i64 @dm_read_persistent_data(i32 %45, i32* null, i32* null, i32 %46, i32* %6, i32 4, %struct.persistent_data_flag* %5)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DAL_STATS_ENTRIES_REGKEY_MAX, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @DAL_STATS_ENTRIES_REGKEY_MAX, align 4
  %55 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %56 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %60 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %64 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kcalloc(i32 %65, i32 4, i32 %66)
  %68 = bitcast i8* %67 to %struct.core_stats*
  %69 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %70 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %69, i32 0, i32 4
  store %struct.core_stats* %68, %struct.core_stats** %70, align 8
  %71 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %72 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %71, i32 0, i32 4
  %73 = load %struct.core_stats*, %struct.core_stats** %72, align 8
  %74 = icmp eq %struct.core_stats* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %111

76:                                               ; preds = %62
  %77 = load i32, i32* @DAL_STATS_EVENT_ENTRIES_DEFAULT, align 4
  %78 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %79 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %81 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kcalloc(i32 %82, i32 4, i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %87 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %86, i32 0, i32 8
  store i32* %85, i32** %87, align 8
  %88 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %89 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %106

93:                                               ; preds = %76
  br label %97

94:                                               ; preds = %34
  %95 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %96 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %93
  %98 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %99 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  %100 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %101 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  %102 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %103 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  %104 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %105 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %104, i32 0, i32 5
  store %struct.mod_stats* %105, %struct.mod_stats** %2, align 8
  br label %115

106:                                              ; preds = %92
  %107 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %108 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %107, i32 0, i32 4
  %109 = load %struct.core_stats*, %struct.core_stats** %108, align 8
  %110 = call i32 @kfree(%struct.core_stats* %109)
  br label %111

111:                                              ; preds = %106, %75
  %112 = load %struct.core_stats*, %struct.core_stats** %4, align 8
  %113 = call i32 @kfree(%struct.core_stats* %112)
  br label %114

114:                                              ; preds = %111, %16, %10
  store %struct.mod_stats* null, %struct.mod_stats** %2, align 8
  br label %115

115:                                              ; preds = %114, %97
  %116 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  ret %struct.mod_stats* %116
}

declare dso_local %struct.core_stats* @kzalloc(i32, i32) #1

declare dso_local i64 @dm_read_persistent_data(i32, i32*, i32*, i32, i32*, i32, %struct.persistent_data_flag*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.core_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
