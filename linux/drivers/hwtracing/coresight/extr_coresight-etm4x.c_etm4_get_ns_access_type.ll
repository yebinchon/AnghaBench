; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_get_ns_access_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_get_ns_access_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_config = type { i32 }

@ETM_EXLEVEL_NS_HYP = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_KERN = common dso_local global i32 0, align 4
@ETM_EXLEVEL_NS_OS = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_USER = common dso_local global i32 0, align 4
@ETM_EXLEVEL_NS_APP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etmv4_config*)* @etm4_get_ns_access_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_get_ns_access_type(%struct.etmv4_config* %0) #0 {
  %2 = alloca %struct.etmv4_config*, align 8
  %3 = alloca i32, align 4
  store %struct.etmv4_config* %0, %struct.etmv4_config** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @is_kernel_in_hyp_mode()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ETM_EXLEVEL_NS_HYP, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.etmv4_config*, %struct.etmv4_config** %2, align 8
  %9 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load i32, i32* @ETM_EXLEVEL_NS_OS, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %6
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.etmv4_config*, %struct.etmv4_config** %2, align 8
  %21 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ETM_EXLEVEL_NS_HYP, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.etmv4_config*, %struct.etmv4_config** %2, align 8
  %31 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @ETM_EXLEVEL_NS_APP, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @is_kernel_in_hyp_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
