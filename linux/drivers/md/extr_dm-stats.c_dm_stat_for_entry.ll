; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stat_for_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stat_for_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stat = type { i32, i32, i64*, %struct.dm_stat_percpu**, %struct.dm_stat_shared* }
%struct.dm_stat_percpu = type { i32*, i64*, i32*, i32*, i32* }
%struct.dm_stat_shared = type { i32* }
%struct.dm_stats_aux = type { i64, i64 }

@STAT_PRECISE_TIMESTAMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_stat*, i64, i32, i64, %struct.dm_stats_aux*, i32, i64)* @dm_stat_for_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_stat_for_entry(%struct.dm_stat* %0, i64 %1, i32 %2, i64 %3, %struct.dm_stats_aux* %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.dm_stat*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dm_stats_aux*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.dm_stat_shared*, align 8
  %16 = alloca %struct.dm_stat_percpu*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dm_stat* %0, %struct.dm_stat** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store %struct.dm_stats_aux* %4, %struct.dm_stats_aux** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %21 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %22 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %21, i32 0, i32 4
  %23 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %23, i64 %24
  store %struct.dm_stat_shared* %25, %struct.dm_stat_shared** %15, align 8
  %26 = call i32 (...) @preempt_disable()
  %27 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %28 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %27, i32 0, i32 3
  %29 = load %struct.dm_stat_percpu**, %struct.dm_stat_percpu*** %28, align 8
  %30 = call i64 (...) @smp_processor_id()
  %31 = getelementptr inbounds %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %29, i64 %30
  %32 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %32, i64 %33
  store %struct.dm_stat_percpu* %34, %struct.dm_stat_percpu** %16, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %7
  %38 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %39 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %15, align 8
  %40 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %41 = call i32 @dm_stat_round(%struct.dm_stat* %38, %struct.dm_stat_shared* %39, %struct.dm_stat_percpu* %40)
  %42 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %15, align 8
  %43 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @atomic_inc(i32* %47)
  br label %171

49:                                               ; preds = %7
  %50 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %51 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %15, align 8
  %52 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %53 = call i32 @dm_stat_round(%struct.dm_stat* %50, %struct.dm_stat_shared* %51, %struct.dm_stat_percpu* %52)
  %54 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %15, align 8
  %55 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @atomic_dec(i32* %59)
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %63 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %61
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %73 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.dm_stats_aux*, %struct.dm_stats_aux** %12, align 8
  %81 = getelementptr inbounds %struct.dm_stats_aux, %struct.dm_stats_aux* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %84 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %82
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %94 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @STAT_PRECISE_TIMESTAMPS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %49
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %102 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %100
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i64 @jiffies_to_msecs(i64 %109)
  store i64 %110, i64* %17, align 8
  br label %126

111:                                              ; preds = %49
  %112 = load %struct.dm_stats_aux*, %struct.dm_stats_aux** %12, align 8
  %113 = getelementptr inbounds %struct.dm_stats_aux, %struct.dm_stats_aux* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %116 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %114
  store i64 %122, i64* %120, align 8
  %123 = load %struct.dm_stats_aux*, %struct.dm_stats_aux** %12, align 8
  %124 = getelementptr inbounds %struct.dm_stats_aux, %struct.dm_stats_aux* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %17, align 8
  br label %126

126:                                              ; preds = %111, %99
  %127 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %128 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %170

131:                                              ; preds = %126
  store i32 0, i32* %18, align 4
  %132 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %133 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %160, %131
  %137 = load i32, i32* %18, align 4
  %138 = add i32 %137, 1
  %139 = load i32, i32* %19, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %136
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add i32 %142, %143
  %145 = udiv i32 %144, 2
  store i32 %145, i32* %20, align 4
  %146 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %147 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %20, align 4
  %150 = sub i32 %149, 1
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %17, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %141
  %157 = load i32, i32* %20, align 4
  store i32 %157, i32* %19, align 4
  br label %160

158:                                              ; preds = %141
  %159 = load i32, i32* %20, align 4
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %158, %156
  br label %136

161:                                              ; preds = %136
  %162 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %16, align 8
  %163 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %161, %126
  br label %171

171:                                              ; preds = %170, %37
  %172 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @dm_stat_round(%struct.dm_stat*, %struct.dm_stat_shared*, %struct.dm_stat_percpu*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
