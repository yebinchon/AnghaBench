; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dvfs_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dvfs_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.scpi_dvfs_info** }
%struct.scpi_dvfs_info = type { i32, i32, %struct.scpi_opp* }
%struct.scpi_opp = type { i8*, i8* }
%struct.dvfs_info = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_DVFS_DOMAINS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@scpi_info = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_GET_DVFS_INFO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opp_cmp_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scpi_dvfs_info* (i64)* @scpi_dvfs_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scpi_dvfs_info* @scpi_dvfs_get_info(i64 %0) #0 {
  %2 = alloca %struct.scpi_dvfs_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.scpi_dvfs_info*, align 8
  %5 = alloca %struct.scpi_opp*, align 8
  %6 = alloca %struct.dvfs_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @MAX_DVFS_DOMAINS, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.scpi_dvfs_info* @ERR_PTR(i32 %14)
  store %struct.scpi_dvfs_info* %15, %struct.scpi_dvfs_info** %2, align 8
  br label %128

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scpi_info, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.scpi_dvfs_info**, %struct.scpi_dvfs_info*** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %19, i64 %20
  %22 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %21, align 8
  %23 = icmp ne %struct.scpi_dvfs_info* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scpi_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.scpi_dvfs_info**, %struct.scpi_dvfs_info*** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %27, i64 %28
  %30 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %29, align 8
  store %struct.scpi_dvfs_info* %30, %struct.scpi_dvfs_info** %2, align 8
  br label %128

31:                                               ; preds = %16
  %32 = load i32, i32* @CMD_GET_DVFS_INFO, align 4
  %33 = call i32 @scpi_send_message(i32 %32, i64* %3, i32 8, %struct.dvfs_info* %6, i32 24)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.scpi_dvfs_info* @ERR_PTR(i32 %37)
  store %struct.scpi_dvfs_info* %38, %struct.scpi_dvfs_info** %2, align 8
  br label %128

39:                                               ; preds = %31
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.scpi_dvfs_info* @kmalloc(i32 16, i32 %40)
  store %struct.scpi_dvfs_info* %41, %struct.scpi_dvfs_info** %4, align 8
  %42 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %43 = icmp ne %struct.scpi_dvfs_info* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.scpi_dvfs_info* @ERR_PTR(i32 %46)
  store %struct.scpi_dvfs_info* %47, %struct.scpi_dvfs_info** %2, align 8
  br label %128

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.dvfs_info, %struct.dvfs_info* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %52 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.dvfs_info, %struct.dvfs_info* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = mul nsw i32 %55, 1000
  %57 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %58 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %60 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.scpi_opp* @kcalloc(i32 %61, i32 16, i32 %62)
  %64 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %65 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %64, i32 0, i32 2
  store %struct.scpi_opp* %63, %struct.scpi_opp** %65, align 8
  %66 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %67 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %66, i32 0, i32 2
  %68 = load %struct.scpi_opp*, %struct.scpi_opp** %67, align 8
  %69 = icmp ne %struct.scpi_opp* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %48
  %71 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %72 = call i32 @kfree(%struct.scpi_dvfs_info* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.scpi_dvfs_info* @ERR_PTR(i32 %74)
  store %struct.scpi_dvfs_info* %75, %struct.scpi_dvfs_info** %2, align 8
  br label %128

76:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  %77 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %78 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %77, i32 0, i32 2
  %79 = load %struct.scpi_opp*, %struct.scpi_opp** %78, align 8
  store %struct.scpi_opp* %79, %struct.scpi_opp** %5, align 8
  br label %80

80:                                               ; preds = %107, %76
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %83 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.dvfs_info, %struct.dvfs_info* %6, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le32_to_cpu(i32 %93)
  %95 = load %struct.scpi_opp*, %struct.scpi_opp** %5, align 8
  %96 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds %struct.dvfs_info, %struct.dvfs_info* %6, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le32_to_cpu(i32 %103)
  %105 = load %struct.scpi_opp*, %struct.scpi_opp** %5, align 8
  %106 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %86
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load %struct.scpi_opp*, %struct.scpi_opp** %5, align 8
  %111 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %110, i32 1
  store %struct.scpi_opp* %111, %struct.scpi_opp** %5, align 8
  br label %80

112:                                              ; preds = %80
  %113 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %114 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %113, i32 0, i32 2
  %115 = load %struct.scpi_opp*, %struct.scpi_opp** %114, align 8
  %116 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %117 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @opp_cmp_func, align 4
  %120 = call i32 @sort(%struct.scpi_opp* %115, i32 %118, i32 16, i32 %119, i32* null)
  %121 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scpi_info, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.scpi_dvfs_info**, %struct.scpi_dvfs_info*** %123, align 8
  %125 = load i64, i64* %3, align 8
  %126 = getelementptr inbounds %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %124, i64 %125
  store %struct.scpi_dvfs_info* %121, %struct.scpi_dvfs_info** %126, align 8
  %127 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %4, align 8
  store %struct.scpi_dvfs_info* %127, %struct.scpi_dvfs_info** %2, align 8
  br label %128

128:                                              ; preds = %112, %70, %44, %36, %24, %12
  %129 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %2, align 8
  ret %struct.scpi_dvfs_info* %129
}

declare dso_local %struct.scpi_dvfs_info* @ERR_PTR(i32) #1

declare dso_local i32 @scpi_send_message(i32, i64*, i32, %struct.dvfs_info*, i32) #1

declare dso_local %struct.scpi_dvfs_info* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.scpi_opp* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.scpi_dvfs_info*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @sort(%struct.scpi_opp*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
