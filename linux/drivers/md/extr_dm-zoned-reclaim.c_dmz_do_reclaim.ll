; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_do_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_do_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { i32, %struct.dmz_metadata* }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i64, %struct.dm_zone* }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Metadata flush for zone %u failed, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Reclaimed zone %u in %u ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*)* @dmz_do_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_do_reclaim(%struct.dmz_reclaim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmz_reclaim*, align 8
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_zone*, align 8
  %10 = alloca i64, align 8
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %3, align 8
  %11 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %12 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %11, i32 0, i32 1
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %12, align 8
  store %struct.dmz_metadata* %13, %struct.dmz_metadata** %4, align 8
  %14 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %15 = call %struct.dm_zone* @dmz_get_zone_for_reclaim(%struct.dmz_metadata* %14)
  store %struct.dm_zone* %15, %struct.dm_zone** %5, align 8
  %16 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %17 = call i64 @IS_ERR(%struct.dm_zone* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %21 = call i32 @PTR_ERR(%struct.dm_zone* %20)
  store i32 %21, i32* %2, align 4
  br label %108

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %25 = call i64 @dmz_is_rnd(%struct.dm_zone* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %29 = call i32 @dmz_weight(%struct.dm_zone* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %33 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %34 = call i32 @dmz_reclaim_empty(%struct.dmz_reclaim* %32, %struct.dm_zone* %33)
  store i32 0, i32* %8, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %37 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %38 = call i32 @dmz_reclaim_rnd_data(%struct.dmz_reclaim* %36, %struct.dm_zone* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  store %struct.dm_zone* %40, %struct.dm_zone** %6, align 8
  br label %71

41:                                               ; preds = %22
  %42 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %43 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %42, i32 0, i32 1
  %44 = load %struct.dm_zone*, %struct.dm_zone** %43, align 8
  store %struct.dm_zone* %44, %struct.dm_zone** %9, align 8
  store i64 0, i64* %10, align 8
  %45 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %46 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %47 = call i32 @dmz_first_valid_block(%struct.dmz_metadata* %45, %struct.dm_zone* %46, i64* %10)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %72

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %57 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54, %51
  %61 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %62 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %63 = call i32 @dmz_reclaim_buf(%struct.dmz_reclaim* %61, %struct.dm_zone* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  store %struct.dm_zone* %64, %struct.dm_zone** %6, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %67 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %68 = call i32 @dmz_reclaim_seq_data(%struct.dmz_reclaim* %66, %struct.dm_zone* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  store %struct.dm_zone* %69, %struct.dm_zone** %6, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %77 = call i32 @dmz_unlock_zone_reclaim(%struct.dm_zone* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %108

79:                                               ; preds = %72
  %80 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %81 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %80, i32 0, i32 1
  %82 = load %struct.dmz_metadata*, %struct.dmz_metadata** %81, align 8
  %83 = call i32 @dmz_flush_metadata(%struct.dmz_metadata* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %88 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %91 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %92 = call i32 @dmz_id(%struct.dmz_metadata* %90, %struct.dm_zone* %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dmz_dev_debug(i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %108

96:                                               ; preds = %79
  %97 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %98 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %101 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %102 = call i32 @dmz_id(%struct.dmz_metadata* %100, %struct.dm_zone* %101)
  %103 = load i64, i64* @jiffies, align 8
  %104 = load i64, i64* %7, align 8
  %105 = sub i64 %103, %104
  %106 = call i32 @jiffies_to_msecs(i64 %105)
  %107 = call i32 @dmz_dev_debug(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %96, %86, %75, %19
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.dm_zone* @dmz_get_zone_for_reclaim(%struct.dmz_metadata*) #1

declare dso_local i64 @IS_ERR(%struct.dm_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_zone*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @dmz_weight(%struct.dm_zone*) #1

declare dso_local i32 @dmz_reclaim_empty(%struct.dmz_reclaim*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_reclaim_rnd_data(%struct.dmz_reclaim*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_first_valid_block(%struct.dmz_metadata*, %struct.dm_zone*, i64*) #1

declare dso_local i32 @dmz_reclaim_buf(%struct.dmz_reclaim*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_reclaim_seq_data(%struct.dmz_reclaim*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_zone_reclaim(%struct.dm_zone*) #1

declare dso_local i32 @dmz_flush_metadata(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_dev_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
