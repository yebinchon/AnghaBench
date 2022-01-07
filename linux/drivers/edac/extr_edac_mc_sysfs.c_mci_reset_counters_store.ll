; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_mci_reset_counters_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_mci_reset_counters_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, %struct.csrow_info**, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.csrow_info = type { i32, %struct.TYPE_3__**, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mci_reset_counters_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mci_reset_counters_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem_ctl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.csrow_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.mem_ctl_info* @to_mci(%struct.device* %15)
  store %struct.mem_ctl_info* %16, %struct.mem_ctl_info** %9, align 8
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %18 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %62, %4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %28 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %33 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %32, i32 0, i32 6
  %34 = load %struct.csrow_info**, %struct.csrow_info*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %34, i64 %36
  %38 = load %struct.csrow_info*, %struct.csrow_info** %37, align 8
  store %struct.csrow_info* %38, %struct.csrow_info** %14, align 8
  %39 = load %struct.csrow_info*, %struct.csrow_info** %14, align 8
  %40 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.csrow_info*, %struct.csrow_info** %14, align 8
  %42 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %58, %31
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.csrow_info*, %struct.csrow_info** %14, align 8
  %46 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.csrow_info*, %struct.csrow_info** %14, align 8
  %51 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %25

65:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %107, %65
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %69 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  %73 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %74 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %84 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memset(i32 %89, i32 0, i32 %93)
  %95 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %96 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memset(i32 %101, i32 0, i32 %105)
  br label %107

107:                                              ; preds = %72
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %66

110:                                              ; preds = %66
  %111 = load i32, i32* @jiffies, align 4
  %112 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %113 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %8, align 8
  ret i64 %114
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
