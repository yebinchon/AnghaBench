; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_check_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_check_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.synps_edac_priv* }
%struct.synps_edac_priv = type { i32, i32, %struct.TYPE_2__, %struct.synps_platform_data* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.synps_platform_data = type { i32 (%struct.synps_edac_priv.0*)* }
%struct.synps_edac_priv.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"Total error count CE %d UE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @check_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_errors(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.synps_platform_data*, align 8
  %4 = alloca %struct.synps_edac_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %7, align 8
  store %struct.synps_edac_priv* %8, %struct.synps_edac_priv** %4, align 8
  %9 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %10 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %9, i32 0, i32 3
  %11 = load %struct.synps_platform_data*, %struct.synps_platform_data** %10, align 8
  store %struct.synps_platform_data* %11, %struct.synps_platform_data** %3, align 8
  %12 = load %struct.synps_platform_data*, %struct.synps_platform_data** %3, align 8
  %13 = getelementptr inbounds %struct.synps_platform_data, %struct.synps_platform_data* %12, i32 0, i32 0
  %14 = load i32 (%struct.synps_edac_priv.0*)*, i32 (%struct.synps_edac_priv.0*)** %13, align 8
  %15 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %16 = bitcast %struct.synps_edac_priv* %15 to %struct.synps_edac_priv.0*
  %17 = call i32 %14(%struct.synps_edac_priv.0* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %23 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %37 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %43 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %44 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %43, i32 0, i32 2
  %45 = call i32 @handle_error(%struct.mem_ctl_info* %42, %struct.TYPE_2__* %44)
  %46 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %47 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %4, align 8
  %50 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @handle_error(%struct.mem_ctl_info*, %struct.TYPE_2__*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
